USE [master]
GO
/****** Object:  Database [TF]    Script Date: 29/05/2022 22:51:37 ******/
CREATE DATABASE [TF]
GO
ALTER DATABASE [TF] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TF] SET ARITHABORT OFF 
GO
ALTER DATABASE [TF] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TF] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TF] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TF] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TF] SET  MULTI_USER 
GO
ALTER DATABASE [TF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TF] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TF] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TF] SET QUERY_STORE = OFF
GO
USE [TF]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 29/05/2022 22:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre_categoria] [varchar](250) NOT NULL,
	[descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK__Categori__CD54BC5AAD48EE62] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 29/05/2022 22:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id_cliente] [int] NOT NULL,
	[id_trainer] [int] NOT NULL,
	[tipo_cliente] [varchar](250) NOT NULL,
	[nombre] [varchar](250) NOT NULL,
	[celular] [int] NOT NULL,
	[direccion] [varchar](250) NOT NULL,
	[correo] [varchar](250) NOT NULL,
	[pais] [varchar](250) NOT NULL,
	[ciudad] [varchar](250) NOT NULL,
 CONSTRAINT [PK__Cliente__677F38F55977AF5A] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallesDeOrden]    Script Date: 29/05/2022 22:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesDeOrden](
	[id_detalle] [int] IDENTITY(1,1) NOT NULL,
	[id_pedido] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK__Detalles__4F1332DECE1613A7] PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado_Fisico]    Script Date: 29/05/2022 22:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_Fisico](
	[id_estado_fisico] [int] IDENTITY(1,1) NOT NULL,
	[id_cliente] [int] NOT NULL,
	[edad] [int] NOT NULL,
	[genero] [varchar](250) NOT NULL,
	[estatura] [int] NOT NULL,
	[peso] [float] NOT NULL,
 CONSTRAINT [PK__Estado_F__37720C6909036E01] PRIMARY KEY CLUSTERED 
(
	[id_estado_fisico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Membresia]    Script Date: 29/05/2022 22:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membresia](
	[id_membresia] [int] IDENTITY(1,1) NOT NULL,
	[duracion] [int] NULL,
	[precio] [money] NULL,
	[fecha_inicio] [date] NOT NULL,
	[fecha_fin] [date] NULL,
 CONSTRAINT [PK__Membresi__2EB820E15D70F37B] PRIMARY KEY CLUSTERED 
(
	[id_membresia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Objetivo]    Script Date: 29/05/2022 22:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objetivo](
	[id_objetivo] [int] IDENTITY(1,1) NOT NULL,
	[id_cliente] [int] NOT NULL,
	[descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK__Objetivo__380EF46071C916B4] PRIMARY KEY CLUSTERED 
(
	[id_objetivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 29/05/2022 22:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[id_pedido] [int] IDENTITY(1,1) NOT NULL,
	[id_cliente] [int] NOT NULL,
	[fecha_pedido] [date] NOT NULL,
	[id_transportista] [int] NOT NULL,
 CONSTRAINT [PK__Pedidos__6FF0148966F98605] PRIMARY KEY CLUSTERED 
(
	[id_pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 29/05/2022 22:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[id_proveedor] [int] NOT NULL,
	[id_categoria] [int] NOT NULL,
	[nombre_producto] [varchar](250) NOT NULL,
	[precio] [money] NOT NULL,
	[stock] [int] NOT NULL,
 CONSTRAINT [PK__Producto__FF341C0D5088E721] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 29/05/2022 22:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[id_proveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombre_proveedor] [varchar](250) NOT NULL,
	[direccion_proveedor] [varchar](250) NOT NULL,
	[celular_proveedor] [varchar](250) NOT NULL,
 CONSTRAINT [PK__Proveedo__8D3DFE28C4D34ACA] PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rutina]    Script Date: 29/05/2022 22:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rutina](
	[id_rutina] [int] IDENTITY(1,1) NOT NULL,
	[id_cliente] [int] NOT NULL,
	[tipo] [varchar](250) NOT NULL,
	[estado] [varchar](250) NOT NULL,
 CONSTRAINT [PK__Rutina__A2849667309CD78A] PRIMARY KEY CLUSTERED 
(
	[id_rutina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 29/05/2022 22:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicio](
	[id_servicio] [int] IDENTITY(1,1) NOT NULL,
	[id_cliente] [int] NOT NULL,
	[id_membresia] [int] NOT NULL,
	[fecha_inicio] [date] NOT NULL,
	[fecha_fin] [date] NOT NULL,
 CONSTRAINT [PK__Servicio__6FD07FDCF71F60B7] PRIMARY KEY CLUSTERED 
(
	[id_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainer]    Script Date: 29/05/2022 22:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainer](
	[id_trainer] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](250) NOT NULL,
	[direccion] [varchar](250) NOT NULL,
	[celular] [varchar](250) NOT NULL,
	[correo] [varchar](250) NOT NULL,
	[ciudad] [varchar](250) NOT NULL,
	[pais] [varchar](250) NOT NULL,
 CONSTRAINT [PK__Trainer__9104E8174E001F81] PRIMARY KEY CLUSTERED 
(
	[id_trainer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transportista]    Script Date: 29/05/2022 22:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transportista](
	[id_transportista] [int] IDENTITY(1,1) NOT NULL,
	[nombre_transportista] [varchar](250) NOT NULL,
	[telefono_transportista] [varchar](250) NOT NULL,
 CONSTRAINT [PK__Transpor__6D39A9324E1114AD] PRIMARY KEY CLUSTERED 
(
	[id_transportista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [id_trainer] FOREIGN KEY([id_trainer])
REFERENCES [dbo].[Trainer] ([id_trainer])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [id_trainer]
GO
ALTER TABLE [dbo].[DetallesDeOrden]  WITH CHECK ADD  CONSTRAINT [FK__DetallesD__canti__17C286CF] FOREIGN KEY([id_pedido])
REFERENCES [dbo].[Pedidos] ([id_pedido])
GO
ALTER TABLE [dbo].[DetallesDeOrden] CHECK CONSTRAINT [FK__DetallesD__canti__17C286CF]
GO
ALTER TABLE [dbo].[DetallesDeOrden]  WITH CHECK ADD  CONSTRAINT [FK__DetallesD__id_pr__18B6AB08] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[DetallesDeOrden] CHECK CONSTRAINT [FK__DetallesD__id_pr__18B6AB08]
GO
ALTER TABLE [dbo].[Estado_Fisico]  WITH CHECK ADD  CONSTRAINT [FK__Estado_Fi__id_cl__1B9317B3] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[Estado_Fisico] CHECK CONSTRAINT [FK__Estado_Fi__id_cl__1B9317B3]
GO
ALTER TABLE [dbo].[Objetivo]  WITH CHECK ADD  CONSTRAINT [id_cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[Objetivo] CHECK CONSTRAINT [id_cliente]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK__Pedidos__id_clie__13F1F5EB] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK__Pedidos__id_clie__13F1F5EB]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK__Pedidos__id_tran__14E61A24] FOREIGN KEY([id_transportista])
REFERENCES [dbo].[Transportista] ([id_transportista])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK__Pedidos__id_tran__14E61A24]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [id_categoria] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[Categoria] ([id_categoria])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [id_categoria]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [id_proveedor] FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[Proveedor] ([id_proveedor])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [id_proveedor]
GO
ALTER TABLE [dbo].[Rutina]  WITH CHECK ADD  CONSTRAINT [FK__Rutina__id_clien__1F63A897] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[Rutina] CHECK CONSTRAINT [FK__Rutina__id_clien__1F63A897]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [id_clientee] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [id_clientee]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [id_membresia] FOREIGN KEY([id_membresia])
REFERENCES [dbo].[Membresia] ([id_membresia])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [id_membresia]
GO
USE [master]
GO
ALTER DATABASE [TF] SET  READ_WRITE 
GO

