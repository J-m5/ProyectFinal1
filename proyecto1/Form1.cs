using Newtonsoft.Json;
using System;
using System.Data.SqlClient;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using DocumentFormat.OpenXml.Presentation;
using A = DocumentFormat.OpenXml.Drawing;
using P = DocumentFormat.OpenXml.Presentation;
using DocumentFormat.OpenXml;
using System.IO;

namespace proyecto1
{
    public partial class Form1 : Form
    {

        private const string GroqEndpoint = "https://api.groq.com/openai/v1/chat/completions";
        private const string GroqApiKey = "";
        private const string ModeloIA = "llama3-70b-8192";
        private const string CadenaConexion = "Server=Mario\\SQLEXPRESS;Database=P1;Integrated Security=True;";

        public Form1()
        {
            InitializeComponent();
        }

        private async void buttonConsultar_Click(object sender, EventArgs e)
        {
            string consulta = textBoxConsultaIA.Text.Trim();

            if (string.IsNullOrEmpty(consulta))
            {
                MessageBox.Show("Por favor, ingresa tu consulta.", "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            textBoxResultadoAI.Text = "Cargando...";

            try
            {
                string respuesta = await ConsultarIA(consulta);
                textBoxResultadoAI.Text = respuesta;

                GuardarEnBaseDeDatos(consulta, respuesta);
                ExportarResultados(consulta, respuesta);
            }
            catch (Exception ex)
            {
                textBoxResultadoAI.Text = $"Error: {ex.Message}";
            }
        }

        private async Task<string> ConsultarIA(string prompt)
        {
            using HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", GroqApiKey);

            var payload = new
            {
                model = ModeloIA,
                messages = new[] { new { role = "user", content = prompt } }
            };

            string json = JsonConvert.SerializeObject(payload);
            var contenido = new StringContent(json, Encoding.UTF8, "application/json");

            int reintentos = 3;
            int espera = 2000;

            for (int i = 0; i < reintentos; i++)
            {
                var respuesta = await client.PostAsync(GroqEndpoint, contenido);

                if (respuesta.StatusCode == System.Net.HttpStatusCode.TooManyRequests)
                {
                    await Task.Delay(espera);
                    espera *= 2;
                    continue;
                }

                respuesta.EnsureSuccessStatusCode();
                string cuerpoRespuesta = await respuesta.Content.ReadAsStringAsync();
                dynamic resultado = JsonConvert.DeserializeObject(cuerpoRespuesta);

                return resultado.choices[0].message.content.ToString().Trim();
            }

            throw new Exception("Se superó el límite de reintentos (429 - Too Many Requests).");
        }

        private void GuardarEnBaseDeDatos(string consulta, string respuesta)
        {
            try
            {
                using SqlConnection conexion = new SqlConnection(CadenaConexion);
                conexion.Open();

                string query = "INSERT INTO ConsultasGROQ (Fecha, Consulta, Respuesta) VALUES (@Fecha, @Consulta, @Respuesta)";
                using SqlCommand comando = new SqlCommand(query, conexion);
                comando.Parameters.AddWithValue("@Fecha", DateTime.Now);
                comando.Parameters.AddWithValue("@Consulta", consulta);
                comando.Parameters.AddWithValue("@Respuesta", respuesta);

                comando.ExecuteNonQuery();
                MessageBox.Show("Datos guardados exitosamente.", "Base de Datos", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error al guardar en la base de datos:\n{ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void ExportarResultados(string consulta, string respuesta)
        {
            string carpetaDestino = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), "Consultas Groq");

            if (!Directory.Exists(carpetaDestino))
                Directory.CreateDirectory(carpetaDestino);

            string timestamp = DateTime.Now.ToString("yyyyMMdd_HHmmss");
            string baseArchivo = $"Consulta_{timestamp}";

            CrearWord(Path.Combine(carpetaDestino, baseArchivo + ".docx"), consulta, respuesta);
            CrearPowerPoint(Path.Combine(carpetaDestino, baseArchivo + ".pptx"), consulta, respuesta);
        }

        private void CrearWord(string ruta, string consulta, string respuesta)
        {
            using WordprocessingDocument doc = WordprocessingDocument.Create(ruta, WordprocessingDocumentType.Document);
            var mainPart = doc.AddMainDocumentPart();
            mainPart.Document = new Document(new Body(
                CrearParrafo("Consulta:", true),
                CrearParrafo(consulta),
                CrearParrafo("Respuesta:", true),
                CrearParrafo(respuesta)
            ));
        }

        private Paragraph CrearParrafo(string texto, bool negrita = false)
        {
            var run = new Run(new DocumentFormat.OpenXml.Wordprocessing.Text(texto));
            var parrafo = new Paragraph(run);

            if (negrita)
                parrafo.ParagraphProperties = new ParagraphProperties(new Bold());

            return parrafo;
        }

        private void CrearPowerPoint(string ruta, string consulta, string respuesta)
        {
            using PresentationDocument presentacion = PresentationDocument.Create(ruta, PresentationDocumentType.Presentation);
            var part = presentacion.AddPresentationPart();
            part.Presentation = new P.Presentation();

            SlidePart slide1 = CrearDiapositiva(part, "Consulta", consulta);
            SlidePart slide2 = CrearDiapositiva(part, "Respuesta", respuesta);

            part.Presentation.SlideIdList = new SlideIdList(
                new SlideId() { Id = 256U, RelationshipId = part.GetIdOfPart(slide1) },
                new SlideId() { Id = 257U, RelationshipId = part.GetIdOfPart(slide2) }
            );

            part.Presentation.Save();
        }

        private SlidePart CrearDiapositiva(PresentationPart part, string titulo, string contenido)
        {
            SlidePart slide = part.AddNewPart<SlidePart>();
            slide.Slide = new P.Slide(new P.CommonSlideData(new P.ShapeTree(
                new P.NonVisualGroupShapeProperties(
                    new P.NonVisualDrawingProperties() { Id = 1, Name = "Title" },
                    new P.NonVisualGroupShapeDrawingProperties(),
                    new ApplicationNonVisualDrawingProperties()
                ),
                new P.GroupShapeProperties(new A.TransformGroup()),
                CrearCajaTexto(2, titulo, 0, 0, 7200000, 1000000),
                CrearCajaTexto(3, contenido, 0, 1000000, 7200000, 4000000)
            )));
            return slide;
        }

        private P.Shape CrearCajaTexto(uint id, string texto, int x, int y, int ancho, int alto)
        {
            return new P.Shape(
                new P.NonVisualShapeProperties(
                    new P.NonVisualDrawingProperties() { Id = id, Name = $"TextBox {id}" },
                    new P.NonVisualShapeDrawingProperties(new A.ShapeLocks() { NoGrouping = true }),
                    new ApplicationNonVisualDrawingProperties()
                ),
                new P.ShapeProperties(new A.Transform2D(
                    new A.Offset() { X = x, Y = y },
                    new A.Extents() { Cx = ancho, Cy = alto }
                )),
                new P.TextBody(
                    new A.BodyProperties(),
                    new A.ListStyle(),
                    new A.Paragraph(new A.Run(new A.Text(texto)))
                )
            );
        }
    }
}
