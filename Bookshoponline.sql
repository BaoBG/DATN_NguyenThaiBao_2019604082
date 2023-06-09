USE [BookStoreOnline]
GO
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 5/13/2021 12:11:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDH](
	[MaDH] [bigint] NOT NULL,
	[MaSach] [bigint] NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 5/13/2021 12:11:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaDanhGia] [bigint] IDENTITY(1,1) NOT NULL,
	[MaTK] [bigint] NOT NULL,
	[TenTK] [varchar](50) NOT NULL,
	[NoiDung] [ntext] NOT NULL,
	[NgayDanhGia] [date] NOT NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[MaDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucSP]    Script Date: 5/13/2021 12:11:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSP](
	[MaDM] [bigint] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DanhMucSP] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 5/13/2021 12:11:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [bigint] IDENTITY(1,1) NOT NULL,
	[MaTK] [bigint] NOT NULL,
	[NguoiDat] [nvarchar](100) NOT NULL,
	[NguoiNhan] [nvarchar](100) NOT NULL,
	[NgayDatHang] [date] NOT NULL,
	[DiaChiNguoiNhan] [ntext] NOT NULL,
	[SDTNguoiNhan] [varchar](15) NOT NULL,
	[TongTien] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 5/13/2021 12:11:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [bigint] IDENTITY(1,1) NOT NULL,
	[TenKM] [nvarchar](100) NOT NULL,
	[MoTa] [ntext] NOT NULL,
	[ChietKhau] [int] NOT NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXB]    Script Date: 5/13/2021 12:11:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXB](
	[MaNXB] [bigint] IDENTITY(1,1) NOT NULL,
	[TenNXB] [nvarchar](300) NOT NULL,
	[MoTa] [ntext] NOT NULL,
	[HinhAnh] [varchar](50) NULL,
 CONSTRAINT [PK_NhaXB] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomTK]    Script Date: 5/13/2021 12:11:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomTK](
	[MaNhomTK] [bigint] IDENTITY(1,1) NOT NULL,
	[TenNhomTK] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhomTK] PRIMARY KEY CLUSTERED 
(
	[MaNhomTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 5/13/2021 12:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [bigint] IDENTITY(1,1) NOT NULL,
	[MaTG] [bigint] NOT NULL,
	[MaNXB] [bigint] NOT NULL,
	[MaDM] [bigint] NOT NULL,
	[MaKM] [bigint] NOT NULL,
	[TenSach] [nvarchar](100) NOT NULL,
	[NgayPhatHanh] [date] NOT NULL,
	[MoTa] [ntext] NOT NULL,
	[HinhAnh] [varchar](100) NOT NULL,
	[GiaBan] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 5/13/2021 12:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[MaSlide] [int] IDENTITY(1,1) NOT NULL,
	[TenSlide] [varchar](50) NOT NULL,
	[HinhAnh] [varchar](50) NOT NULL,
	[Url] [varchar](50) NULL,
	[TitleID] [varchar](20) NULL,
	[TTHienThi] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[MaSlide] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 5/13/2021 12:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTG] [bigint] IDENTITY(1,1) NOT NULL,
	[TenTG] [nvarchar](150) NOT NULL,
	[MoTa] [ntext] NULL,
	[HinhAnh] [varchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/13/2021 12:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [bigint] IDENTITY(1,1) NOT NULL,
	[MaNhomTK] [bigint] NOT NULL,
	[TenTK] [varchar](50) NOT NULL,
	[MatKhau] [varchar](20) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](300) NOT NULL,
	[NgaySinh] [date] NULL,
	[Email] [varchar](50) NULL,
	[SDT] [varchar](15) NOT NULL,
	[AnhDaiDien] [varchar](100) NULL,
	[NgayTao] [date] NOT NULL,
	[MaDanhGia] [bigint] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 5/13/2021 12:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTinTuc] [bigint] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](500) NOT NULL,
	[NoiDung] [ntext] NOT NULL,
	[NgayTao] [date] NOT NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [TenSP], [SoLuong], [DonGia]) VALUES (8, 7, N'Làm Bạn Với Bầu Trời', 1, 77000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [TenSP], [SoLuong], [DonGia]) VALUES (9, 1, N'Tuổi Trẻ Hoang Dại', 1, 60000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [TenSP], [SoLuong], [DonGia]) VALUES (12, 31, N'Có Hai Con Mèo Ngồi Bên Cửa Sổ', 1, 55000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [TenSP], [SoLuong], [DonGia]) VALUES (13, 42, N'Hành Trình Lập Nghiệp - Jack Ma', 1, 70000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [TenSP], [SoLuong], [DonGia]) VALUES (14, 16, N'Tiếp thị 4.0 - Dịch Chuyển Từ Truyền Thống Sang Công Nghệ Số', 1, 90000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [TenSP], [SoLuong], [DonGia]) VALUES (15, 1, N'Tuổi Trẻ Hoang Dại', 1, 60000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [TenSP], [SoLuong], [DonGia]) VALUES (16, 1, N'Tuổi Trẻ Hoang Dại', 2, 60000)
GO
SET IDENTITY_INSERT [dbo].[DanhGia] ON 

INSERT [dbo].[DanhGia] ([MaDanhGia], [MaTK], [TenTK], [NoiDung], [NgayDanhGia]) VALUES (1, 2, N'tranlinh', N'Giao hàng rất nhanh, chất lượng sản phẩm rất tốt', CAST(N'2021-04-10' AS Date))
INSERT [dbo].[DanhGia] ([MaDanhGia], [MaTK], [TenTK], [NoiDung], [NgayDanhGia]) VALUES (2, 3, N'thuphuong', N'Rất hài lòng với chất lượng phục vụ của website', CAST(N'2021-04-11' AS Date))
INSERT [dbo].[DanhGia] ([MaDanhGia], [MaTK], [TenTK], [NoiDung], [NgayDanhGia]) VALUES (3, 8, N'thuhien', N'Giao hàng rất nhanh, bọc sản phẩm rất cẩn thận, chất lượng rất tốt', CAST(N'2021-04-12' AS Date))
INSERT [dbo].[DanhGia] ([MaDanhGia], [MaTK], [TenTK], [NoiDung], [NgayDanhGia]) VALUES (4, 10, N'thuha', N'Sản phẩm đa dạng, nhiều chương trình khuyến mại hấp dẫn', CAST(N'2021-04-13' AS Date))
INSERT [dbo].[DanhGia] ([MaDanhGia], [MaTK], [TenTK], [NoiDung], [NgayDanhGia]) VALUES (5, 6, N'ngochuyen', N'Nhân viên tư vấn rất nhiệt tình, website rất tiện ích', CAST(N'2020-05-06' AS Date))
INSERT [dbo].[DanhGia] ([MaDanhGia], [MaTK], [TenTK], [NoiDung], [NgayDanhGia]) VALUES (6, 22, N'baonguyen', N'Phục vụ nhiệt tình, giao hàng nhanh', CAST(N'2021-04-19' AS Date))
SET IDENTITY_INSERT [dbo].[DanhGia] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMucSP] ON 

INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (1, N'Tư duy - Kỹ năng sống')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (2, N'Tản văn - Truyện ngắn')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (3, N'Sách Luyện Thi')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (4, N'Sách Kinh Tế')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (5, N'Văn Học Nước Ngoài')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (6, N'Kiến Thức - Bách Khoa')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (7, N'Sách Thiếu Nhi')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (8, N'Sách Học Ngoại Ngữ')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (9, N'Tủ Sách Doanh Nhân')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (10, N'Tác Phẩm Kinh Điển')
SET IDENTITY_INSERT [dbo].[DanhMucSP] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDH], [MaTK], [NguoiDat], [NguoiNhan], [NgayDatHang], [DiaChiNguoiNhan], [SDTNguoiNhan], [TongTien], [TrangThai]) VALUES (8, 1, N'bảo', N'thắng', CAST(N'2021-04-09' AS Date), N'Hà Nội', N'0362919642', 77000, 3)
INSERT [dbo].[DonHang] ([MaDH], [MaTK], [NguoiDat], [NguoiNhan], [NgayDatHang], [DiaChiNguoiNhan], [SDTNguoiNhan], [TongTien], [TrangThai]) VALUES (9, 22, N'A', N'B', CAST(N'2021-04-16' AS Date), N'tân yên', N'0362301571', 48000, 3)
INSERT [dbo].[DonHang] ([MaDH], [MaTK], [NguoiDat], [NguoiNhan], [NgayDatHang], [DiaChiNguoiNhan], [SDTNguoiNhan], [TongTien], [TrangThai]) VALUES (12, 24, N'bảo', N'vũ', CAST(N'2021-04-22' AS Date), N'Bắc giang', N'0362301571', 46750, 3)
INSERT [dbo].[DonHang] ([MaDH], [MaTK], [NguoiDat], [NguoiNhan], [NgayDatHang], [DiaChiNguoiNhan], [SDTNguoiNhan], [TongTien], [TrangThai]) VALUES (13, 24, N'bảo', N'bình', CAST(N'2021-04-22' AS Date), N'Bắc giang', N'0362301571', 66500, 3)
INSERT [dbo].[DonHang] ([MaDH], [MaTK], [NguoiDat], [NguoiNhan], [NgayDatHang], [DiaChiNguoiNhan], [SDTNguoiNhan], [TongTien], [TrangThai]) VALUES (14, 22, N'bảo', N'thơm', CAST(N'2021-04-22' AS Date), N'tân yên', N'0362301571', 72000, 2)
INSERT [dbo].[DonHang] ([MaDH], [MaTK], [NguoiDat], [NguoiNhan], [NgayDatHang], [DiaChiNguoiNhan], [SDTNguoiNhan], [TongTien], [TrangThai]) VALUES (15, 22, N'bảo', N'thơm', CAST(N'2021-04-25' AS Date), N'tân yên', N'0362301571', 48000, 3)
INSERT [dbo].[DonHang] ([MaDH], [MaTK], [NguoiDat], [NguoiNhan], [NgayDatHang], [DiaChiNguoiNhan], [SDTNguoiNhan], [TongTien], [TrangThai]) VALUES (16, 25, N'Nguyễn Thái Bảo', N'Nguyễn Thái Bảo', CAST(N'2021-05-08' AS Date), N'tân yên, Bắc Giang', N'0362919642', 96000, 1)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] ON 

INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MoTa], [ChietKhau]) VALUES (1, N'Siêu khuyến mãi cùng HÈ HOT!!!', N'Giảm giá sâu toàn bộ sách best-seller, đặc biệt giảm giá 40% tất cả các đơn hàng có tổng giá bìa từ 700K trở lên', 20)
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MoTa], [ChietKhau]) VALUES (2, N'Nắng hè lên deal ngàn món!!!!!!', N'Gian sách đồng giá chỉ từ 3000đ và hàng loạt sách hay được giảm giá 70%', 10)
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MoTa], [ChietKhau]) VALUES (3, N'Nhanh tay mua sách ngay', N'Cơ hội mua sách hot với giá chỉ 29K dành cho những khách hàng đầu tiên đến với gian hàng BookShopOnlline trong các ngày 18,19 và 22/4', 25)
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MoTa], [ChietKhau]) VALUES (4, N'Gom sách rẻ - Ngon nghẻ cả năm', N'Nhã Nam dành tặng rất nhiều phần quà cho bạn đọc với đúng tiêu chí “Cứ mua là có quà”.', 20)
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MoTa], [ChietKhau]) VALUES (5, N'Ghé Hội sách ngay cùng Alphabooks', N'Chương trình quà tặng tại Hội sách:', 10)
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MoTa], [ChietKhau]) VALUES (6, N'Mùa hè đang đến, sách hay cập bến', N'Tặng 40% sách Thái Hà xuất bản và 30% sách light novel trong GIỜ VÀNG từ 16h đến 18h hàng ngày', 5)
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MoTa], [ChietKhau]) VALUES (7, N'Khuyến mại chào mừng ngày 30/4 - 1/5', N'Chào mừng ngày giải phóng miền Nam thống nhất đất nước - Ngày quốc tế lao động', 5)
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MoTa], [ChietKhau]) VALUES (8, N'Fahasa - Super Sale tết thiếu nhi 1/6', N'Sale 20% cho truyện tranh, sách truyện thiếu nhi', 3)
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MoTa], [ChietKhau]) VALUES (9, N'Tết siêu lì xì', N'GIẢM 30% tất cả các đầu sách mới', 15)
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MoTa], [ChietKhau]) VALUES (10, N'Săn sale ngay - Qùa khủng liền tay', N'Combo sách siêu tiết kiệm với mức giảm 30%: Trò chuyện cùng Tony (2 cuốn), Bộ sách tác giả John Green (3 cuốn), Nói sao cho con hiểu (19 cuốn)...', 20)
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MoTa], [ChietKhau]) VALUES (11, N'Không có chương trình khuyến mãi', N'Các sản phẩm giữ nguyên mức giá', 0)
SET IDENTITY_INSERT [dbo].[KhuyenMai] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaXB] ON 

INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [MoTa], [HinhAnh]) VALUES (1, N'Nhà xuất bản Kim Đồng', N'Tên giao dịch: Nhà xuất bản Kim Đồng.Tên giao dịch quốc tế: Kim Dong Publishing House.Ngày thành lập: 17 tháng 6 năm 1957.Cơ quan chủ quản: Trung ương Đoàn TNCS Hồ Chí Minh.Nhà xuất bản Kim Đồng trực thuộc Trung ương Đoàn TNCS Hồ Chí Minh là Nhà xuất bản tổng hợp có chức năng xuất bản sách và văn hóa phẩm phục vụ thiếu nhi và các bậc phụ huynh trong cả nước, quảng bá và giới thiệu văn hóa Việt Nam ra thế giới.Đối tượng phục vụ của Nhà xuất bản là các em từ tuổi nhà trẻ mẫu giáo (1 đến 5 tuổi), nhi đồng (6 đến 9 tuổi), thiếu niên (10 đến 15 tuổi) đến các em tuổi mới lớn (16 đến 18 tuổi) và các bậc phụ huynh', N'kd.jpg')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [MoTa], [HinhAnh]) VALUES (2, N'MCBOOKS', N'MCBooks là thương hiệu chuyên xuất bản và phát hành sách ngoại ngữ hàng đầu Việt Nam, nổi tiếng với các đầu sách ngoại ngữ tiêng Anh, Hàn Quốc, Trung Quốc, Nhật Bản…', N'mc.jpg')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [MoTa], [HinhAnh]) VALUES (3, N'Alphabooks', N'Công ty cổ phần Sách Alpha (Alpha Books Joint-Stock Company – gọi tắt là Alpha Books) do một nhóm trí thức trẻ thành lập ở Hà Nội năm 2005 với niềm tin: Tri thức là Sức mạnh. Thông qua việc giới thiệu các tác phẩm có giá trị của thế giới, Alpha Books mong muốn trở thành nhịp cầu nối nguồn tri thức nhân loại với dân tộc Việt Nam.', N'alpha.jpg')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [MoTa], [HinhAnh]) VALUES (4, N'NXB Trẻ', N'Nhà xuất bản Trẻ là một đơn vị chuyên xuất bản và phát hành sách nhiều thể loại có trụ sở chính tại thành phố Hồ Chí Minh. Từ năm 2006 trở về trước, tên gọi nhà xuất bản Trẻ chỉ đơn vị được thành lập năm 1986; nhưng sau đó đến nay, cái tên này dùng để nói đến Công ty TNHH một thành viên Nhà xuất bản Trẻ, đơn vị xuất bản hợp nhất của nhà xuất bản Măng Non (thành lập năm 1981) và nhà xuất bản Trẻ cũ, có chủ sở hữu là Đoàn Thanh niên Cộng sản Hồ Chí Minh.Đây là một trong những đơn vị sớm nhất ký và tuân thủ Công ước Berne năm 2003', N'tre.jpg')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [MoTa], [HinhAnh]) VALUES (5, N'Nhã Nam', N'Công ty cổ phần Văn hóa và Truyền thông Nhã Nam.Tháng 2 năm 2005, Nhã Nam, tên đầy đủ là Công ty Cổ phần Văn hóa và Truyền thông Nhã Nam đã gia nhập thị trường sách. Tác phẩm "Balzac và cô bé thợ may Trung hoa" của Đới Tư Kiệt là cuốn sách đầu tiên được những người sáng lập Nhã Nam xuất bản cả trước khi công ty ra đời. Ngay lập tức từ cuốn sách đầu tiên, độc giả đã dành sự quan tâm và yêu mến cho một thương hiệu sách mới mẻ mang trong mình khát vọng góp phần tạo lập diện mạo mới cho xuất bản văn học tại Việt Nam.Bước qua thời kỳ sơ khai với những bài học và những kinh nghiệm đầu tiên, Nhã Nam giờ đã sẵn sàng cho một chặng đường phát triển mới. Và chúng tôi muốn hoàn thiện mình trong sự cầu thị và cẩn trọng. Tất cả vì một gia sản sách to lớn, có sức sống dài lâu, có ý nghĩa với nhiều thế hệ bạn đọc.Bởi vì sách là thế giới. ', N'nhanam.png')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [MoTa], [HinhAnh]) VALUES (6, N'Minh Long', N'Có lịch sử gần chục năm gắn bó với làng xuất bản sách, Minh Long Book đã và đang chinh phục được ngày càng đông đảo độc giả ở mọi lứa tuổi trên cả nước.', N'minhlong.jpg')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [MoTa], [HinhAnh]) VALUES (7, N'Oxford University Press', N'Nhà xuất bản Đại học Oxford (Oxford University Press, viết tắt OUP) là một trong những nhà xuất bản đại học lớn nhất trên Thế giới,và lâu đời thứ hai, sau nhà xuất bản Đại học Cambridge. Nó là một đơn vị trực thuộc Đại học Oxford và quản lý bởi nhóm 15 nhà khoa học do Phó Chủ tịch của trường bổ nhiệm với chức danh Ủy viên xuất bản. Thư ký Ủy viên đứng đầu nhóm, người được coi như là giám đốc điều hành của OUP và là đại diện của nhà xuất bản. Đại học Oxford có mô hình hoạt động tương tự như các nhà xuất bản quốc tế khác kể từ thế kỷ 17', N'oxford.jpg')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [MoTa], [HinhAnh]) VALUES (8, N'Văn Lang', N' CTY CP VH VĂN LANG hiện nay là một trong số rất ít các doanh nghiệp tư nhân liên kết in, xuất bản và phát hành các loại ấn phẩm đã tạo dựng cho mình một vị trí vững vàng trên thị trường và là một thương hiệu tin cậy đối với đông đảo bạn đọc trong và ngoài nước, một đối tác có uy tín đối với các nhà xuất bản và các công ty phát hành sách trong mạng lưới quốc doanh. Các ấn phẩm của Văn Lang đã có mặt trên khắp thị trường trong và ngoài nước. CTY CP VH VĂN LANG luôn mở rộng và phát triển theo phương châm "Không ngừng cải tiến để sáng tạo những sản phẩm văn hóa bổ ích, thẩm mỹ, giá thành hấp dẫn".', N'vanlang.png')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [MoTa], [HinhAnh]) VALUES (9, N'Usborne Publishing', N'Usborne là nhà xuất bản sách thiếu nhi chuyên gia hàng đầu của Vương quốc Anh: một doanh nghiệp gia đình độc lập, tạo ra những cuốn sách hấp dẫn, sáng tạo, dễ tiếp cận cho trẻ em ở mọi lứa tuổi.', N'usborne-og-logo.gif')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [MoTa], [HinhAnh]) VALUES (10, N'Nhà xuất bản Thế Giới', N'Nhà xuất bản ngoại ngữ tiếng Việt, được thành lập năm 1957 để giới thiệu độc giả trên toàn thế giới đến Việt Nam thông qua các ấn phẩm bằng tiếng Anh, tiếng Pháp, tiếng Trung, tiếng Tây Ban Nha, tiếng Nga, tiếng Đức, tiếng Nhật và tiếng Esperanto. Bây giờ nó cũng xuất bản sách và sách song ngữ bằng tiếng Việt.', N'tg.png')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [MoTa], [HinhAnh]) VALUES (11, N'Nhà xuất bản Việt Nam', N'Nguyễn Văn Thơm', N'a.jpg')
SET IDENTITY_INSERT [dbo].[NhaXB] OFF
GO
SET IDENTITY_INSERT [dbo].[NhomTK] ON 

