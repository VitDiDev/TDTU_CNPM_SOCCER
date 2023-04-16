USE [master]
GO
CREATE DATABASE [QLDB]
GO
USE [QLDB]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauLacBo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenCLB] [nvarchar](max) NULL,
	[IdSVD] [int] NULL,
	[HuanLuyenVien] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CauThu]    Script Date: 4/11/2023 17:47:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauThu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[QueQuan] [nvarchar](max) NULL,
	[NamSinh] [int] NULL,
	[SoAo] [int] NULL,
	[IdCLB] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KetQua]    Script Date: 4/11/2023 17:47:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQua](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdLTD] [int] NULL,
	[BanThangDoi1] [int] NULL,
	[BanThangDoi2] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichThiDau]    Script Date: 4/11/2023 17:47:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichThiDau](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCLB1] [int] NULL,
	[IdCLB2] [int] NULL,
	[NgayThiDau] [datetime] NULL,
	[IdSVD] [int] NULL,
	[IdMuaGiai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuaGiai]    Script Date: 4/11/2023 17:47:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuaGiai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenMuaGiai] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 4/11/2023 17:47:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenPQ] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanVD]    Script Date: 4/11/2023 17:47:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanVD](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenSVD] [nvarchar](max) NULL,
	[SucChua] [varchar](max) NULL,
	[ThanhPho] [nvarchar](max) NULL,
 CONSTRAINT [PK__SanVD__3214EC07E976AA16] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 4/11/2023 17:47:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](max) NULL,
	[MatKhau] [varchar](max) NULL,
	[IdPQ] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XepHang]    Script Date: 4/11/2023 17:47:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XepHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMuaGiai] [int] NULL,
	[IdCLB] [int] NULL,
	[Diem] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CauLacBo] ON 

INSERT [dbo].[CauLacBo] ([Id], [TenCLB], [IdSVD], [HuanLuyenVien]) VALUES (1, N'Manchester United', 1, N'Pep Guardiola')
INSERT [dbo].[CauLacBo] ([Id], [TenCLB], [IdSVD], [HuanLuyenVien]) VALUES (2, N'Norwich City', 3, N'Zinedine Zidane')
INSERT [dbo].[CauLacBo] ([Id], [TenCLB], [IdSVD], [HuanLuyenVien]) VALUES (3, N'Hải Phòng', 3, N'Zinedine Zidane')
SET IDENTITY_INSERT [dbo].[CauLacBo] OFF
GO
SET IDENTITY_INSERT [dbo].[CauThu] ON 

INSERT [dbo].[CauThu] ([Id], [HoTen], [QueQuan], [NamSinh], [SoAo], [IdCLB]) VALUES (1, N'Lương Xuân Trường', N'Hải Phòng', 1995, 06, 3)
SET IDENTITY_INSERT [dbo].[CauThu] OFF
GO
SET IDENTITY_INSERT [dbo].[LichThiDau] ON 

INSERT [dbo].[LichThiDau] ([Id], [IdCLB1], [IdCLB2], [NgayThiDau], [IdSVD], [IdMuaGiai]) VALUES (1, 1, 2, CAST(N'2022-12-12T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[LichThiDau] ([Id], [IdCLB1], [IdCLB2], [NgayThiDau], [IdSVD], [IdMuaGiai]) VALUES (2, 2, 1, CAST(N'2023-04-11T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[LichThiDau] ([Id], [IdCLB1], [IdCLB2], [NgayThiDau], [IdSVD], [IdMuaGiai]) VALUES (3, 1, 2, CAST(N'2023-04-26T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[LichThiDau] ([Id], [IdCLB1], [IdCLB2], [NgayThiDau], [IdSVD], [IdMuaGiai]) VALUES (4, 2, 1, CAST(N'2023-04-26T00:00:00.000' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[LichThiDau] OFF
GO
SET IDENTITY_INSERT [dbo].[MuaGiai] ON 

INSERT [dbo].[MuaGiai] ([Id], [TenMuaGiai]) VALUES (1, N'Europa League')
INSERT [dbo].[MuaGiai] ([Id], [TenMuaGiai]) VALUES (2, N'Premier League')
SET IDENTITY_INSERT [dbo].[MuaGiai] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([Id], [TenPQ]) VALUES (1, N'Admin')
INSERT [dbo].[PhanQuyen] ([Id], [TenPQ]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[SanVD] ON 

INSERT [dbo].[SanVD] ([Id], [TenSVD], [SucChua], [ThanhPho]) VALUES (1, N'Old tranford', N'720000', N'Manchester')
INSERT [dbo].[SanVD] ([Id], [TenSVD], [SucChua], [ThanhPho]) VALUES (2, N'Anfield', N'1200000', N'Liverpool')
INSERT [dbo].[SanVD] ([Id], [TenSVD], [SucChua], [ThanhPho]) VALUES (3, N'Etihad', N'210000', N'Manchester')
SET IDENTITY_INSERT [dbo].[SanVD] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [IdPQ]) VALUES (1, N'Admin', N'Admin', 1)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [IdPQ]) VALUES (2, N'TranThiVen', N'123456', 2)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [IdPQ]) VALUES (3, N'VoPhuVinh', N'123456', 2)

SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
ALTER TABLE [dbo].[CauLacBo]  WITH CHECK ADD  CONSTRAINT [FK__CauLacBo__IdSVD__398D8EEE] FOREIGN KEY([IdSVD])
REFERENCES [dbo].[SanVD] ([Id])
GO
ALTER TABLE [dbo].[CauLacBo] CHECK CONSTRAINT [FK__CauLacBo__IdSVD__398D8EEE]
GO
ALTER TABLE [dbo].[CauThu]  WITH CHECK ADD FOREIGN KEY([IdCLB])
REFERENCES [dbo].[CauLacBo] ([Id])
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD FOREIGN KEY([IdLTD])
REFERENCES [dbo].[LichThiDau] ([Id])
GO
ALTER TABLE [dbo].[LichThiDau]  WITH CHECK ADD FOREIGN KEY([IdCLB1])
REFERENCES [dbo].[CauLacBo] ([Id])
GO
ALTER TABLE [dbo].[LichThiDau]  WITH CHECK ADD FOREIGN KEY([IdCLB2])
REFERENCES [dbo].[CauLacBo] ([Id])
GO
ALTER TABLE [dbo].[LichThiDau]  WITH CHECK ADD FOREIGN KEY([IdMuaGiai])
REFERENCES [dbo].[MuaGiai] ([Id])
GO
ALTER TABLE [dbo].[LichThiDau]  WITH CHECK ADD  CONSTRAINT [FK__LichThiDa__IdSVD__4AB81AF0] FOREIGN KEY([IdSVD])
REFERENCES [dbo].[SanVD] ([Id])
GO
ALTER TABLE [dbo].[LichThiDau] CHECK CONSTRAINT [FK__LichThiDa__IdSVD__4AB81AF0]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([IdPQ])
REFERENCES [dbo].[PhanQuyen] ([Id])
GO
ALTER TABLE [dbo].[XepHang]  WITH CHECK ADD FOREIGN KEY([IdCLB])
REFERENCES [dbo].[CauLacBo] ([Id])
GO
ALTER TABLE [dbo].[XepHang]  WITH CHECK ADD FOREIGN KEY([IdMuaGiai])
REFERENCES [dbo].[MuaGiai] ([Id])
GO
USE [master]
GO
ALTER DATABASE [QLDB] SET  READ_WRITE 
GO
