CREATE DATABASE TP_Final
GO

USE [TP_Final]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 05/11/2020 14:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK__categori__CD54BC5A4F48B909] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 05/11/2020 14:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_venta](
	[ID_venta] [int] NOT NULL,
	[ID_detalle_venta] [int] NOT NULL,
	[ID_producto] [int] NULL,
	[Cantidad] [int] NULL,
	[Precio_unitario] [decimal](18, 0) NULL,
 CONSTRAINT [PK__detalle___2027566B85509CBE] PRIMARY KEY CLUSTERED 
(
	[ID_venta] ASC,
	[ID_detalle_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[envio]    Script Date: 05/11/2020 14:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[envio](
	[ID_envio] [int] NOT NULL,
	[Nombre_Envio] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_envio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marca]    Script Date: 05/11/2020 14:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marca](
	[ID_marca] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK__marca__36DBB8CBB84B265E] PRIMARY KEY CLUSTERED 
(
	[ID_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pago]    Script Date: 05/11/2020 14:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pago](
	[ID_pago] [int] NOT NULL,
	[Descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 05/11/2020 14:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[Stock] [int] NULL,
	[ID_marca] [int] NULL,
	[Precio_unitario] [decimal](18, 0) NULL,
	[ID_categoria] [int] NULL,
	[Estado] [bit] NULL,
	[Nombre] [nchar](50) NULL,
	[Imagen] [image] NULL,
 CONSTRAINT [PK__producto__FF341C0D97BB8109] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 05/11/2020 14:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol](
	[ID_rol] [int] NOT NULL,
	[Tipo_de_Rol] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 05/11/2020 14:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[ID_Sucursal] [int] NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Direccion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 05/11/2020 14:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[ID_usuario] [int] IDENTITY(1,1) NOT NULL,
	[Rol] [int] NULL,
	[Nombre] [varchar](255) NULL,
	[Apellido] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Direccion] [varchar](255) NULL,
	[Nombre_Usuario] [nchar](50) NULL,
	[Password] [varchar](255) NULL,
	[Telefono] [varchar](255) NULL,
	[DNI] [varchar](8) NULL,
 CONSTRAINT [PK__usuario__4E3E04AD70658984] PRIMARY KEY CLUSTERED 
(
	[ID_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 05/11/2020 14:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[ID_venta] [int] NOT NULL,
	[Fecha] [date] NULL,
	[ID_usuario] [int] NULL,
	[Direccion] [varchar](255) NULL,
	[Total] [decimal](18, 0) NULL,
	[Modo_envio] [int] NULL,
	[Modo_pago] [int] NULL,
	[Nro_tajeta] [varchar](16) NULL,
	[Codigo_tarjeta] [varchar](3) NULL,
	[ID_sucursal] [int] NULL,
 CONSTRAINT [PK__venta__459533BF7205C55B] PRIMARY KEY CLUSTERED 
(
	[ID_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[categoria] ADD  CONSTRAINT [DF__categoria__Nombr__48CFD27E]  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[detalle_venta] ADD  CONSTRAINT [DF__detalle_v__id_pr__49C3F6B7]  DEFAULT (NULL) FOR [ID_producto]
GO
ALTER TABLE [dbo].[detalle_venta] ADD  CONSTRAINT [DF__detalle_v__canti__4AB81AF0]  DEFAULT (NULL) FOR [Cantidad]
GO
ALTER TABLE [dbo].[detalle_venta] ADD  CONSTRAINT [DF__detalle_v__preci__4BAC3F29]  DEFAULT (NULL) FOR [Precio_unitario]
GO
ALTER TABLE [dbo].[envio] ADD  DEFAULT (NULL) FOR [Nombre_Envio]
GO
ALTER TABLE [dbo].[marca] ADD  CONSTRAINT [DF__marca__Nombre__4D94879B]  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[pago] ADD  DEFAULT (NULL) FOR [Descripcion]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__stock__5070F446]  DEFAULT (NULL) FOR [Stock]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__id_mar__5165187F]  DEFAULT (NULL) FOR [ID_marca]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__precio__52593CB8]  DEFAULT (NULL) FOR [Precio_unitario]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__id_cat__534D60F1]  DEFAULT (NULL) FOR [ID_categoria]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__estado__5441852A]  DEFAULT (NULL) FOR [Estado]
GO
ALTER TABLE [dbo].[rol] ADD  DEFAULT (NULL) FOR [Tipo_de_Rol]
GO
ALTER TABLE [dbo].[sucursal] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[sucursal] ADD  DEFAULT (NULL) FOR [Direccion]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__rol__5812160E]  DEFAULT (NULL) FOR [Rol]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__nombre__59063A47]  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__apellid__59FA5E80]  DEFAULT (NULL) FOR [Apellido]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__email__5AEE82B9]  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__direcci__5BE2A6F2]  DEFAULT (NULL) FOR [Direccion]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__passwor__5CD6CB2B]  DEFAULT (NULL) FOR [Password]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__telefon__5DCAEF64]  DEFAULT (NULL) FOR [Telefono]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__DNI__5EBF139D]  DEFAULT (NULL) FOR [DNI]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__fecha__5FB337D6]  DEFAULT (NULL) FOR [Fecha]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__id_usuari__60A75C0F]  DEFAULT (NULL) FOR [ID_usuario]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__direccion__619B8048]  DEFAULT (NULL) FOR [Direccion]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__total__628FA481]  DEFAULT (NULL) FOR [Total]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__modo_envi__6383C8BA]  DEFAULT (NULL) FOR [Modo_envio]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__modo_pago__6477ECF3]  DEFAULT (NULL) FOR [Modo_pago]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__nro_tajet__656C112C]  DEFAULT (NULL) FOR [Nro_tajeta]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__codigo_ta__66603565]  DEFAULT (NULL) FOR [Codigo_tarjeta]
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD  CONSTRAINT [detalle_venta_ibfk_1] FOREIGN KEY([ID_venta])
REFERENCES [dbo].[venta] ([ID_venta])
GO
ALTER TABLE [dbo].[detalle_venta] CHECK CONSTRAINT [detalle_venta_ibfk_1]
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD  CONSTRAINT [detalle_venta_ibfk_2] FOREIGN KEY([ID_producto])
REFERENCES [dbo].[producto] ([id_producto])
GO
ALTER TABLE [dbo].[detalle_venta] CHECK CONSTRAINT [detalle_venta_ibfk_2]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [producto_ibfk_1] FOREIGN KEY([ID_marca])
REFERENCES [dbo].[marca] ([ID_marca])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [producto_ibfk_1]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [producto_ibfk_2] FOREIGN KEY([ID_categoria])
REFERENCES [dbo].[categoria] ([id_categoria])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [producto_ibfk_2]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_rol] FOREIGN KEY([Rol])
REFERENCES [dbo].[rol] ([ID_rol])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_rol]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_sucursal] FOREIGN KEY([ID_sucursal])
REFERENCES [dbo].[sucursal] ([ID_Sucursal])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_sucursal]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_usuario] FOREIGN KEY([ID_usuario])
REFERENCES [dbo].[usuario] ([ID_usuario])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_usuario]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [venta_ibfk_1] FOREIGN KEY([ID_usuario])
REFERENCES [dbo].[usuario] ([ID_usuario])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [venta_ibfk_1]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [venta_ibfk_2] FOREIGN KEY([Modo_envio])
REFERENCES [dbo].[envio] ([ID_envio])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [venta_ibfk_2]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [venta_ibfk_3] FOREIGN KEY([Modo_pago])
REFERENCES [dbo].[pago] ([ID_pago])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [venta_ibfk_3]
GO