INSERT [dbo].[NhomTK] ([MaNhomTK], [TenNhomTK]) VALUES (1, N'Admin')
INSERT [dbo].[NhomTK] ([MaNhomTK], [TenNhomTK]) VALUES (2, N'Customer')
SET IDENTITY_INSERT [dbo].[NhomTK] OFF
GO
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (1, 1, 10, 1, 10, N'Tuổi Trẻ Hoang Dại', CAST(N'2019-07-23' AS Date), N'Một cuốn sách đơn giản của Nguyễn Ngọc Thạch, đặt sự hữu dụng tính tích cực lên hàng đầu. Sách bao gồm nhiều bài viết ngắn, nói lên cách nhìn nhận và suy nghĩ về cuộc sống, gia đình, công việc, cũng như cơn trầm cảm và khủng hoảng nửa đời người của tác giả, một người vừa đi qua tuổi trẻ và vào giai đoạn thứ ba của cuộc đời.', N'tuoitre.jpg', 60000, 45, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (5, 5, 10, 1, 11, N'Không Phải Chưa Đủ Năng Lực , Mà Là Chưa Đủ Kiên Định', CAST(N'2019-09-02' AS Date), N'Bạn định sẽ giảm cân sớm thôi, nhưng không bao giờ ngừng nuông chiều bản thân, ăn uống vô độ?', N'kdinh.jpg', 70000, 27, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (6, 6, 6, 2, 9, N'Mắt Biếc', CAST(N'2020-01-29' AS Date), N'Mắt biếc là một tác phẩm được nhiều người bình chọn là hay nhất của nhà văn Nguyễn Nhật Ánh. Tác phẩm này cũng đã được dịch giả Kato Sakae dịch sang tiếng Nhật để giới thiệu với độc giả Nhật Bản. ', N'mb.png', 150000, 100, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (7, 6, 6, 2, 11, N'Làm Bạn Với Bầu Trời', CAST(N'2020-01-13' AS Date), N'Một câu chuyện giản dị, chứa đầy bất ngờ cho tới trang cuối cùng. Vẻ đẹp lộng lẫy, vì lòng vị tha và tình yêu thương, khiến mắt rưng rưng vì một nỗi mừng vui hân hoan. Cuốn sách như một đốm lửa thắp lên lòng khát khao sống tốt trên đời.', N'frsky.png', 77000, 49, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (9, 7, 2, 2, 3, N'Vì Sao Tớ Không Nên Nói Dối?', CAST(N'2020-02-02' AS Date), N'Sách trong bộ : Để em luôn ngoan ngoãn', N'nd.jpg', 30000, 50, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (10, 8, 1, 2, 6, N'IQ Trong Nghệ Thuật Thuyết Phục ', CAST(N'2020-02-09' AS Date), N'Dù bạn đang bán một sản phẩm, giới thiệu một ý tưởng mới, hay đề xuất mức lương cao hơn, kỹ năng thuyết phục là một phần không thể thiếu. IQ trong nghệ thuật thuyết phục sẽ tiết lộ những kỹ năng thiết yếu giúp bạn:', N'iqnt.png', 110000, 49, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (11, 9, 3, 3, 6, N'Luyện Đề THPTQG 2019 Ngữ Văn – Tích Hợp Chuyên Đề Tổng Ôn Kiến Thức', CAST(N'2019-02-05' AS Date), N'Mega Luyện Đề 2019 - Bộ luyện đề 2K1 nào cũng cần có!', N'nguvan.jpg', 150000, 100, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (12, 9, 3, 3, 10, N'Luyện Đề THPTQG 2019 Toán Học – Tích Hợp Video Bài Giảng 8+', CAST(N'2019-01-04' AS Date), N'Mega Luyện Đề 2019 - Bộ luyện đề 2K1 nào cũng cần có!', N'toanhoc.jpg', 150000, 100, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (13, 10, 4, 3, 2, N'Rèn Luyện Kỹ Năng Làm Bài Đọc Hiểu Môn Tiếng Anh', CAST(N'2018-09-29' AS Date), N'Từ trước đến nay phần bài thi đọc hiểu môn tiếng Anh vẫn bị gắn mác vừa dài vừa khó, chiếm hết thời gian dành cho các phần thi khác bởi:', N'tienganh.png', 120000, 100, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (14, 10, 4, 3, 9, N'Rèn Kỹ Năng Làm Bài Tìm Lỗi Sai Môn Tiếng Anh', CAST(N'2019-09-02' AS Date), N'Rèn Kỹ Năng Làm Bài Tìm Lỗi Sai Môn Tiếng Anh', N'loita.jpg', 110000, 50, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (15, 10, 4, 3, 2, N'Rèn Kỹ Năng Làm Bài Từ Đồng Nghĩa Và Trái Nghĩa', CAST(N'2017-04-19' AS Date), N'Từ năm 2017, theo tinh thần đổi mới, đề thi tiếng Anh trở về dạng trắc nghiệm như những năm trước nhưng với số lượng câu hỏi ít hơn (50 câu hỏi). Nội dung đề thi có sự xuất hiện của không ít các câu hỏi nằm trong chương trình sách giáo khoa, tăng cường độ phân hóa và có các câu hỏi mở. Phần kiểm tra kiến thức cơ bản dùng để xét tốt nghiệp và phần nâng cao để sàng lọc thí sinh trong tuyển sinh vào các trường đại học, cao đẳng. Đề thi đảm bảo cả bốn mức độ: nhận biết, thông hiểu, vận dụng và vận dụng cao.', N'dongnghia.png', 100000, 50, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (16, 11, 9, 4, 1, N'Tiếp thị 4.0 - Dịch Chuyển Từ Truyền Thống Sang Công Nghệ Số', CAST(N'2017-09-02' AS Date), N'“Phần đầu tiên của cuốn sách là kết quả quan sát của chúng tôi về thế giới chúng ta đang sinh sống. Chúng tôi bắt đầu bằng cách bám sát ba thay đổi lớn đang định hình thế giới chúng ta. Chúng tôi đi vào chi tiết hơn để khám phá xem khả năng kết nối đã thay đổi cơ bản cuộc sống của con người như thế nào. Không chỉ dừng lại ở đó, chúng tôi đi sâu hơn vào một số nhóm tiểu văn hóa chính trong kỷ nguyên số - đó là giới trẻ, phụ nữ và công dân mạng, hứa hẹn sẽ là nền tảng cho một thế hệ khách hàng mới.', N'tiepthi.jpg', 90000, 29, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (17, 12, 8, 4, 8, N'Khoảng Cách', CAST(N'2019-09-03' AS Date), N'Trong hầu hết các công ty, chiến lược kinh doanh và ý tưởng sáng tạo thường bị chia cách bởi một vực thẳm rất lớn: một bên là chiến lược gia và chuyên gia maketing, những người thích tư duy não trái - phân tích, logic, cụ thể, số học và ngôn ngữ: bên kia là các nhà thiết kế và những người sáng tạo, thích tư dưy não phải - trực giác, cảm giác này có thể chia cắt hoàn toàn mối quan hệ giữa một công ty với khách hàng.', N'khoangcach.jpg', 70000, 50, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (18, 12, 8, 4, 1, N'Sáng Tạo', CAST(N'2019-12-04' AS Date), N'Sự hỗn loạn chưa từng có của thị trường khiến cho khác biệt hóa đang ngày càng trở thành chiến lược mạnh nhất trong lĩnh vực kinh doanh và là yếu tố quan trọng hàng đầu của công cuộc đổi mới.', N'sangtao.jpg', 65000, 50, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (19, 13, 7, 4, 4, N'Để Không Có Tiền Vẫn Tạo Ra Tiền', CAST(N'2018-11-04' AS Date), N'Người giàu không làm việc vì tiền. Họ bắt tiền làm việc cho họ. Chấp nhận thất bại là bước đầu của thành công? Quyền lực của sự lựa chọn! Những bài học không có trong nhà trường. Hãy bắt đầu từ hôm nay “để không có tiền vẫn tạo ra tiền”…', N'tien.png', 50000, 20, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (20, 13, 7, 4, 11, N'Hướng Dẫn Đầu Tư', CAST(N'2018-11-05' AS Date), N'Nếu bạn muốn tự kiếm một con đường làm giàu cho riêng mình hơn là đi tìm một con đường bằng phẳng, trơn tru để làm giàu...', N'dautu.jpg', 50000, 20, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (21, 14, 9, 5, 6, N'Bố Già', CAST(N'2017-04-11' AS Date), N'Thế giới ngầm được phản ánh trong tiểu thuyết Bố già là sự gặp gỡ giữa một bên là ý chí cương cường và nền tảng gia tộc chặt chẽ theo truyền thống mafia xứ Sicily với một bên là xã hội Mỹ nhập nhằng đen trắng, mảnh đất màu mỡ cho những cơ hội làm ăn bất chính hứa hẹn những món lợi kếch xù. Trong thế giới ấy, hình tượng Bố già được tác giả dày công khắc họa đã trở thành bức chân dung bất hủ trong lòng người đọc. Từ một kẻ nhập cư tay trắng đến ông trùm tột đỉnh quyền uy, Don Vito Corleone là con rắn hổ mang thâm trầm, nguy hiểm khiến kẻ thù phải kiềng nể, e dè, nhưng cũng được bạn bè, thân quyến xem như một đấng toàn năng đầy nghĩa khí. Nhân vật trung tâm ấy đồng thời cũng là hiện thân của một pho triết lí rất “đời” được nhào nặn từ vốn sống của hàng chục năm lăn lộn giữa chốn giang hồ bao phen vào sinh ra tử, vì thế mà có ý kiến cho rằng “Bố già là sự tổng hòa của mọi hiểu biết. Bố già là đáp án cho mọi câu hỏi”.', N'bo.jpeg', 165000, 50, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (22, 14, 9, 5, 3, N'Ông Trùm Cuối Cùng', CAST(N'2016-03-25' AS Date), N'Mario Puzo đã làm nên tên tuổi với tiểu thuyết Bố Già - một tác phẩm về đề tài mafia. Và rồi, sau một phần tư thế kỉ, với Ông trùm cuối cùng, ông lại một lần nữa chiêu đãi độc giả một bữa tiệc thịnh soạn nào những âm mưu, thủ đoạn, bí ẩn đen tối pha trộn cùng một tình yêu không kém phần lãng mạn ngọt ngào.', N'trum.jpg', 105000, 20, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (23, 15, 1, 5, 8, N'Harry Potter Và Hoàng Tử Lai', CAST(N'2017-03-02' AS Date), N'Đây là năm thứ 6 của Harry Potter tại trường Hogwarts. Trong lúc những thế lực hắc ám của Voldemort gieo rắc nỗi kinh hoàng và sợ hãi ở khắp nơi, mọi chuyện càng lúc càng trở nên rõ ràng hơn đối với Harry, rằng cậu sẽ sớm phải đối diện với định mệnh của mình. Nhưng liệu Harry đã sẵn sàng vượt qua những thử thách đang chờ đợi phía trước?', N'lai.png', 120000, 50, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (24, 15, 1, 5, 1, N'Harry Potter Và Bảo Bối Tử Thần', CAST(N'2015-03-12' AS Date), N'Harry đang chờ đợi ở trường Privet Drive. Hội Phượng Hoàng sắp đến hộ tống nó ra đi an toàn, gắng hết sức không để cho Voldemort và bọn tay chân hắn biết được. Nhưng sau đó Harry sẽ làm gì? Làm cách nào nó có thể hoàn thành nhiệm vụ cực kỳ quan trọng và dường như bất khả thi mà giáo sự Dumbledore đã giao lại cho nó?', N'tuthan.png', 110000, 20, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (25, 15, 1, 5, 9, N'Harry Potter Và Tên Tù Nhân Ngục Azkaban', CAST(N'2013-05-02' AS Date), N'Harry Potter may mắn sống sót đến tuổi 13, sau nhiều cuộc tấn công của Chúa tể hắc ám.', N'azkaban.jpg', 135000, 5, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (26, 16, 5, 6, 2, N'Các Hành Tinh', CAST(N'2019-05-03' AS Date), N'Một quyển sách chứa đầy những thông tin, hình ảnh sắc nét như đem chính chúng ta tới những miền hẻo lánh, xa xôi nhất của Hệ Mặt trời. Nó cho chúng ta thấy được quang cảnh chi tiết và đem đến cho chúng ta những thông tin mới mẻ nhất về các đặc điểm địa hình, địa chất, khí quyển, các suy đoán cùng toàn bộ lịch sử phát hiện và thám hiểm những thiên thể xa xôi mà con người đã, hoặc chưa thể với tới.', N'htinh.jpg', 450000, 10, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (27, 16, 5, 6, 4, N'Starfinder For Beginners', CAST(N'2018-07-06' AS Date), N'Sách dành cho các bạn nhỏ đam mê ngắm nghía bầu trời đầy sao, có niềm yêu thích đối với thiên văn và vũ trụ. Sách nhập khẩu từ UK, với nhiều hình ảnh minh họa đẹp mắt, thông tin kiến thức chuẩn và đa dạng', N'star.jpg', 320000, 20, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (28, 17, 10, 6, 10, N'Nghệ Thuật Bài Trí Của Người Nhật', CAST(N'2017-04-29' AS Date), N'Hãy biến ngôi nhà của bạn thành một không gian luôn ngăn nắp và sạch sẽ với phương pháp KonMari kỳ diệu. Chuyên gia sắp xếp và dọn dẹp người Nhật, Marie Kondo, sẽ giúp bạn dọn sạch các căn phòng một lần cho mãi mãi với các phương pháp truyền cảm hứng được thực hiện theo từng bước.', N'nhat.jpg', 90000, 5, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (29, 17, 10, 6, 7, N'Mặc kệ thiên hạ. Sống Như Người Nhật', CAST(N'2016-12-05' AS Date), N'Cuốn sách gối đầu giường cho những người hay lo lắng, sợ hãi và luôn thấy mình kém may mắn', N'ke.jpg', 75000, 10, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (30, 17, 10, 6, 10, N'Lối Sống Tối Giản Của Người Nhật', CAST(N'2016-11-03' AS Date), N'Lối sống tối giản là cách sống cắt giảm vật dụng xuống còn mức tối thiểu. Và cùng với cuộc sống ít đồ đạc, ta có thể để tâm nhiều hơn tới hạnh phúc, đó chính là chủ đề của cuốn sách này.', N'song.jpg', 80000, 5, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (31, 6, 1, 7, 9, N'Có Hai Con Mèo Ngồi Bên Cửa Sổ', CAST(N'2015-11-04' AS Date), N'Nhân vật chính thứ nhất tên là Gấu.', N'cat.jpg', 55000, 9, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (32, 18, 1, 7, 2, N'Dế Mèn Phiêu Lưu Ký', CAST(N'2014-04-09' AS Date), N'Trong hơn nửa thế kỉ kể từ ngày ra mắt bạn đọc lần đầu tiên năm 1941, "Dế Mèn phiêu lưu kí" là một trong những sáng tác tâm đắc nhất của nhà văn Tô Hoài. ', N'men.jpg', 45000, 12, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (33, 18, 1, 7, 10, N'101 Truyện Ngày Xưa', CAST(N'2019-03-03' AS Date), N'Truyện cổ tích không biết có từ đời nào. Tưởng đoán không ngoa là những của báu khảo cổ trên mặt đất này đã ra đời cùng lúc với tiếng nói của con người. Những câu chuyện đã nghìn đời chồng chất, biết ai đầu tiên kể, mãi mãi vẫn chắp nối, chắp nối cho đến thời có chữ ghi lại.', N'101.png', 50000, 10, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (34, 6, 1, 7, 7, N'Ngồi Khóc Trên Cây', CAST(N'2018-05-03' AS Date), N'Mở đầu là kỳ nghỉ hè tại một ngôi làng thơ mộng ven sông với nhân vật là những đứa trẻ mới lớn có vô vàn trò chơi đơn sơ hấp dẫn ghi dấu mãi trong lòng.   Mối tình đầu trong veo của cô bé Rùa và chàng sinh viên quê học ở thành phố có giống tình đầu của bạn thời đi học? Và cái cách họ thương nhau giấu giếm, không dám làm nhau buồn, khát khao hạnh phúc đến nghẹt thở có phải là câu chuyện chính?', N'cry.png', 100000, 20, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (35, 6, 1, 7, 9, N'Bảy Bước Tới Mùa Hè', CAST(N'2018-02-14' AS Date), N'Câu chuyện về một mùa hè ngọt ngào, những trò chơi nghịch ngợm và bâng khuâng tình cảm tuổi mới lớn. Chỉ vậy thôi nhưng chứng tỏ tác giả đúng là nhà kể chuyện hóm hỉnh, khiến đọc cuốn hút từ tựa đến trang cuối cùng, có lẽ chính vì giọng văn giản dị và trong trẻo của Nguyễn Nhật Ánh, và kết thúc thì có hậu đầy thuyết phục. Câu chuyện cho tuổi học trò, đọc xong là thấy ngập lên khao khát quay về một thời thơ bé, với tình thầy trò, bè bạn, tình xóm giềng, họ hàng, qua cách nhìn đời nhẹ nhõm, rộng lượng.', N'baybuoc.jpg', 60000, 10, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (36, 19, 2, 8, 8, N'Luyện Nói Tiếng Anh Như Người Bản Ngữ ', CAST(N'2019-02-02' AS Date), N'Cuốn sách gồm 23 chương trong đó có tới 8 chương cung cấp cho người học những quy tắc và bí quyết giúp các bạn có thể nói tiếng Anh thành thạo. Những quy tắc được trình bày dễ hiểu, dễ ghi nhớ và phù hợp với người Việt chúng ta.', N'banngu.png', 120000, 20, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (37, 19, 2, 8, 2, N'Effortless English – 60h Trị Mất Gốc Tiếng Anh', CAST(N'2019-11-02' AS Date), N'Tiếng Anh bồi biến bạn thành một con robot nói đi nói lại những từ mà không hiểu nổi bản chất. Việc giao tiếp trở nên gượng ép và mất tự nhiên thậm chí còn sai ngữ cảnh.', N'goc.jpg', 150000, 10, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (38, 19, 2, 8, 11, N'Effortless English - Tự Tin Phát Âm Chuẩn', CAST(N'2019-11-04' AS Date), N'Người học tiếng Anh đều hướng tới mục đích có thể giao tiếp được tiếng Anh thành thạo. Nhiều bạn khi nói chuyện khiến nhiều người nước ngoài phải hoang mang vì không hiểu được các bạn đang nói gì. Các bạn phát âm sai, ngữ điệu không đúng, nhiều bạn lại quá tự ti gặp người nước ngoài là “toàn thân tê liệt” không có phản ứng gì vì bệnh “sợ sai”. Xấu hổ và lo lắng sẽ không bao giờ giúp bạn giao tiếp thành thạo tiếng Anh được.', N'phatam.jpg', 150000, 5, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (39, 19, 2, 8, 2, N'Effortless English - Phản Xạ Tiếng Anh Tự Động', CAST(N'2019-12-02' AS Date), N'Các bạn học giao tiếp có gặp những khó khăn sau đây không?', N'phanx.jpg', 150000, 10, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (40, 10, 3, 8, 5, N'Rèn Kỹ Năng Làm Bài Trọng Âm Ngữ Âm Môn Tiếng An', CAST(N'2018-04-06' AS Date), N'Tài liệu cung cấp cách phát âm chuẩn cùng cách đánh đúng trọng âm', N'amngu.png', 100000, 5, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (41, 20, 6, 9, 11, N'Hành Trình Lập Nghiệp- Nhậm Chính Phi', CAST(N'2018-06-15' AS Date), N'Lập nghiệp ở tuổi 43, một tay Nhậm Chính Phi đã đưa Shansai trở thành vương quốc công nghệ. Huawei, bắt đầu từ một doanh nghiệp nhỏ, thiếu thốn nguồn lực, đã phát triển thành một doanh nghiệp đa quốc gia với hơn 170.000 nhân viên.', N'ncp.jpg', 67000, 5, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (42, 20, 6, 9, 7, N'Hành Trình Lập Nghiệp - Jack Ma', CAST(N'2019-05-03' AS Date), N'Jack Ma mang theo lý tưởng “để không còn việc kinh doanh nào là khó khăn”, cùng với sức mạnh trí tuệ lớn lao của bản thân, để xây dựng nên một thương hiệu hàng đầu thế giới – Alibaba.', N'jm.png', 70000, 8, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (43, 20, 6, 9, 11, N'Hành Trình Lập Nghiệp Hứa Gia Ấn', CAST(N'2018-04-11' AS Date), N'Trong quá trình quản lý doanh nghiệp, nhân tài lưu chuyển hợp lý là chuyện bình thường, nhưng nếu xuất hiện tỉ lệ nhân viên bỏ việc khá cao, thì người quản lý doanh nghiệp cần xem trọng và cảnh giác.', N'hga.jpg', 65000, 2, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (44, 21, 7, 9, 9, N'Sói Già Phố Wall (Phần 1)', CAST(N'2017-04-04' AS Date), N'Sói già Phố Wall là cuốn tự truyện của Jordan Belfort - một huyền thoại trong ngành môi giới chứng khoán trên sàn phố Wall. Tác phẩm kể về quá trình phất lên của Jordan nói riêng, cũng như nội tình cuộc đại khủng hoảng tín dụng thứ cấp ở Mỹ nói chung.', N'sgpw1.jpg', 100000, 3, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (45, 21, 7, 9, 8, N'Sói Già Phố Wall (Phần 2', CAST(N'2018-12-07' AS Date), N'Sói già Phố Wall là cuốn tự truyện của Jordan Belfort - một huyền thoại trong ngành môi giới chứng khoán trên sàn phố Wall. Tác phẩm kể về quá trình phất lên của Jordan nói riêng, cũng như nội tình cuộc đại khủng hoảng tín dụng thứ cấp ở Mỹ nói chung.', N'sgpw2.png', 120000, 5, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (46, 15, 1, 10, 4, N'Harry Potter Và Chiếc Cốc Lửa - Tập 4', CAST(N'2017-11-05' AS Date), N'Harry Potter Và Chiếc Cốc Lửa - Tập 4 (Tái Bản 2017)', N'hrpc.png', 150000, 10, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (47, 22, 1, 10, 9, N'Collins Classics: The Return Of Sherlock Holmes', CAST(N'2019-02-19' AS Date), N'Được xuất bản lần đầu vào năm 1903-1904, The Return of Sherlock Holmes là tập truyện mười ba của một trong những thám tử hư cấu vĩ đại nhất từng có.  Ba năm sau cái chết được cho là của Sherlock Holmes và giáo sư của ông, giáo sư Moriarty trong dòng thác Reichenbach, Holmes tái xuất hiện ở Phố Baker và người bạn tốt của ông là Tiến sĩ Watson.  Với một trong những đối thủ lớn nhất của Holmes, Charles Augustus Milverton, cũng như logic sắc sảo thương hiệu, khoa học pháp y, giết người, phép thuật và phép thuật, bộ sưu tập này giữ lại tất cả sự xuất sắc của tác phẩm hay nhất của Arthur Conan Doyle.', N's2.png', 125000, 5, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (48, 22, 1, 10, 2, N'Adventures Of Sherlock Holmes', CAST(N'2019-12-05' AS Date), N'Với phần giới thiệu của Tiến sĩ Julian Wolfreys Phiên bản The Adventures & Memoirs of Sherlock Holmes phiên bản đầu tiên này chứa đựng những trường hợp đầu tiên của thám tử hư cấu vĩ đại nhất mọi thời đại.  Nó bao gồm những cuộc phiêu lưu hoàn chỉnh của Sherlock Holmes, mới được in lại từ văn bản gốc của Tạp chí The Strand.  Nó được minh họa bởi Sidney Paget, người giỏi nhất trong số các họa sĩ minh họa, và người đàn ông mà hình ảnh của chúng ta về Sherlock Holmes và thế giới của anh ta xuất phát.  Đây là phần đầu tiên trong ba tập của The Complete Sherlock Holmes.  Ba cuốn sách trình bày tất cả các câu chuyện Holmes được sắp xếp theo thứ tự thời gian theo thứ tự xuất bản đầu tiên.', N's1.png', 140000, 10, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (49, 22, 1, 10, 10, N'Sherlock Holmes : The Complete Novels and Stories', CAST(N'2018-11-05' AS Date), N'Kể từ lần đầu tiên xuất hiện trong Beeton''s Christmas thường niên năm 1887, Sherlock Holmes của Sir Arthur Conan Doyle đã là một trong những nhân vật hư cấu được yêu thích nhất từng được tạo ra.  Bây giờ, trong hai tập bìa mềm, Bantam trình bày tất cả năm mươi sáu truyện ngắn và bốn tiểu thuyết kể về anh hùng kinh điển của Conan Doyle - một bộ sưu tập thực sự đầy đủ về những cuộc phiêu lưu của Sherlock Holmes trong tội ác!  Tập I bao gồm cuốn tiểu thuyết đầu tiên Một nghiên cứu về Scarlet, đã giới thiệu thiên tài lập dị của Sherlock Holmes với thế giới.  Bí ẩn giết người đầy rắc rối này, với từ khó hiểu Rache được viết bằng máu, lần đầu tiên đưa Holmes cùng với Tiến sĩ John Watson.  Tiếp theo, The Sign of Four trình bày "giải pháp bảy phần trăm" nổi tiếng của Holmes và câu đố kỳ lạ của Mary Morstan trong bí ẩn phòng khóa tinh túy.  Cũng bao gồm các chiến công phát hiện phi thường của Holmes trong các trường hợp nổi tiếng như "Cuộc phiêu lưu của ban nhạc lốm đốm", câu đố khó hiểu của "Nghi lễ Musgrave" và câu chuyện "The Five Orange Pips" khéo léo mang đến sự sống động  một nước Anh thời Victoria về những chiếc xe ngựa kéo, sương mù và nhà nghỉ nổi tiếng ở số 221B Phố Baker, nơi Sherlock Holmes có được danh tiếng không thể chối cãi là thám tử hư cấu vĩ đại nhất mọi thời đại', N's3.png', 110000, 5, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (50, 14, 3, 10, 6, N'Cha Con Giáo Hoàng', CAST(N'2017-12-05' AS Date), N'Cha con Giáo hoàng là một thiên sử thi xuất sắc, pha trộn màu sắc lãng mạn với chất cuồng điên của lòng tham quyền lực, những mưu ma chước quỷ, tội lỗi và trừng phạt… vượt xa khỏi trí tưởng tượng của người thường. Cuốn sách mang người đọc du hành đến một không gian, thời gian hoàn toàn khác, nơi Giáo hội nắm quyền thống trị tối cao, nơi lửa tham vọng ngùn ngụt cháy dưới tấm áo choàng đỏ rực. Đây là câu chuyện về mối quan hệ cha con kì lạ: gắn bó với nhau bởi huyết thống, lòng tận tụy và những ý đồ đen tối; về một gia đình khét tiếng mà công trạng và tội lỗi còn mãi lưu truyền hậu thế: gia đình Borgia.', N'ccgh.png', 120000, 5, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (52, 9, 1, 1, 1, N'999 Lá thư gửi cho chính mình', CAST(N'2021-05-03' AS Date), N'Gửi cho bản thân những lời ngọt ngào và sâu lắng, thử hỏi ta đã sống vì bản thân một lần trọn vẹn chưa', N'sach3.jpg', 100000, 20, 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [MaNXB], [MaDM], [MaKM], [TenSach], [NgayPhatHanh], [MoTa], [HinhAnh], [GiaBan], [SoLuong], [TrangThai]) VALUES (53, 3, 2, 1, 2, N'Đời ngắn đừng ngủ dài', CAST(N'2021-05-02' AS Date), N'Đời ngắn lắm, đừng đắm chìm trong những giấc ngủ', N'sach2.jpg', 200000, 2, 1)
SET IDENTITY_INSERT [dbo].[Sach] OFF
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([MaSlide], [TenSlide], [HinhAnh], [Url], [TitleID], [TTHienThi], [TrangThai]) VALUES (2, N'slide2', N'slide2.png', N'assets\images\slide2.png', N'#htmlcaption2', 2, 1)
INSERT [dbo].[Slide] ([MaSlide], [TenSlide], [HinhAnh], [Url], [TitleID], [TTHienThi], [TrangThai]) VALUES (4, N'slide3', N'slidegirl1.jpg', N'assets\images\slide3.png', N'#htmlcaption3', 3, 1)
INSERT [dbo].[Slide] ([MaSlide], [TenSlide], [HinhAnh], [Url], [TitleID], [TTHienThi], [TrangThai]) VALUES (5, N'slide1', N'about.jpg', N'assets\images\about.jpg', N'#htmlcaption1', 1, 1)
INSERT [dbo].[Slide] ([MaSlide], [TenSlide], [HinhAnh], [Url], [TitleID], [TTHienThi], [TrangThai]) VALUES (7, N'Slide4', N'slidegirl3.jpg', N'assets\images\slidegirl.jpg', N'#htmlcaption1', 0, 1)
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
SET IDENTITY_INSERT [dbo].[TacGia] ON 

INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (1, N'Nguyễn Ngọc Thạch', N'Nguyễn Ngọc Thạch: Bút danh: Jade Vissel. Năm sinh: 2/1/1987 .Cung hoàng đạo: Bảo bình .Nghề Nghiệp: Nhà văn .Tác phẩm nổi bật: Lòng dạ đàn bà, Chuyển giới, trái tim Sư Tử,...', N'nguyen-ngoc-thach.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (2, N'Cảnh Thiên', N'Tác giả Cảnh Thiên (Bút danh khác thường gọi là: Bảo Châu). Tên khai sinh là: Đỗ Văn Xuyền, sinh ngày 10/7/1937. Quê gốc ở xã Đông Kinh, Đông Hưng, Thái Bình. Nơi ở hiện nay của tác giả Khánh Hoài ở thành phố Việt Trì.Tác giả Cảnh Thiên học tiểu học và trung học ở Thái Bình, Hà Nội và Hải Phòng. Trong thời kỳ học Trung học ông đã tham gia các hoạt động bí mật trong phong trào học sinh, sinh viên.Vào năm 1956-1959 ông theo học tại Đại học sư phạm Hà Nội. Ông đã tốt nghiệp Đại học sư phạm và trở thành hội viên Hội Nhà văn Việt Nam vào năm 1981.', N'canh-thien.png')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (3, N'Tống Mặc', N'Tống Mặc tốt nghiệp đại học Quang Hoa ở Bắc Kinh, ngành quản lý.Đại diện cho tỉnh Hắc Long Giang thi APEC lần thứ hai tuần lễ khoa học kỹ thuật thanh niên thế giới do Bộ giáo dục tổ chức.Đại sứ sang Thái Lan trong hoạt động “Thái Lan trong mắt tôi”.Trạng nguyên khoa văn năm 2006 của thành phố Cáp Nhĩ Tân khi thi vào ngành quản lý trường đại học Quang Hoa của Bắc Kinh.Được Chủ biên Triệu Trường Thiên khen ngợi là thế hệ nhà văn mới, là tác giả xuất sắc và phổ biến được hoanh nghênh nhất trên mạng Tấn Giang, được Douban cho điểm cao nhất trong mục tác giả viết về văn học tuổi trẻ.', N'tong-mac.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (4, N'Koga Fumitake', N'Fumitake Koga là một nhà văn và tác giả chuyên nghiệp từng đoạt giải thưởng.  Ông đã phát hành nhiều tác phẩm bán chạy nhất liên quan đến kinh doanh và phi hư cấu nói chung.  Anh gặp phải tâm lý học Adlerian ở tuổi đôi mươi và bị ảnh hưởng sâu sắc bởi những ý tưởng thách thức trí tuệ thông thường của nó.  Sau đó, Koga đã thực hiện nhiều chuyến viếng thăm Ichiro Kishimi ở Kyoto, lượm lặt từ anh ta bản chất của tâm lý học Adlerian, và ghi chép lại phương pháp "định dạng đối thoại" cổ điển của triết học Hy Lạp được sử dụng trong cuốn sách này.', N'koga.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (5, N'Hàn Xuân Trạch', N'Hàn Xuân Trạch là nữ tác giả thế hệ 7x, đồng thời là nhà tư vấn tâm lý. Cô có biệt tài nhìn nhận cuộc sống từ góc nhìn của phái nữ và các tác phẩm của cô đều ẩn chứa sự dịu dàng trong đó. Hiện tại, cô đã xuất bản nhiều cuốn sách được bạn đọc yêu mến. ', N'han-xuan-trach.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (6, N'Nguyễn Nhật Ánh', N'Nguyễn Nhật Ánh sinh ngày 7 tháng 5 năm 1955 tại tỉnh Quảng Nam.  Ông được coi là một trong những nhà văn thành công nhất viết sách cho tuổi thơ, tuồi mới lớn với hơn 100 tác phẩm các thể loại.', N'nguyen-nhat-anh.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (7, N'Trang Rose', N'Từng quan niệm nhà văn là những người mơ mộng, thiếu thực tế, đi ngược xã hội và nghèo, Trang Rose chưa bao giờ nghĩ mình sẽ trở thành nhà văn. Nhưng cái duyên, cái nghiệp vẫn đeo bám chị. Thời gian ở Mỹ cũng là lúc chị cầm bút viết. Chị nhận ra công việc viết lách phù hợp với con người mình và nó làm chị thấy hạnh phúc. Như nhà văn từng chia sẻ: "Có thể trời sinh ra mình là như vậy thì mình cứ làm như vậy, mình không còn cưỡng lại nữa".', N'trang-rose.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (8, N'Kurt W. Mortensen', N'Kurt W. Mortensen là người sáng lập Học viện Thuyết phục (công ty chuyên nghiên cứu về kỹ năng đàm phán, lãnh đạo và kinh doanh). Ông là một trong những chuyên gia hàng đầu thế giới về khả năng thuyết phục, động cơ thúc đẩy và gây ảnh hưởng. Ông cũng là đồng tác giả của cuốn sách mang tính đột phá Sức mạnh thuyết phục: 12 quy tắc vàng của nghệ thuật gây ảnh hưởng (Maximum Influence: The 12 Laws of', N'Kurt-W-Mortensen.png')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (9, N'Đoàn Mạnh Linh', N'Đoàn Mạnh Linh với bút danh Sky đã trở nên rất quen thuộc với độc giả. Anh sinh ngày 3/3/1987, từng là du học sinh tại Singapore và là cây bút trẻ được nhiều người yêu mến. Anh được mọi người gọi là "Hoàng tử truyện ngắn", với những truyện ngắn xoay quanh đề tài về tuổi học trò; dịu dàng, nhẹ nhàng cũng đầy trăn trở. Đôi khi những vấn đề mà anh viết tưởng chừng quen thuộc, giản dị nhưng gửi gắm biết bao ý nghĩa, làm cho ta giật mình vì dường như đã bị lãng quên', N'doan-manh-linh.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (10, N'Vũ Thị Mai Phương', N'Tác giả Mai Phương tốt nghiệp cử nhân kinh tế đối ngoại , chuyên ngành kinh doanh xuất nhập khẩu trường Đại học Ngoại thương Hà Nội. Sau khi ra trường, cô không chọn đi theo chuyên ngành mình đã được đào tạo, mà tự gây dựng sự nghiệp riêng của mình bằng việc gắn bó với học trò và bục giảng.', N'mai-phuong.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (11, N'Nguyễn Khoa Hồng Thành', N'Nhà văn Nguyễn Khoa Hồng Thành,sinh ngày 11/08/1987. Anh xuất thân là học sinh chuyên văn của trường Lê Hồng Phong (Tp Hồ Chí Minh). Anh tiếp tục rèn luyện ngòi bút trong những năm tháng là sinh viên của trường Khoa học xã hội và nhân văn. Có thể nói những tác phẩm của anh để lại những dấu ấn khó phai trong lòng người đọc với những tác phẩm như: Ngày trôi về phía cũ, Đường hai ngả – Người thương thành lạ, Buồn làm sao buông, Đi đâu cũng nhớ Sài Gòn và em, Thương mấy cũng là người dưng,...Hiện nay, anh đảm khá nhiều công việc vừa là phóng viên, vừa công tác trong lĩnh vực PR - Marketing nhưng anh không từ bỏ đam mê viết lách của mình', N'nguyen-khoa-hong-thanh.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (12, N'Marty Neumeier', N'Marty Neumeier là chủ tịch của hãng Neutron LLC, San Francisco, chuyên về hợp tác thương hiệu. Trước đó, ông là biên tập viên và nhà sản xuất của Critique, tạp chí chuyên về ý tưởng thiết kế đồ hoạ, và nhanh chóng trở thành diễn đàn hàng đầu trong việc nâng cao hiệu quả thiết kế. Quá trình biên tập cho Critique, Neumeier đã tham gia các buổi trò chuyện về kết nối khoảng cách giữa chiến lược kinh doanh và thiết kế thương hiệu, sự phản hồi từ khách hàng – là nhân tố trực tiếp dẫn đến việc thành lập hãng Neutron và ý tưởng viết bộ sách gồm ba cuốn: The Brand Gap (Khoảng cách), Zag (Đảo chiều) và The Designful Company (Sáng tạo).', N'Marty_Neumeier.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (13, N'Robert T. Kiyosaki', N'Robert Kiyosaki (sinh ngày 8 tháng 4 năm 1947) là một nhà đầu tư, doanh nhân đồng thời là một tác giả. Kiyosaki nổi tiếng bởi cuốn sách Rich Dad, Poor Dad (Cha Giàu, Cha Nghèo). Ông ta đã viết 18 cuốn sách, bán tổng cộng 26 triệu bản [1]. Ba trong số các cuốn sách của ông là Rich Dad Poor Dad, Rich Dad''s CASHFLOW Quadrant và Rich Dad''s Guide to Investing đã từng được xếp vào số 10 cuốn sách bán chạy nhất một lúc trên The Wall Street Journal, USA Today và New York Times. Cuốn Rich Kid Smart Kid xuất bản năm 2001, với mục đích giúp cha mẹ dạy con cái quan niệm về tài chính của họ. Ông ta đã sáng chế ra trò chơi "Cashflow" dành cho người lớn và trẻ em cùng với tập băng "Rich Dad", xuất bản tin tức thường kỳ hàng tháng và tham gia các bài phát biểu trên khắp thế giới, đồng thời viết một chuyên mục hàng tuần trên trang Yahoo Tài chính. ', N'robert.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (14, N'Mario Puzo', N'Mario Gianluigi Puzo (15 tháng mười năm 1920 - ngày 02 tháng 7 năm 1999) là một tác giả người Mỹ, biên kịch và nhà báo. Ông được biết đến với những tiểu thuyết tội phạm của mình về Mafia, đáng chú ý nhất The Godfather (1969), mà sau này ông đồng chuyển thể thành một câu chuyện phim ba phần của đạo diễn Francis Ford Coppola. Ông đã nhận được Giải Oscar cho Kịch bản chuyển thể xuất sắc nhất cho bộ phim đầu tiên trong năm 1972 và Phần II vào năm 1974. Puzo cũng đã viết kịch bản cho bộ phim năm 1978 Superman. tiểu thuyết cuối cùng của ông, The Family, đã được phát hành sau khi ông mất vào năm 2001.', N'mario.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (15, N'J.K.Rowling', N'J.K. Rowling là tác giả của bộ truyện viết cho thiếu nhi Harry Potter gây chấn động và tạo nên cơn sốt trên toàn thế giới. Bộ truyện gồm 7 tập với tổng độ dày lên tới 4.100 trang đã bán được 450 triệu bản trên toàn thế giới, dịch ra 65 thứ tiếng và chuyển thể thành 8 bộ phim bom tấn.  Câu chuyện cuộc đời của J.K. Rowling là câu chuyện của một người phụ nữ với nghị lực phi thường đã đứng trên nỗi đau và thất bại để theo đuổi đam mê. Với Rowling, thất bại là một cơ hội để bắt đầu lại và thành công. "Có thể bạn không thất bại như tôi, nhưng trong cuộc sống, thất bại là không thể tránh khỏi. Bạn không thể sống mà không thất bại chuyện gì đó, trừ khi bạn sống quá cẩn trọng đến nỗi như là không sống, trong trường hợp này, bạn thất bại hoàn toàn. Thất bại dạy tôi những thứ mà không trường lớp nào có thể dạy. Tôi khám phá ra rằng mình có một ý chí mạnh mẽ, kỷ luật hơn mình tưởng. Hiểu được điều đó là một món quà thực sự, dù phải đau đớn để nhận được, thì nó vẫn có giá trị hơn mọi thành tích". Nữ văn sĩ tỷ phú J.K. Rowling đã phát biểu như vậy khi bà được mời đến buổi lễ tốt nghiệp của sinh viên đại học Havard năm 2008. J.K. Rowling được mệnh danh là "nhà văn Anh còn sống vĩ đại nhất". ', N'rowling.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (16, N'Maggie Aderin-Pocock', N'Margaret Ebunoluwa Aderin-Pocock MBE là một nhà khoa học không gian và nhà giáo dục khoa học người Anh. Bà là một Trợ lý Nghiên cứu danh dự tại Khoa Vật lý và Thiên văn học của Đại học Luân Đôn. Kể từ tháng 2 năm 2014, bà đã đồng dẫn chương trình truyền hình thiên văn dài kỳ The Sky at Night cùng với Chris Lintott.', N'meggie.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (17, N'Marie Kondo', N'Marie Kondo là nữ tác giả viết sách và nhà tư vấn sắp xếp nội thất người Nhật Bản. Kondo đã viết 4 cuốn sách về các cách xếp đồ đạc, bán được hàng triệu bản và được ra các thứ tiếng như Hàn Quốc, Trung Quốc, Tây Ban Nha, Pháp, Đức, Anh', N'marie.png')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (18, N'Tô Hoài', N'Tô Hoài là một trong những tác gia lớn nhất của thế kỉ 20. Ông thuộc thế hệ vàng thế hệ sinh năm 20, từ năm 1920 ngược về trước. Đó là thế hệ vàng của văn chương hiện đại, làm nên mùa gặt ngoạn mục nhất của văn học thế kỉ 20 - làm nên mùa màng 1930-1945, cùng với Nguyễn Công Hoan, Vũ Trọng Phụng, Ngô Tất Tố, Xuân Diệu, Huy Cận. Ông cũng là người hiếm hoi nhất còn lại của thế hệ ấy, cùng với nhà thơ Nguyễn Xuân Sanh. ', N'tohoai.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (19, N' A.J.Hoge', N'Tiến sĩ A.J Hoge là giảng viên ngôn ngữ đã từng giảng dạy tại nhiều nơi trên toàn thế giới, thầy nắm giữ tấm bằng Master of TESOL. Thầy cũng là người phát minh và phát triển thành công hệ thống học Effortless English trên toàn thế giới, đồng thời là giám đốc – CEO của Effortless English Club.', N'hoge.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (20, N'Trang Thế Hy', N'Trang Thế Hy (1924-2015) tên thật là Võ Trọng Cảnh là tác giả sáng tác văn và thơ. Ngoài bút danh Trang Thế Hy ông còn có những bút danh khác như Phạm Võ, Văn Phụng Mỹ, Triều Phong, Vũ Ái, Văn Minh Phẩm... ', N'trang-the-hy.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (21, N'Jordan Belford', N'Jordan Ross Belfort là một nhà diễn thuyết và cựu môi giới chứng khoán Mỹ. Ông bị kết án về tội gian lận liên quan đến thao túng thị trường chứng khoán và điều hành một trung tâm tư vấn như một phần của một loại lừa đảo cổ phiếu. Ông đã trải qua 22 tháng trong nhà giam Liên bang trước khi được tha bổng trước thời hạn', N'jordan-belfort.jpg')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (22, N'Arthur Conan Doyle', N'Arthur Conan Doyle (1859-1930) sinh ra tại Edinburgh, thủ đô của Scotland, nghề chính của ông là bác sĩ. Vào năm 1886, bác sĩ Conan đã viết câu chuyện trinh thám đầu tiên có tên là “A Study In Scarlet” (tạm dịch: Cuộc điều tra màu đỏ). Tác phẩm này đánh dấu sự ra đời của nhân vật nổi tiếng nhất trong dòng văn học trinh thám: Sherlock Holmes.Kể từ đó trở đi, ông đã sáng tác ra rất nhiều những câu truyện trinh thám. Ngoài ra, ông còn viết rất nhiều tiểu thuyết, kịch bản, thơ ca thuộc nhiều đề tài khác nhau.', N'conan-doyle.png')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [MoTa], [HinhAnh]) VALUES (23, N'Gosho Aoyama', N'Aoyama Gōshō, tên khai sinh là Aoyama Yoshimasa, sinh ngày 21 tháng 6 năm 1963 tại Hokuei tỉnh Tottori, Nhật Bản. Ông là một nhà sáng tác truyện tranh, người được biết đến với bộ truyện tranh Thám tử lừng danh Conan', N'Gosho_Aoyama.jpg')
SET IDENTITY_INSERT [dbo].[TacGia] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTK], [MaNhomTK], [TenTK], [MatKhau], [HoTen], [DiaChi], [NgaySinh], [Email], [SDT], [AnhDaiDien], [NgayTao], [MaDanhGia]) VALUES (1, 1, N'Administrator', N'123456', N'Nguyễn Thái Bảo', N'Bắc Giang', CAST(N'1999-08-20' AS Date), N'baont@gmail.com', N'0362301571', N'a.jpg', CAST(N'2021-03-11' AS Date), 1)
INSERT [dbo].[TaiKhoan] ([MaTK], [MaNhomTK], [TenTK], [MatKhau], [HoTen], [DiaChi], [NgaySinh], [Email], [SDT], [AnhDaiDien], [NgayTao], [MaDanhGia]) VALUES (22, 2, N'baont', N'123456', N'Thái Bảo', N'Tân Yên', CAST(N'1999-08-20' AS Date), N'abc@gmail.com', N'0333444555', N'a.jpg', CAST(N'2021-04-12' AS Date), NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [MaNhomTK], [TenTK], [MatKhau], [HoTen], [DiaChi], [NgaySinh], [Email], [SDT], [AnhDaiDien], [NgayTao], [MaDanhGia]) VALUES (24, 2, N'baont1', N'123456', N'Bảo', N'Hà Nội', CAST(N'1999-06-16' AS Date), N'abc123@gmail.com', N'0963860433', N'gray-tabby-cat-lying-on-white-string-lights-923360.jpg', CAST(N'2021-04-18' AS Date), NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [MaNhomTK], [TenTK], [MatKhau], [HoTen], [DiaChi], [NgaySinh], [Email], [SDT], [AnhDaiDien], [NgayTao], [MaDanhGia]) VALUES (25, 2, N'customer', N'12345678', N'Guest', N'Bắc Giang', CAST(N'1999-08-20' AS Date), N'guest@gmail.com', N'0362301571', N'adminAvt.jpg', CAST(N'0001-01-01' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [NgayTao]) VALUES (2, N'''Lời hứa về một cây bút chì'' - cuốn sách truyền cảm hứng sống', N'Lời hứa về một cây bút chì (The Promise of a Pencil) là tác phẩm của Adam Braun - một doanh nhân, nhà hoạt động từ thiện và tác giả 32 tuổi người Mỹ. Anh là người sáng lập quỹ từ thiện Pencils of Promise - tổ chức phi lợi nhuận xây dựng trường học và mang đến các tiện ích giáo dục cho trẻ em ở những nước đang phát triển.Cuốn sách kể về hành trình giác ngộ và theo đuổi mục đích sống ý nghĩa của Adam Braun. Anh biết kiếm tiền từ năm 12 tuổi, có tư duy kinh doanh tài chính nổi trội, 16 tuổi đã thực tập tại một quỹ đầu tư, tốt nghiệp trường đại học danh giá, làm việc trong một công ty danh tiếng với nhiều cơ hội thăng tiến... Tuy nhiên suốt quá trình trưởng thành, đặc biệt từ năm 22 đến 25 tuổi, Adam Braun luôn trằn trọc vì không tìm được ý nghĩa cuộc sống.Adam đã đi du lịch bụi qua nhiều quốc gia kém phát triển trên thế giới và bị ấn tượng mạnh với một cậu bé ăn xin bên sông Hằng. Mơ ước lớn nhất của cậu bé là có được một chiếc bút chì để tập viết. Adam nhận ra tầm quan trọng của giáo dục nên khi về Mỹ, anh quyết tâm từ bỏ con đường thăng tiến đang thuận lợi, bắt đầu hành trình mới - lập quỹ thiện nguyện Pencils of Promise.', CAST(N'2021-04-08' AS Date))
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [NgayTao]) VALUES (3, N'Bộ sách đồng hành cùng phim hoạt hình ''Đi tìm Dory''', N'Bộ phim hoạt hình Finding Dory vừa ra rạp vào ngày 17/6 tập trung vào nhân vật cô cá xanh hay quên Dory và chuyến hành trình tìm về quê hương của cô.Nhân dịp này, Nhà xuất bản Kim Đồng giới thiệu đến bạn đọc nhỏ tuổi bộ ấn phẩm khám phá thế giới của cô cá Dory và chú cá Nemo gồm các truyện tranh màu và màu nước.Phiên bản tranh truyện màu của hai phim hoạt hình Đi tìm Nemo và Đi tìm Dory được thể hiện với ngôn ngữ cô đọng, súc tích, giàu hình ảnh. Với hình ảnh sắc nét được lấy bản quyền từ phim hoạt hình, bộ sách tái hiện chân thực câu chuyện về hành trình của cha con Nemo và cô cá Dory.Qua trang sách, độc giả thiếu nhi có thể cùng Nemo vui chơi ở Rạn San Hô, cùng gặp gỡ những người bạn mới mà cô Dory sẽ làm quen trên hành trình đến California tìm lại bố mẹ như: Bạch Tuộc Hank, cá nhám Destiny, cá voi trắng Bailey, sư tử biển Rudder và Fluke... hoặc tìm hiểu về những địa điểm thú vị dưới đáy biển - nơi Dory và hai bố con nhà Nemo đã có những chuyến phiêu lưu kỳ thú.Đi tìm Dory là phần hai của bộ phim hoạt hình Đi tìm Nemo từng đoạt giải Oscar. Dù không phải nhân vật chính trong Đi tìm Nemo, cô cá Dory đã để lại ấn tượng sâu sắc trong lòng khán giả về một nhân vật bí ẩn và kỳ lạ. Những pha chợt nhớ chợt quên hài hước của Dory đã khiến Dory và Marlin - cha của Nemo - nhiều phen khốn đốn trong hành trình tìm lại Nemo yêu dấu', CAST(N'2021-04-07' AS Date))
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [NgayTao]) VALUES (4, N'Truyện kinh điển Nga thay ''áo mới'' ở Việt Nam', N'Bộ sách của tác giả người Nga gồm 3 cuốn: Thuyền trưởng Đơn Vị, Người mặt nạ đen ở nước An-giep, Ba ngày ở nước tí hon. Loạt truyện này được viết cho thiếu nhi ở độ tuổi cấp 2, nổi tiếng trong thập niên 1970-1980. Bộ sách tiểu thuyết Toán học được viết hấp dẫn, lý thú, giúp các em học sinh tăng cường tư duy môn Toán, đồng thời có những phút giây thư giãn thú vị bên những nhân vật đáng yêu của thế giới các con số.Thuyền trường Đơn Vị kể về cuộc phiêu lưu kỳ thú của Số Không trên chiếc tàu của Thuyền trưởng Đơn Vị đi vào thế giới kỳ diệu. Thế giới ấy được dựng nên bằng những con số, phép tính. Trong truyện, những khái niệm của toán học được trình bày bằng ngôn ngữ mềm mại của văn chương như biển Tiên Đề, đảo Tam giác Vuông, đại dương Số Học... Trong hành trình phiêu lưu mạo hiểm ấy, thuyền trưởng Đơn Vị sẽ đưa độc giả nhỏ hình thành những tư duy Toán học bổ ích, khám phá tầm quan trọng của môn Toán trong đời sống.Ba ngày ở nước tí hon là một chuyến du lịch của ba học sinh vào xứ sở của những con số. Ở đất nước Số học này, ba nhân vật Ta-nhi-a, Xê-va, Ô-lêch sẽ làm quen với những con số, chữ số La Mã, số Pi... Nhóm bạn sẽ khám phá vô vàn địa điểm thú vị trong vương quốc này như Phố 9, Ngõ Phân số, Quảng trường Số, Ngõ số thập phân...', CAST(N'2021-04-01' AS Date))
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [NgayTao]) VALUES (5, N'Phát hành bản tiếng Việt tiểu thuyết trinh thám của Marc Levy', N'Trong nguyên tác, tác phẩm có tên Si c''était à refaire. Cuốn sách được ra mắt ngày 29/5/2012 với phiên bản giấy của nhà xuất bản Robert Laffont và phiên bản điện tử của Versilio. Bản tiếng Việt của tác phẩm được Thu Phương dịch, nhà xuất bản Văn học ấn hành cuối tháng 11.Nếu như được làm lại là tiểu thuyết thứ 13 của Marc Levy, nó chứng tỏ sức viết dồi dào của nhà văn Pháp gốc Do Thái này. Người đọc từng quen với phong cách nhẹ nhàng, lãng mạn và phong cho Levy là "nhà văn của tình yêu", thì đến tác phẩm này sẽ bất ngờ với sự chuyển mình ngoạn mục trong ngòi bút trinh thám ly kỳ, cuốn hút của ông.Mặc dù Marc Levy bị giới phê bình văn học Pháp chỉ trích là viết nên những tác phẩm mang tính thương mại, ông vẫn là tác giả có nhiều độc giả nhất ở Pháp và trên nhiều quốc gia. Tính đến 5/2012, Levy viết 13 tiểu thuyết, thì tới nay, cả 13 tác phẩm của ông đã được chuyển ngữ, xuất bản tại Việt Nam.', CAST(N'2021-04-12' AS Date))
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [NgayTao]) VALUES (6, N'Nhà văn Lê Anh Hoài gỡ rối tơ lòng', N'Trong ba năm nay, chuyên mục Tơ lòng trên báo Tiền Phong Chủ nhật được Mr Búp Bê phụ trách. Mr Búp Bê chính là bút danh của Lê Anh Hoài - một nhà văn, nhà báo và nghệ sĩ trình diễn.Nếu như anh Chánh Văn của báo Hoa Học Trò chuyên giải đáp thắc mắc về cách đối nhân xử thế của độc giả tuổi mới lớn, thì Mr Búp Bê lại đóng vai người giải đáp những vướng mắc trong cuộc sống cho hàng nghìn độc giả đủ mọi trang lứa. Với phong cách trả lời dí dỏm, có phần tưng tửng nhưng chí lý, chí tình, Mr Búp Bê đã được nhiều độc giả yêu thích và tin cậy tìm đến nhờ gỡ rối.ê Anh Hoài làm việc tại báo Tiền Phong, anh còn là một nhà văn với các tác phẩm được xuất bản như Những giấc mơ bên đường (thơ), Chuyện tình mùa tạp kỹ (tiểu thuyết), Tẩy sạch vết yêu (Tập truyện ngắn), Không lạc loài (tự truyện của một người đồng tính do Lê Anh Hoài chấp bút), Mảnh mảnh mảnh (tập thơ đa ngữ). Ngoài viết văn làm báo, anh còn là một nghệ sĩ thực hành nghệ thuật đương đại, tham gia các chương trình trình diễn, sắp đặt.Cuốn sách Rắc rối tình ơi hiện nằm trong nhà in, phát hành vào đầu tháng 12.', CAST(N'2021-04-04' AS Date))
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [NgayTao]) VALUES (7, N'Tác giả Nick D giao lưu với độc giả Hà Nội', N'Nick D tên thật là Đỗ Quốc Đạt, được biết đến với vai trò cựu MC của chương trình Tôi 20, tham gia diễn xuất trong phim truyền hình Những phóng viên vui nhộn và hiện là giám đốc sáng tạo của MTV. Đỗ Quốc Đạt bén duyên với nghiệp viết bằng những bài blog giản dị, chân thực mà giàu trải nghiệm.Cuốn sách được xuất bản lần đầu với tên Tôi 20+. Trong lần tái bản này, sách đổi tên thành Tôi 20++. Sách là tuyển tập những bài viết về cuộc sống, tình yêu và về một chân trời mà Nick từng đi qua - London. Một người trẻ đa tài, sống sâu và đi nhiều, bằng những trải nghiệm đó, Nick viết Tôi 20++ như cuốn cẩm nang cho những ai đã, đang và sẽ bước qua những ngày tháng tuổi trẻ rực rỡ này. Trong buổi giao lưu tại Hà Nội, Nick tâm sự: "Tôi 20++ là lời chia tay trọn vẹn với tuổi 20 để bước sang một ngưỡng mới. Dù có nhìn nó dưới lăng kính nào, ở bất cứ góc độ nào, tôi cũng chỉ thấy tuổi 20 ++ đúng là tuyệt đẹp".Xuất hiện bên cạnh Nick D trong buổi giao lưu là nữ họa sĩ rất được yêu thích Lê Mai Anh. Mai Anh chia sẻ: "Tôi làm đi làm lại bìa sách của Tôi 20++ vì biết Nick là người rất kỹ tính và cầu toàn. Ban đầu tôi có nhận được ảnh của Nick do bên công ty sách Skybooks gửi sang nhưng để yên tâm tôi phải xem lại hầu như toàn bộ album ảnh của anh. Hôm nay cầm cuốn sách trên tay, nhận được lời khen về bìa, tôi thấy rất hạnh phúc".', CAST(N'2021-04-05' AS Date))
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [NgayTao]) VALUES (8, N'Chó dẫn đường phiêu lưu ký'' phát hành tại Việt Nam', N'Bộ sách Chó dẫn đường phiêu lưu ký với tập 1 mang tên Chuyện cảm động không đến từ con người và tập 2 mang tên Người bạn tri kỷ vượt lên rào cản ngôn ngữ được dịch từ bộ sách A rainbow for a friend của tác giả Mikhail Samarsky (năm nay 17 tuổi).Tác phẩm là những mảnh ghép cuộc sống được nhìn qua đôi mắt của một... chú chó. Với thủ pháp đặc biệt này, Mikhail Samarsky đã để cho chú chó dẫn đường Trison thể hiện cái nhìn và suy nghĩ của mình.Qua đó, xã hội loài người hiện lên một cách sống động, có những nhân vật tuyệt vời như ông lão Ivan Savelievich nhưng cũng có những nhân vật gây nhiều rắc rối như bà cụ nghiện rượu Polina Foteevna Ivankhnik...Đặc biệt, khi trở thành chó dẫn đường cho cậu bé 13 tuổi Sashka bị mù vĩnh viễn sau một tai nạn, Trison đã đưa độc giả khám phá thế giới của những người khiếm thị. Ở đó có sự cô độc, sợ hãi và tuyệt vọng nhưng cũng có những tình bạn chân thành giúp họ lấy lại niềm tin và sự lạc quan.Sau khi phát hành tại Nga, bộ sách này nhanh chóng tạo được tiếng vang và được ấn hành bằng chữ nổi với các ngôn ngữ như Đức, Czech, Bulgaria, Thụy Điển và đang được dựng thành phim truyện nhựa.Tác phẩm cũng đã được phát hành ở Mỹ. Ở Việt Nam, quyển sách do dịch giả Phạm Bá Thủy chuyển ngữ.', CAST(N'2021-04-01' AS Date))
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [NgayTao]) VALUES (9, N'Cuộc tình lãng mạn trong ''Hẹn hò với châu Âu''', N'Nối tiếp trào lưu viết sách du ký, tác giả Bùi Mai Hương cho ra đời tác phẩm Hẹn hò với châu Âu. Cuốn sách không thiên về kể lại những chuyến đi mà là hành trình du ký của cảm xúc. Với Hẹn hò với châu Âu, bạn có cơ hội ngắm một châu Âu đẹp và có hồn qua từng con chữ.Nhân vật chính là một cô gái Hà Nội đa tình, giàu chất nghệ sĩ. Coi châu Âu như một người tình, cuốn sách ghi lại những cuộc hẹn hò nhẹ nhàng, lãng đãng. Câu hát trong bài ca quen thuộc của người dân xứ Alps - "Tôi chạy lên đồi khi trái tim tôi cảm thấy cô đơn" (Một bài ca từ dãy Alps) - khởi nguồn cho những nhớ thương trong cuộc tình lãng mạn với châu Âu.Độc giả sẽ được cùng tác giả thăm thú đất nước của những vị thần Hy Lạp, đến vùng địa Trung Hải, qua Venice, thăm nhà của Juliet - nơi bắt đầu cuộc tình nổi tiếng Romeo và Juliet, tham gia lễ hội pho mát ở Hà Lan, trải nghiệm đêm trắng ở Phần Lan... Châu Âu qua sách Bùi Mai Hương không có gì khác, vẫn những hình ảnh đã quen thuộc với nhiều du khách, nhưng Hẹn hò với châu Âu lại mang nặng cảm xúc của những người yêu nhau, muốn gói trọn người tình vào vali mang theo mỗi cuộc hành trình.', CAST(N'2021-04-02' AS Date))
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [NgayTao]) VALUES (10, N'Nhà văn Dili viết sách về khái niệm PR', N'Dili bên cạnh nghiệp viết, còn là người làm PR nhiều kinh nghiệm. Chị có hơn 10 năm hoạt động trong lĩnh vực Quan hệ công chúng với vai trò người tư vấn chiến lược và tổ chức thực hiện PR, cộng tác giảng dạy PR tại một số trường đại học.Năm 2007, chị hoàn thành luận văn thạc sĩ với đề tài "Nghiên cứu các biện pháp Marketing và Quan hệ công chúng" để củng cố và phát triển thương hiệu giáo dục. Năm 2011, chị cũng đã xuất bản cuốn Kỹ năng viết trong Quan hệ công chúng.Tôi PR cho PR là cuốn sách được Dili ấp ủ từ lâu, và nếu không được viết ra thì chị sẽ "phát điên lên" như lời nhà văn Robertson Davies. Nhà văn Davies người Canada từng nói: "Sẽ là vô ích khi cố gắng viết một cuốn sách, trừ phi bạn biết chắc rằng hoặc là bạn phải viết nó hoặc bạn sẽ phát điên lên, thậm chí là sẽ chết".Khi viết cuốn sách này, tác giả hạn chế tối đa ngôn ngữ học thuật để độc giả dễ dàng lĩnh hội kiến thức hơn. Dili nói "Những cuốn sách PR học thuật đã xuất hiện quá nhiều trên thị trường và được viết bởi những chuyên gia PR hàng đầu thế giới. Tôi nghĩ mình không cần thiết phải viết thêm một cuốn sách học thuật nữa".Về cuốn sách của Dili, ông Nguyễn Xuân Phong - phó hiệu trưởng Đại học FPT - nói: "Tôi thật mừng vì Dili đã viết một cuốn sách minh oan cho một khái niệm hết sức quan trọng và thông dụng trong cuộc sống mỗi con người". Trung tướng, nhà văn Hữu Ước cho biết ông ngạc nhiên và bất ngờ, bởi các nhà văn Việt Nam khi xuất bản tác phẩm thường chỉ quan tâm tới sức nặng nghệ thuật, giá trị nhân văn mà không mấy chú ý tới công chúng. "Tác giả đã từ tốn, thuyết phục người đọc bằng thực tiễn", Hữu Ước nói.', CAST(N'2021-04-05' AS Date))
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [NgayTao]) VALUES (11, N'Tin tức COVID-19', N'Bản tin sáng ngày 13/4 của Bộ Y tế cho biết có 2 ca mắc COVID-19 ghi nhận tại TP Hồ Chí Minh. Đây là các bệnh nhập cảnh đã cách ly ngay. Việt Nam hiện có 2.707 bệnh nhân COVID-19, trong khi thế giới đã có đến hơn 137,2 triệu.

Số ca mắc ở Việt Nam:

- Tính đến 6h ngày 13/4: Việt Nam có tổng cộng 1570 ca mắc COVID-19 do lây nhiễm trong nước, trong đó số lượng ca mắc mới tính từ ngày 27/1 đến nay: 910 ca, riêng Hải Dương có 726 ca, Quảng Ninh (61 ca), Gia Lai (27 ca), Hà Nội (34 ca), Bắc Ninh (5 ca), Bắc Giang (2 ca), TP. Hồ Chí Minh (36 ca ), Hoà Bình (2 ca), Hà Giang (1 ca), Điện Biên (3 ca), Bình Dương (6 ca), Hải Phòng (4 ca ), Hưng Yên (3 ca).

10 tỉnh, thành phố (Hoà Bình, Điện Biên, Hà Giang, Bình Dương, Hưng Yên, Bắc Giang, Gia Lai, Bắc Ninh, Quảng Ninh và TP. Hồ Chí Minh) đã qua 59 ngày không ghi nhận ca mắc COVID-19 trong cộng đồng;

- Hà Nội đã 56 ngày và Hải Phòng 49 ngày, Hải Dương đã 19 ngày không có ca lây nhiễm COVID-19 trong cộng đồng.

- Tính từ 18h ngày 12/4 đến 6h ngày 13/4: 02 ca mắc mới, đều được cách ly ngay sau khi nhập cảnh.

Số ca mắc COVID-19 của thế giới

- Cả thế giới có 137.214.549 ca mắc, trong đó 110.321.122 ca đã khỏi bệnh; 2.957.205 ca tử vong và 23.936.222 ca đang điều trị (104.012 ca diễn biến nặng)

- Trong 12 giờ qua, số ca mắc của thế giới tăng 485.609 ca, tử vong tăng 5.927 ca. Ước tính cứ hai ngày có thêm 1 triệu ca mắc, 20 nghìn ca tử vong. Ấn Độ là nước có số ca mắc cao nhất, mỗi ngày có hơn 150 nghìn ca mắc.

', CAST(N'2021-04-10' AS Date))
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
GO
ALTER TABLE [dbo].[Sach] ADD  CONSTRAINT [DF_Sach_TrangThai]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[TaiKhoan] ADD  CONSTRAINT [DF_TaiKhoan_AnhDaiDien]  DEFAULT ('customAvatar.png') FOR [AnhDaiDien]
GO
ALTER TABLE [dbo].[TaiKhoan] ADD  CONSTRAINT [DF_TaiKhoan_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[TinTuc] ADD  CONSTRAINT [DF_TinTuc_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_Sach]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TaiKhoan]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_DanhMucSP] FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMucSP] ([MaDM])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_DanhMucSP]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_KhuyenMai] FOREIGN KEY([MaKM])
REFERENCES [dbo].[KhuyenMai] ([MaKM])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_KhuyenMai]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXB] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NhaXB] ([MaNXB])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXB]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TacGia] ([MaTG])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TacGia]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_DanhGia] FOREIGN KEY([MaDanhGia])
REFERENCES [dbo].[DanhGia] ([MaDanhGia])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_DanhGia]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhomTK] FOREIGN KEY([MaNhomTK])
REFERENCES [dbo].[NhomTK] ([MaNhomTK])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhomTK]
GO
