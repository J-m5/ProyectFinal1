﻿namespace proyecto1
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            textBoxConsultaIA = new TextBox();
            buttonConsultar = new Button();
            textBoxResultadoAI = new TextBox();
            label1 = new Label();
            label2 = new Label();
            SuspendLayout();
            // 
            // textBoxConsultaIA
            // 
            textBoxConsultaIA.Location = new Point(119, 85);
            textBoxConsultaIA.Margin = new Padding(3, 4, 3, 4);
            textBoxConsultaIA.Multiline = true;
            textBoxConsultaIA.Name = "textBoxConsultaIA";
            textBoxConsultaIA.Size = new Size(605, 71);
            textBoxConsultaIA.TabIndex = 0;
            // 
            // buttonConsultar
            // 
            buttonConsultar.BackColor = SystemColors.Control;
            buttonConsultar.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 0);
            buttonConsultar.ForeColor = SystemColors.Highlight;
            buttonConsultar.Location = new Point(381, 473);
            buttonConsultar.Margin = new Padding(3, 4, 3, 4);
            buttonConsultar.Name = "buttonConsultar";
            buttonConsultar.Size = new Size(181, 43);
            buttonConsultar.TabIndex = 1;
            buttonConsultar.Text = "Enviar Consulta";
            buttonConsultar.UseVisualStyleBackColor = false;
            buttonConsultar.Click += buttonConsultar_Click;
            // 
            // textBoxResultadoAI
            // 
            textBoxResultadoAI.Cursor = Cursors.IBeam;
            textBoxResultadoAI.Location = new Point(107, 255);
            textBoxResultadoAI.Margin = new Padding(2, 3, 2, 3);
            textBoxResultadoAI.Multiline = true;
            textBoxResultadoAI.Name = "textBoxResultadoAI";
            textBoxResultadoAI.ReadOnly = true;
            textBoxResultadoAI.ScrollBars = ScrollBars.Vertical;
            textBoxResultadoAI.Size = new Size(666, 175);
            textBoxResultadoAI.TabIndex = 6;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.BorderStyle = BorderStyle.Fixed3D;
            label1.Font = new Font("Segoe UI", 10.8F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label1.ForeColor = Color.Red;
            label1.Location = new Point(381, 39);
            label1.Name = "label1";
            label1.Size = new Size(95, 27);
            label1.TabIndex = 9;
            label1.Text = "Consultar";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.BorderStyle = BorderStyle.Fixed3D;
            label2.Font = new Font("Segoe UI", 10.8F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label2.ForeColor = Color.Red;
            label2.Location = new Point(381, 197);
            label2.Name = "label2";
            label2.Size = new Size(111, 27);
            label2.TabIndex = 10;
            label2.Text = "Respuesta: ";
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.DarkGray;
            ClientSize = new Size(914, 600);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(textBoxResultadoAI);
            Controls.Add(buttonConsultar);
            Controls.Add(textBoxConsultaIA);
            Margin = new Padding(3, 4, 3, 4);
            Name = "Form1";
            Text = "Form1";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private TextBox textBoxConsultaIA;
        private Button buttonConsultar;
        private TextBox textBoxResultadoAI;
        private Label label1;
        private Label label2;
    }
}
