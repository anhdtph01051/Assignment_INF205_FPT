USE [QLBH2]
GO
/****** Object:  Table [dbo].[login]    Script Date: 10/26/2016 09:53:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hovaten] [nvarchar](50) NULL,
	[username] [nchar](50) NULL,
	[pw] [nchar](50) NULL,
	[email] [nchar](255) NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[login] ON
INSERT [dbo].[login] ([id], [hovaten], [username], [pw], [email]) VALUES (2, N'Đặng Tùng Anh', N'1choi10                                           ', N'manutd                                            ', N'tunganhken@gmail.com                                                                                                                                                                                                                                           ')
INSERT [dbo].[login] ([id], [hovaten], [username], [pw], [email]) VALUES (3, N'Lương Bằng Quang', N'abc1                                              ', N'manutd                                            ', N'anhdtph01051@gmail.com                                                                                                                                                                                                                                         ')
INSERT [dbo].[login] ([id], [hovaten], [username], [pw], [email]) VALUES (4, N'Trần Minh Quý', N'quyal                                             ', N'manutd                                            ', N'manutd@gmail.com                                                                                                                                                                                                                                               ')
INSERT [dbo].[login] ([id], [hovaten], [username], [pw], [email]) VALUES (5, N'Dang Tung Anh', N'tunganh1                                          ', N'manutd                                            ', N'tunganhken@gmail.com                                                                                                                                                                                                                                           ')
SET IDENTITY_INSERT [dbo].[login] OFF
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 10/26/2016 09:53:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLSP] [int] NOT NULL,
	[TenLSP] [nvarchar](50) NOT NULL,
 CONSTRAINT [LoaiSanPham_pk] PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (1, N'Giày')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (2, N'Dép')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (3, N'Quần')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (4, N'Áo')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (5, N'Phụ Kiện')
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/26/2016 09:53:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[Phone] [text] NOT NULL,
	[Email] [varchar](100) NOT NULL,
 CONSTRAINT [KhachHang_pk] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Phone], [Email]) VALUES (1, N'Đặng Tùng Anh', N'Hà nội', N'029292929', N'anhdtph01051@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Phone], [Email]) VALUES (2, N'Lương Văn Tùng', N'Móng Cái', N'245945948', N'tunglv@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Phone], [Email]) VALUES (3, N'Nguyên Công Thành', N'Hồ Chí Minh', N'45984923', N'thanhnc@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Phone], [Email]) VALUES (4, N'Hoàng Thị Hồng', N'Hạ Long', N'43584398394', N'honght@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Phone], [Email]) VALUES (5, N'Trịnh Đình Quang', N'Sài Gòn', N'6939348348', N'quangtd@gmail.com')
/****** Object:  Table [dbo].[SanPham]    Script Date: 10/26/2016 09:53:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[Prince] [money] NULL,
	[DVT] [nvarchar](50) NULL,
	[SoLuong] [text] NULL,
	[TenLSP] [int] NULL,
 CONSTRAINT [SanPham_pk] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Prince], [DVT], [SoLuong], [TenLSP]) VALUES (0, N'Quan', 450.0000, N'chiếc', N'1', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Prince], [DVT], [SoLuong], [TenLSP]) VALUES (1, N'Áo', 360.0000, N'Chiếc', N'3', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Prince], [DVT], [SoLuong], [TenLSP]) VALUES (2, N'Áo', 500.0000, N'Chiếc', N'3', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Prince], [DVT], [SoLuong], [TenLSP]) VALUES (3, N'Áo', 70.0000, N'chiếc', N'3', 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Prince], [DVT], [SoLuong], [TenLSP]) VALUES (4, N'Áo', 50.0000, N'chiếc', N'3', 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Prince], [DVT], [SoLuong], [TenLSP]) VALUES (5, N'Áo', 80.0000, N'a', N'3', 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Prince], [DVT], [SoLuong], [TenLSP]) VALUES (7, N'Op Apple', 100.0000, N'Chiec', N'10', 5)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/26/2016 09:53:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] NOT NULL,
	[Ngay] [date] NOT NULL,
	[TriGia] [money] NOT NULL,
	[MaKH] [int] NOT NULL,
 CONSTRAINT [HoaDon_pk] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HoaDon] ([MaHD], [Ngay], [TriGia], [MaKH]) VALUES (1, CAST(0xEA3B0B00 AS Date), 200.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [Ngay], [TriGia], [MaKH]) VALUES (2, CAST(0xEA3B0B00 AS Date), 300.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [Ngay], [TriGia], [MaKH]) VALUES (3, CAST(0xEA3B0B00 AS Date), 400.0000, 3)
INSERT [dbo].[HoaDon] ([MaHD], [Ngay], [TriGia], [MaKH]) VALUES (4, CAST(0xEA3B0B00 AS Date), 500.0000, 4)
INSERT [dbo].[HoaDon] ([MaHD], [Ngay], [TriGia], [MaKH]) VALUES (5, CAST(0xEA3B0B00 AS Date), 600.0000, 5)
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 10/26/2016 09:53:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaCTHD] [int] NOT NULL,
	[SoLuong] [varchar](15) NOT NULL,
	[MAHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[GiaBan] [int] NOT NULL,
 CONSTRAINT [ChiTietHoaDon_pk] PRIMARY KEY CLUSTERED 
(
	[MaCTHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [SoLuong], [MAHD], [MaSP], [GiaBan]) VALUES (1, N'5', 1, 1, 200)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [SoLuong], [MAHD], [MaSP], [GiaBan]) VALUES (2, N'10', 2, 2, 300)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [SoLuong], [MAHD], [MaSP], [GiaBan]) VALUES (3, N'15', 3, 3, 400)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [SoLuong], [MAHD], [MaSP], [GiaBan]) VALUES (4, N'20', 4, 4, 500)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [SoLuong], [MAHD], [MaSP], [GiaBan]) VALUES (5, N'25', 5, 5, 600)
/****** Object:  ForeignKey [ChiTietHoaDon_HoaDon]    Script Date: 10/26/2016 09:53:23 ******/
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [ChiTietHoaDon_HoaDon] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [ChiTietHoaDon_HoaDon]
GO
/****** Object:  ForeignKey [ChiTietHoaDon_SanPham]    Script Date: 10/26/2016 09:53:23 ******/
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [ChiTietHoaDon_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [ChiTietHoaDon_SanPham]
GO
/****** Object:  ForeignKey [HoaDon_KhachHang]    Script Date: 10/26/2016 09:53:23 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [HoaDon_KhachHang]
GO
/****** Object:  ForeignKey [SanPham_LoaiSanPham]    Script Date: 10/26/2016 09:53:23 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [SanPham_LoaiSanPham] FOREIGN KEY([TenLSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [SanPham_LoaiSanPham]
GO
