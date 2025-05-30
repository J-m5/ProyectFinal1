USE [master]
GO
/****** Object:  Database [P1]    Script Date: 23/05/2025 16:49:45 ******/
CREATE DATABASE [P1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'P1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\P1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'P1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\P1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [P1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [P1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [P1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [P1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [P1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [P1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [P1] SET ARITHABORT OFF 
GO
ALTER DATABASE [P1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [P1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [P1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [P1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [P1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [P1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [P1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [P1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [P1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [P1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [P1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [P1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [P1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [P1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [P1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [P1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [P1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [P1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [P1] SET  MULTI_USER 
GO
ALTER DATABASE [P1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [P1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [P1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [P1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [P1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [P1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [P1] SET QUERY_STORE = ON
GO
ALTER DATABASE [P1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [P1]
GO
/****** Object:  Table [dbo].[ConsultasGROQ]    Script Date: 23/05/2025 16:49:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultasGROQ](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Consulta] [nvarchar](max) NOT NULL,
	[Respuesta] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ConsultasGROQ] ON 

INSERT [dbo].[ConsultasGROQ] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (1, CAST(N'2025-05-21T12:38:01.303' AS DateTime), N'Quien gano el mundial de futbol en el 2022', N'Un pregunta fácil!

La Copa Mundial de Fútbol de 2022 se llevó a cabo en Catar del 20 de noviembre al 18 de diciembre de 2022.

Y el campeón fue... Argentina! Led by Lionel Messi, Argentina derrotó a Francia en la final con un marcador de 4-2 en penaltis, después de que el partido terminó 3-3 después de la prórroga!

Fue el tercer título mundial de Argentina, después de sus victorias en 1978 y 1986. ¡Un gran logro para Messi y la albiceleste!')
INSERT [dbo].[ConsultasGROQ] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (2, CAST(N'2025-05-21T12:38:01.380' AS DateTime), N'Quien gano el mundial de futbol en el 2022', N'La Copa Mundial de Fútbol se llevó a cabo en Qatar del 20 de noviembre al 18 de diciembre de 2022. El campeón de la Copa Mundial de Fútbol de 2022 fue la selección de fútbol de Argentina, quien derrotó a la selección de fútbol en la tanda de penaltiis después de que el partido final terminara 3-3 después del tiempo extra.

Fue un partido emocionante, con goles de Lionel Messi y Kylian Mbappé, pero al final, los argentinos se llevaron el título.')
INSERT [dbo].[ConsultasGROQ] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (3, CAST(N'2025-05-21T12:43:02.290' AS DateTime), N'cuantos mundiales han habido de futbol', N'Hasta la fecha, se han disputado 22 ediciones del Campeonato Mundial de Fútbol, también conocido como Copa Mundial de Fútbol o Mundial de Fútbol.

A continuación, te presento la lista de todos los Mundiales de Fútbol disputados hasta la fecha:

1. **1930**: Uruguay (ganador: Uruguay)
2. **1934**: Italia (ganador: Italia)
3. **1938**: Francia (ganador: Italia)
4. **1950**: Brasil (ganador: Uruguay)
5. **1954**: Suiza (ganador: Alemania Federal)
6. **1958**: Suecia (ganador: Brasil)
7. **1962**: Chile (ganador: Brasil)
8. **1966**: Inglaterra (ganador: Inglaterra)
9. **1970**: México (ganador: Brasil)
10. **1974**: Alemania Federal (ganador: Alemania Federal)
11. **1978**: Argentina (ganador: Argentina)
12. **1982**: España (ganador: Italia)
13. **1986**: México (ganador: Argentina)
14. **1990**: Italia (ganador: Alemania Federal)
15. **1994**: Estados Unidos (ganador: Brasil)
16. **1998**: Francia (ganador: Francia)
17. **2002**: Japón y Corea del Sur (ganador: Brasil)
18. **2006**: Alemania (ganador: Italia)
19. **2010**: Sudáfrica (ganador: España)
20. **2014**: Brasil (ganador: Alemania)
21. **2018**: Rusia (ganador: Francia)
22. **2022**: Catar (ganador: a disputarse)

Espero que esta información sea útil. ¡Disfruta del fútbol!')
INSERT [dbo].[ConsultasGROQ] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (4, CAST(N'2025-05-21T13:06:50.687' AS DateTime), N'cuando se fundo la universidad san carlos de guatemala', N'La Universidad de San Carlos de Guatemala (USAC) fue fundada el 31 de enero de 1676, durante la colonia española. Fue la tercera universidad fundada en América Latina, después de la Universidad Nacional Mayor de San Marcos en Perú (1551) y la Universidad de México (1553).

La USAC fue fundada por la Real Cédula de Felipe IV de España, emitida en Madrid el 31 de enero de 1676. La real cédula establecía la creación de una universidad en la ciudad de Santiago de los Caballeros de Guatemala, que era la capital del Reino de Guatemala, que comprendía los actuales países de Guatemala, Honduras, El Salvador, Nicaragua y Costa Rica.

La universidad fue inaugurada en 1683, con la apertura de la facultad de Teología, seguida de la apertura de las facultades de Filosofía, Jurisprudencia y Medicina. En sus primeros años, la USAC se enfocó en la formación de sacerdotes y funcionarios para el gobierno colonial.

La USAC ha tenido una gran influencia en la historia de Guatemala y Centroamérica, no solo en la educación, sino también en la política, la cultura y la ciencia. Ha producido destacados intelectuales, políticos y líderes que han marcado el rumbo de la región.

Hoy en día, la USAC es una de las instituciones educativas más importantes y prestigiosas de Guatemala, con una amplia oferta académica que comprende carreras en humanidades, ciencias sociales, exactas, naturales y tecnología.')
INSERT [dbo].[ConsultasGROQ] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (5, CAST(N'2025-05-21T13:30:30.033' AS DateTime), N'quien fue el pirmer presidente de guatemala', N'El primer presidente de Guatemala fue Alejandro Marure, quien asumió el cargo el 16 de septiembre de 1821, después de que Guatemala declarara su independencia de España. Sin embargo, su mandato fue breve, ya que fue destituido el 9 de marzo de 1823.

El primer presidente constitucional de Guatemala fue Gabino Barreda, quien asumió el cargo el 1 de julio de 1824, después de la promulgación de la Constitución de 1824. Sin embargo, su mandato también fue breve, ya que fue derrocado el 12 de septiembre de 1826.

El primer presidente que gobernó Guatemala durante un período prolongado fue Mariano Gálvez, quien asumió el cargo el 3 de mayo de 1831 y gobernó hasta el 31 de marzo de 1838.

Es importante destacar que la historia política de Guatemala durante el siglo XIX estuvo marcada por inestabilidad y conflictos, lo que llevó a frecuentes cambios en el poder y a la intervención de líderes militares y políticos.')
INSERT [dbo].[ConsultasGROQ] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (6, CAST(N'2025-05-21T13:32:53.547' AS DateTime), N'cual es la capital de italia', N'La capital de Italia es Roma (en italiano, Roma).')
INSERT [dbo].[ConsultasGROQ] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (7, CAST(N'2025-05-23T11:06:54.870' AS DateTime), N'que es ingenieria en sistemas', N'La Ingeniería en Sistemas es una disciplina que combina principios de ingeniería, sistemas y tecnologías para analizar, diseñar, implementar y mantener sistemas integrados y complejos. Estos sistemas pueden ser físicos, como robots o sistemas de producción, o lógicos, como sistemas de información o redes de computadoras.

El objetivo de la Ingeniería en Sistemas es desarrollar soluciones que permitan a los sistemas funcionar de manera eficiente, segura y escalable, para satisfacer las necesidades de los usuarios y la sociedad. Para lograr esto, los ingenieros en sistemas deben tener una visión holística de los sistemas, considerando aspectos como:

1. Análisis de sistemas: Identificar los requisitos del sistema y analizar su funcionamiento actual.
2. Diseño de sistemas: Crear un diseño detallado del sistema, considerando aspectos como la arquitectura, la infraestructura y la tecnología.
3. Implementación de sistemas: Realizar la implementación del sistema, incluyendo la programación, la configuración y la pruebas.
4. Control y monitoreo de sistemas: Verificar que el sistema funcione correctamente y realizar ajustes cuando sea necesario.
5. Mantención de sistemas: Realizar actualizaciones, correcciones y mejoras continuas al sistema.

Algunas de las áreas que abarca la Ingeniería en Sistemas son:

1. **Ingeniería de software**: Desarrollo de software para sistemas complejos.
2. **Ingeniería de sistemas de información**: Diseño e implementación de sistemas para gestión de datos y conocimientos.
3. **Ingeniería de sistemas de control**: Diseño e implementación de control para sistemas físicos y lógicos.
4. **Ingeniería de sistemas de telecomunicaciones**: Desarrollo de sistemas de comunicación, como redes de computadoras y sistemas de comunicación inalámbrica.
5. **Ingeniería de sistemas de automatización**: Desarrollo de sistemas para la automatización de procesos y producción.
6. **Ingeniería de sistemas de seguridad**: Diseño e implementación de sistemas de seguridad para proteger sistemas y datos.

Los ingenieros en sistemas trabajan en diverse industrias, como:

1. Tecnología y software
2. Manufactura y producción
3. Servicios financieros y bancarios
4. Salud y servicios médicos
5. Energía y servicios públicos
6. Transporte y logística
7. Gobierno y defensa

En resumen, la Ingeniería en Sistemas es una disciplina que combina la ingeniería, la tecnología y la lógica para desarrollar soluciones integradas y complejos sistemas, para satisfacer las necesidades de la sociedad.')
INSERT [dbo].[ConsultasGROQ] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (8, CAST(N'2025-05-23T11:09:49.620' AS DateTime), N'que es el medio ambiente', N'El medio ambiente (también conocido como entorno natural o ecosistema) se refiere a todo lo que rodea a los seres vivos, incluyendo el aire, el agua, la tierra, la vegetación, los animales, los microorganismos, las rocas, los suelos, los océanos, los ríos, los lagos, la atmósfera, la litosfera, la hidrosfera, la biosfera, etc.

El medio ambiente es el conjunto de elementos naturales que interactúan entre sí y con los seres vivos, formando un sistema complejo y dinámico que se influye mutuamente. Estos elementos son:

1. **Aire**: la capa de gases que rodea la Tierra, compuesta por oxígeno, nitrógeno, dióxido de carbono, etc.
2. **Agua**: los océanos, los ríos, los lagos, los glaciares, el agua subterránea**, etc.
4. **Tierra**: la superficie terrestre, incluyendo los suelos, las rocas, los minerales, etc.
5. **Vegetación**: las plantas, los árboles, los bosques, las praderas, los jardines, etc.
6. **Animales**: los animales salvajes, los animales domésticos, los peces, los insectos, etc.
7. **Microorganismos**: bacterias, hongos, virus, etc.

El medio ambiente proporciona los recursos naturales necesarios para la supervivencia de los seres vivos, como el aire para respirar, el agua para beber, la comida para alimentarse, el refugio para protegerse, etc. También proporciona servicios esenciales, como la regulación del clima, la purificación del aire y del agua, el ciclo de nutrientes, etc.

Sin embargo, el medio ambiente también puede ser afectado negativamente por la acción humana, lo que puede generar problemasambientales como:

* Contaminación del aire y del agua
* Cambio climático
* Pérdida de biodiversidad
* Degradación del suelo
* Deforestación
* Extinción de especies
* Generación de residuos
* Ruido y contaminación acústica

Es importante proteger y conservar el medio ambiente para asegurar la supervivencia y el bienestar de las futuras generaciones.')
INSERT [dbo].[ConsultasGROQ] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (9, CAST(N'2025-05-23T11:17:33.553' AS DateTime), N'quien es el papa', N'Una pregunta fundamental en la historia de la religión!

El Papa es el obispo de Roma y el líder supremo de la Iglesia Católica Apostólica Romana. Es considerado el sucesor de San Pedro, uno de los doce apóstoles de Jesucristo, y es visto por los católicos como el pastor y maestro de la Iglesia universal.

El Papa tiene una triple función:

1. **Obispo de Roma, es decir, el pastor de la diócesis de Roma.
2. **Patriarca del Occidente**, título que se refiere a su papel como líder de la Iglesia Católica en relación con las otras Iglesias cristianas del Oriente y del Occidente.
3. **Sovereign of the State of the Vatican City**, es decir, jefe de Estado de la Ciudad del Vaticano, un Estado independiente y soberano ubicado en el centro de Roma.

Los papas son elegidos por el Colegio Cardenalicio, un grupo de cardenales que se reúnen en un cónclave secreto para escoger al nuevo Papa después de la muerte o renuncia del anterior. El Papa es elegido para un cargo vitalicio, y su sede se encuentra en la Ciudad del Vaticano.

Entre las responsabilidades del Papa se encuentran:

* Guiar la Iglesia Católica en su misión de evangelización y catequesis.
* Convocar y presidir concilios ecuménicos.
* Nombrar obispos y cardenales.
* Emitir documentos importantes, como encíclicas y bulas.
* Recibir embajadores y jefes de Estado de todo el mundo.

Algunos de los Papas más influyentes en la historia de la Iglesia Católica son:

* San Pedro (considerado el primer Papa).
* San Gregorio Magno (540-604 d.C.).
* Inocencio III (1198-1216).
* Bonifacio VIII (1073-1085).
* León XIII (1878-1903).
* Pío XII (1939-1958).
* Juan XXIII (1958-1963).
* Juan Pablo II (1978-2005).
* Benedicto XVI (2005-2013).
* Francisco (2013-presente).

Es importante destacar que, aunque el Papa es considerado infalible en cuestiones de fe y moral, no es considerado infalible en todos los aspectos de su enseñanza.')
INSERT [dbo].[ConsultasGROQ] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (10, CAST(N'2025-05-23T11:24:48.127' AS DateTime), N'quien es papa actualmente', N'Actualmente, el Papa es Francisco (en latín, Franciscus). Es el 266º papa de la Iglesia católica y su pontificado comenzó el 13 de marzo de 2013.

Jorge Mario Bergoglio, que es su nombre de nacimiento, es argentino, nació el 17 de diciembre de 1936 en Buenos Aires, Argentina. Fue ordenado sacerdote en 1969 y se desempeñó como obispo en varias diócesis argentinas antes de ser elegido Papa.

En su pontificado, Francisco" ha sido conocido por sus esfuerzos en favor de la reforma de la Iglesia, la lucha contra la pobreza y la defensa del medio ambiente, entre otras cuestiones. También ha sido reconocido por su estilo de liderazgo más cercano a las personas y su disposición a dialogar con líderes de otras religiones y confesiones.')
INSERT [dbo].[ConsultasGROQ] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (11, CAST(N'2025-05-23T11:31:12.863' AS DateTime), N'que es el futbol', N'El fútbol!

El fútbol, también conocido como fútbol asociación, es un deporte en el que dos conjuntos de once jugadores cada uno se enfrentan en un terreno rectangular con el objetivo de meter la pelota en la portería contraria. El equipo que logra meter más goles en la portería contraria gana el partido.

El fútbol es un deporte que requiere destreza, fuerza, resistencia, velocidad y estrategia. Los jugadores deben tener buena habilidad con la pelota, dominarla, controlarla y dirigirla hacia la portería contraria. También es fundamental una buena comunicación y coordinación entre los jugadores de un mismo equipo.

El objetivo del juego es anotar goles, es decir, meter la pelota en la portería contraria. Un gol se considera válido si la pelota cruza completamente la línea de gol. El equipo que anota más goles en el transcurso del partido gana el juego. Si el resultado es empate, el partido puede ir a prórrogas y, en algunos casos, se puede disputar una tanda de penaltis para determinar el vencedor.

El fútbol es un deporte muy popular en todo el mundo, con miles de millones de seguidores y aficionados. Es uno de los deportes más seguidos en el mundo, con competiciones internacionales como la Copa del Mundo, la Liga de Campeones, la Europa League y la Copa Sudamericana, entre otras.

Entre los aspectos más atractivos del fútbol se encuentran:

* La emoción: El fútbol es un deporte emocional, que genera pasión y emoción en los aficionados.
* La estrategia: El fútbol es un deporte que requiere estrategia y táctica para ganar partidos.
* La velocidad y habilidad: Los jugadores de fútbol necesitan tener velocidad, habilidad y destreza para controlar la pelota y marcar goles.
* La rivalidad: El fútbol es un deporte que genera rivalidades entre equipos y países, lo que hace que los partidos sean más emocionantes y competitivos.

En resumen, el fútbol es un deporte emocionante, estratégico y atractivo que genera pasión y emoción en miles de millones de personas alrededor del mundo.')
SET IDENTITY_INSERT [dbo].[ConsultasGROQ] OFF
GO
ALTER TABLE [dbo].[ConsultasGROQ] ADD  DEFAULT (getdate()) FOR [Fecha]
GO
USE [master]
GO
ALTER DATABASE [P1] SET  READ_WRITE 
GO
