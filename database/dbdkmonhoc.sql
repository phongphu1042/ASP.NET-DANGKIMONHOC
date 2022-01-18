USE [dkmonhoc]
GO
/****** Object:  Table [dbo].[dangkymonhoc]    Script Date: 1/18/2022 9:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dangkymonhoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mamon] [nchar](10) NULL,
	[mssv] [nchar](11) NULL,
	[mahocky] [nchar](10) NULL,
	[sotinchi] [int] NULL,
	[sotien] [int] NOT NULL,
 CONSTRAINT [PK_dangkymonhoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hedaotao]    Script Date: 1/18/2022 9:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hedaotao](
	[mahe] [nchar](10) NOT NULL,
	[hedaotao] [nvarchar](50) NULL,
 CONSTRAINT [PK_hedaotao] PRIMARY KEY CLUSTERED 
(
	[mahe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hocky]    Script Date: 1/18/2022 9:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hocky](
	[mahocky] [nchar](10) NOT NULL,
	[tenhocky] [nvarchar](50) NULL,
 CONSTRAINT [PK_hocky] PRIMARY KEY CLUSTERED 
(
	[mahocky] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaimon]    Script Date: 1/18/2022 9:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaimon](
	[maloai] [nchar](10) NOT NULL,
	[tenloai] [nvarchar](50) NULL,
 CONSTRAINT [PK_loaimon] PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lophoc]    Script Date: 1/18/2022 9:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lophoc](
	[malop] [nchar](10) NOT NULL,
	[tenlop] [nvarchar](50) NULL,
 CONSTRAINT [PK_lophoc] PRIMARY KEY CLUSTERED 
(
	[malop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monhoc]    Script Date: 1/18/2022 9:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monhoc](
	[mamon] [nchar](10) NOT NULL,
	[tenmon] [nvarchar](100) NULL,
	[sotinchi] [int] NULL,
	[sotinchihocphi] [int] NULL,
	[maloai] [nchar](10) NULL,
	[mahocky] [nchar](10) NULL,
 CONSTRAINT [PK_monhoc] PRIMARY KEY CLUSTERED 
(
	[mamon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monhocmodk]    Script Date: 1/18/2022 9:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monhocmodk](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mamon] [nchar](10) NOT NULL,
	[mahocky] [nchar](10) NOT NULL,
	[ngaymo] [datetime] NULL,
	[ngaydong] [datetime] NULL,
	[soluotmo] [int] NULL,
	[close] [bit] NULL,
 CONSTRAINT [PK_monhocmodk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sinhvien]    Script Date: 1/18/2022 9:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sinhvien](
	[mssv] [nchar](11) NOT NULL,
	[hodem] [nvarchar](50) NULL,
	[ten] [nvarchar](50) NULL,
	[gioitinh] [bit] NULL,
	[ngaysinh] [date] NULL,
	[namvao] [date] NULL,
	[malop] [nchar](10) NULL,
	[mahe] [nchar](10) NULL,
 CONSTRAINT [PK_sinhvien] PRIMARY KEY CLUSTERED 
(
	[mssv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[web_user]    Script Date: 1/18/2022 9:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[web_user](
	[username] [nchar](11) NOT NULL,
	[password] [nvarchar](100) NULL,
	[mssv] [nchar](11) NULL,
	[locked] [bit] NULL,
	[group] [int] NULL,
 CONSTRAINT [PK_web_user] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[hedaotao] ([mahe], [hedaotao]) VALUES (N'CD        ', N'Cao Đẳng')
GO
INSERT [dbo].[hedaotao] ([mahe], [hedaotao]) VALUES (N'DH        ', N'Đại Học')
GO
INSERT [dbo].[hedaotao] ([mahe], [hedaotao]) VALUES (N'LTDH      ', N'Liên Thông Đại Học')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK1       ', N'Học kỳ 1')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK2       ', N'Học kỳ 2')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK3       ', N'Học Kỳ 3')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK4       ', N'Học kỳ 4')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK5       ', N'Học kỳ 5')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK6       ', N'Học kỳ 6')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK7       ', N'Học kỳ 7')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK8       ', N'Học kỳ 8')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HKH       ', N'Học kỳ hè')
GO
INSERT [dbo].[loaimon] ([maloai], [tenloai]) VALUES (N'DA        ', N'Đồ Án')
GO
INSERT [dbo].[loaimon] ([maloai], [tenloai]) VALUES (N'DC        ', N'Đại Cương')
GO
INSERT [dbo].[loaimon] ([maloai], [tenloai]) VALUES (N'LT        ', N'Lý Thuyết')
GO
INSERT [dbo].[loaimon] ([maloai], [tenloai]) VALUES (N'TC        ', N'Thể Chất')
GO
INSERT [dbo].[loaimon] ([maloai], [tenloai]) VALUES (N'TH        ', N'Thực Hành')
GO
INSERT [dbo].[loaimon] ([maloai], [tenloai]) VALUES (N'TT        ', N'Thực Tập')
GO
INSERT [dbo].[lophoc] ([malop], [tenlop]) VALUES (N'D18_TH12  ', N'Lớp tin học 12')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03001   ', N'Kỹ thuật số', 2, 2, N'DC        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03002   ', N'Thí nghiệm Kỹ thuật số', 1, 2, N'TH        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03003   ', N'Kỹ thuật lập trình', 3, 3, N'LT        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03004   ', N'Thực hành Kỹ thuật lập trình', 1, 2, N'TH        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03005   ', N'Toán tin học', 3, 3, N'DC        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03006   ', N'Nhập môn công tác kỹ sư', 1, 1, N'LT        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03007   ', N'Cấu trúc dữ liệu và thuật giải', 3, 3, N'LT        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03008   ', N'Cơ sở dữ liệu', 3, 3, N'LT        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03009   ', N'Hệ điều hành', 3, 3, N'LT        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03010   ', N'Thực hành Cấu trúc dữ liệu và thuật giải', 1, 2, N'TH        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03011   ', N'Thực hành Cơ sở dữ liệu', 1, 2, N'TH        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03012   ', N'Thực hành Hệ điều hành', 1, 2, N'TH        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03013   ', N'Công nghệ phần mềm', 3, 3, N'LT        ', N'HK5       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03014   ', N'Đồ án tin học', 2, 6, N'DA        ', N'HK5       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03015   ', N'Lập trình hướng đối tượng', 3, 3, N'LT        ', N'HK5       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03016   ', N'Thực hành Lập trình hướng đối tượng', 1, 2, N'TH        ', N'HK5       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03017   ', N'Lập trình ứng dụng cơ sở dữ liệu', 3, 3, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03020   ', N'Quản trị cơ sở dữ liệu', 3, 3, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03021   ', N'Seminar nghề nghiệp', 1, 2, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03022   ', N'Quản lý dự án', 3, 3, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03023   ', N'Thương mại điện tử', 3, 3, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03024   ', N'An ninh máy tính', 2, 2, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03025   ', N'Thực tập An ninh máy tính', 1, 2, N'TH        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03026   ', N'Mã hóa ứng dụng', 3, 3, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03027   ', N'Thực hành Hệ quản trị cơ sơ dữ liệu', 1, 2, N'TH        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03028   ', N'Thực hành Lập trình ứng dụng cơ sở dữ liệu', 1, 2, N'TH        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03029   ', N'Đồ án Chuyên ngành', 2, 6, N'DA        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03030   ', N'Đồ án Phân tích thiết kế hệ thống thông tin', 2, 6, N'DA        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03033   ', N'Phát triển phần mềm nguồn mở', 3, 3, N'LT        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03034   ', N'Thực hành Phát triển phần mềm nguồn mở', 1, 2, N'TH        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03036   ', N'Lập trình Web', 3, 3, N'LT        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03037   ', N'Lập trình Windows', 3, 3, N'LT        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03038   ', N'Lập trình cho thiết bị di động', 3, 3, N'LT        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03039   ', N'Thực hành Lập trình Web', 1, 2, N'TH        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03040   ', N'Thực hành Lập trình Windows', 1, 2, N'TH        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03041   ', N'Thực hành Lập trình cho thiết bị di động', 1, 2, N'TH        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03042   ', N'Triển khai hệ thống thông tin', 3, 3, N'LT        ', N'HK8       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03043   ', N'Xây dựng phần mềm Web', 3, 3, N'LT        ', N'HK8       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03044   ', N'Xây dựng phần mềm Windows', 3, 3, N'LT        ', N'HK8       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03045   ', N'Kiểm thử phần mềm', 3, 3, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03151   ', N'Thực tập tốt nghiệp', 2, 4, N'TT        ', N'HK8       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03153   ', N'Đồ án / Khóa luận tốt nghiệp', 5, 0, N'DA        ', N'HK8       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09001   ', N'Nhập môn lập trình', 3, 3, N'LT        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09002   ', N'Thực hành Nhập môn lập trình', 1, 2, N'TH        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09003   ', N'Nhập môn Web và ứng dụng', 3, 3, N'LT        ', N'HK5       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09004   ', N'Thực hành Nhập môn Web và ứng dụng', 1, 2, N'TH        ', N'HK5       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09005   ', N'Nhập môn cấu trúc dữ liệu', 3, 3, N'LT        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09006   ', N'Tổ chức cấu trúc máy tính', 3, 3, N'LT        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09007   ', N'Thực hành Nhập môn cấu trúc dữ liệu', 1, 2, N'TH        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09008   ', N'Thực hành Tổ chức cấu trúc máy tính', 1, 2, N'TH        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09009   ', N'Mạng máy tính', 3, 3, N'LT        ', N'HK5       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09010   ', N'Phân tích thiết kế hệ thống thông tin', 3, 3, N'LT        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09011   ', N'Quản trị mạng', 3, 3, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS09011   ', N'KHXHNV_Đại cương văn hóa Việt Nam', 2, 2, N'DC        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS09012   ', N'KHXHNV_Kỹ năng giao tiếp', 2, 3, N'DC        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS19001   ', N'Tiếng Anh 1', 2, 3, N'DC        ', N'HK1       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS19002   ', N'Tiếng Anh 2', 2, 3, N'DC        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS19003   ', N'Tiếng Anh 3', 2, 3, N'DC        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS19004   ', N'Tiếng Anh 4', 2, 3, N'DC        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS29001   ', N'Pháp luật Việt Nam đại cương', 3, 3, N'DC        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS33001   ', N'Toán A1 (Hàm 1 biến, chuỗi)', 4, 4, N'LT        ', N'HK1       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS33002   ', N'Toán A2 (Hàm nhiều biến, giải tích vec tơ)', 4, 2, N'DC        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS33003   ', N'Toán A3 (Đại số tuyến tính)', 3, 3, N'DC        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS43001   ', N'Vật lý 1', 3, 3, N'DC        ', N'HK1       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS43002   ', N'Vật lý 2', 4, 3, N'DC        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS49004   ', N'Thí nghiệm Vật lý_Phần 1', 1, 1, N'TH        ', N'HK1       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS49005   ', N'Thí nghiệm Vật lý_Phần 2', 1, 1, N'TH        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS59001   ', N'Tin học đại cương', 2, 2, N'DC        ', N'HK1       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS59002   ', N'Thực hành Tin học đại cương', 2, 3, N'TH        ', N'HK1       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS79001   ', N'Những nguyên lý cơ bản của chủ nghĩa Mác - Lênin', 4, 5, N'DC        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS79003   ', N'Đường lối cách mạng của Đảng Cộng sản Việt Nam', 3, 3, N'DC        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS79004   ', N'Lý luận chính trị cuối khóa', 0, 2, N'DC        ', N'HK8       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS79009   ', N'Tư tưởng Hồ Chí Minh', 2, 2, N'DC        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS93003   ', N'Giáo dục thể chất 3', 0, 2, N'TC        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS93004   ', N'Giáo dục thể chất 4', 0, 2, N'TC        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS99001   ', N'Giáo dục thể chất 1', 0, 2, N'TC        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS99002   ', N'Giáo dục thể chất 2', 0, 2, N'TC        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'MI03002   ', N'Giáo dục quốc phòng (ĐH)', 0, 0, N'TC        ', N'HK4       ')
GO
SET IDENTITY_INSERT [dbo].[monhocmodk] ON 
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (19, N'GS59002   ', N'HK1       ', CAST(N'2022-01-19T10:00:30.000' AS DateTime), CAST(N'2022-01-21T10:00:30.000' AS DateTime), 100, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (20, N'GS59001   ', N'HK1       ', CAST(N'2022-01-19T10:00:30.000' AS DateTime), CAST(N'2022-01-21T10:00:30.000' AS DateTime), 100, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (21, N'GS49004   ', N'HK1       ', CAST(N'2022-01-19T10:00:30.000' AS DateTime), CAST(N'2022-01-21T10:00:30.000' AS DateTime), 100, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (22, N'GS43001   ', N'HK1       ', CAST(N'2022-01-19T10:00:30.000' AS DateTime), CAST(N'2022-01-21T10:00:30.000' AS DateTime), 100, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (23, N'GS33001   ', N'HK1       ', CAST(N'2022-01-19T10:00:30.000' AS DateTime), CAST(N'2022-01-21T10:00:30.000' AS DateTime), 100, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (24, N'GS19001   ', N'HK1       ', CAST(N'2022-01-19T10:00:30.000' AS DateTime), CAST(N'2022-01-21T10:00:30.000' AS DateTime), 100, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (25, N'GS93004   ', N'HK3       ', CAST(N'2022-01-12T10:00:03.000' AS DateTime), CAST(N'2022-01-14T10:00:03.000' AS DateTime), 200, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (26, N'GS93003   ', N'HK3       ', CAST(N'2022-01-12T10:00:03.000' AS DateTime), CAST(N'2022-01-14T10:00:03.000' AS DateTime), 200, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (27, N'GS79009   ', N'HK3       ', CAST(N'2022-01-12T10:00:03.000' AS DateTime), CAST(N'2022-01-14T10:00:03.000' AS DateTime), 200, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (28, N'GS33003   ', N'HK3       ', CAST(N'2022-01-12T10:00:03.000' AS DateTime), CAST(N'2022-01-14T10:00:03.000' AS DateTime), 200, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (29, N'GS29001   ', N'HK3       ', CAST(N'2022-01-12T10:00:03.000' AS DateTime), CAST(N'2022-01-14T10:00:03.000' AS DateTime), 200, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (30, N'GS19003   ', N'HK3       ', CAST(N'2022-01-12T10:00:03.000' AS DateTime), CAST(N'2022-01-14T10:00:03.000' AS DateTime), 200, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (31, N'CS09008   ', N'HK3       ', CAST(N'2022-01-12T10:00:03.000' AS DateTime), CAST(N'2022-01-14T10:00:03.000' AS DateTime), 200, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (32, N'CS09007   ', N'HK3       ', CAST(N'2022-01-12T10:00:03.000' AS DateTime), CAST(N'2022-01-14T10:00:03.000' AS DateTime), 200, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (33, N'CS09006   ', N'HK3       ', CAST(N'2022-01-12T10:00:03.000' AS DateTime), CAST(N'2022-01-14T10:00:03.000' AS DateTime), 200, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (34, N'CS09005   ', N'HK3       ', CAST(N'2022-01-12T10:00:03.000' AS DateTime), CAST(N'2022-01-14T10:00:03.000' AS DateTime), 200, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (35, N'CS03005   ', N'HK3       ', CAST(N'2022-01-12T10:00:03.000' AS DateTime), CAST(N'2022-01-14T10:00:03.000' AS DateTime), 200, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (36, N'CS03004   ', N'HK3       ', CAST(N'2022-01-12T10:00:03.000' AS DateTime), CAST(N'2022-01-14T10:00:03.000' AS DateTime), 200, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (37, N'CS03003   ', N'HK3       ', CAST(N'2022-01-12T10:00:03.000' AS DateTime), CAST(N'2022-01-14T10:00:03.000' AS DateTime), 200, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (38, N'GS09012   ', N'HK7       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (39, N'GS09011   ', N'HK7       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (40, N'CS09010   ', N'HK7       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (41, N'CS03041   ', N'HK7       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (42, N'CS03040   ', N'HK7       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (43, N'CS03039   ', N'HK7       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (44, N'CS03038   ', N'HK7       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (45, N'CS03037   ', N'HK7       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (46, N'CS03036   ', N'HK7       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (47, N'CS03034   ', N'HK7       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (48, N'CS03033   ', N'HK7       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (49, N'CS03030   ', N'HK7       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (50, N'CS03029   ', N'HK7       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (1025, N'CS09001   ', N'HKH       ', CAST(N'2022-01-15T10:00:35.000' AS DateTime), CAST(N'2022-01-19T10:00:35.000' AS DateTime), 300, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (2025, N'GS43001   ', N'HKH       ', CAST(N'2022-01-15T10:00:35.000' AS DateTime), CAST(N'2022-01-19T10:00:35.000' AS DateTime), 300, 0)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (3025, N'GS33001   ', N'HKH       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (4025, N'GS99002   ', N'HK2       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (4026, N'GS99001   ', N'HK2       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (4027, N'GS79001   ', N'HK2       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (4028, N'GS49005   ', N'HK2       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (4029, N'GS43002   ', N'HK2       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (4030, N'GS33002   ', N'HK2       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (4031, N'GS19002   ', N'HK2       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (4032, N'CS09002   ', N'HK2       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (4033, N'CS09001   ', N'HK2       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (4034, N'CS03002   ', N'HK2       ', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[monhocmodk] ([id], [mamon], [mahocky], [ngaymo], [ngaydong], [soluotmo], [close]) VALUES (4035, N'CS03001   ', N'HK2       ', NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[monhocmodk] OFF
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51602345 ', N'Nguyễn Quang', N'Triết', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51603201 ', N'Đồng Quốc', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51700384 ', N'Nguyễn Minh', N'Quang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51700421 ', N'Hà Thị Kim', N'Hương', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51701216 ', N'Ngô Hoàng', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51701666 ', N'Phạm Phú', N'Vũ', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51702712 ', N'Vũ Công', N'Minh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51703187 ', N'Lê Thành', N'Công', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51703213 ', N'Huỳnh Tuấn', N'Diệu', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51703441 ', N'Nguyễn Viết', N'Hoàng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51703677 ', N'Trần Minh', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51703938 ', N'Nguyễn Hồng', N'Phi', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51704388 ', N'Bùi Đức', N'Trung', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800004 ', N'Trần Phú', N'Yên', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800013 ', N'Mai Chí', N'Khôi', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800023 ', N'Trương Thái Thiện', N'Hoàng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800027 ', N'Lê Đình', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800041 ', N'Trần Văn', N'Trường', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800043 ', N'Phan Hoàng', N'Dũng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800049 ', N'Đỗ Vân Gia', N'Huyên', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800070 ', N'Nguyễn Nhựt', N'Nam', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800079 ', N'Nguyễn Thị Ngọc', N'Trang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800085 ', N'Nguyễn Tăng', N'Thảo', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800094 ', N'Lê Nhựt', N'Tiến', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800124 ', N'Nguyễn Trần Tuấn', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800131 ', N'Ngô Đình', N'Khang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800141 ', N'Võ Sỹ', N'Hùng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800143 ', N'Nguyễn Thị Khánh', N'Vy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800144 ', N'Hoàng Trung', N'Hiếu', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800156 ', N'Nguyễn Lưu Đức', N'Tài', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800165 ', N'Nguyễn Trần Tuấn', N'Khôi', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800174 ', N'Nguyễn Ngọc Ngân', N'Hà', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800191 ', N'Nguyễn Nhật', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800195 ', N'Phương Thanh', N'Tòng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800203 ', N'Dương Hoàng', N'Xuân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800211 ', N'Võ Hoàng', N'Thắng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800220 ', N'Nguyễn Tấn', N'Tin', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800223 ', N'Nguyễn Thiên', N'Vinh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800224 ', N'Trần Đường', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800232 ', N'Trương Chí', N'Bửu', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800242 ', N'Nguyễn Trọng', N'Nhân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800321 ', N'Nguyễn Anh', N'Khoa', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800367 ', N'Phan Châu', N'Đức', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800369 ', N'Trần Kim', N'Hoàng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800372 ', N'Huỳnh Quốc', N'Tuấn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800380 ', N'Bùi Thanh', N'Trọng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800394 ', N'Nguyễn Ngọc', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800439 ', N'Nguyễn Văn', N'Hậu', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800497 ', N'Nguyễn Trần Việt', N'Thắng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800512 ', N'Nguyễn Hoàng', N'Chương', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800516 ', N'Đỗ Ức', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800518 ', N'Nguyễn Võ Duy Tú', N'Vinh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800534 ', N'Nguyễn Minh', N'Hiếu', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800548 ', N'Lê Thị Kim', N'Ngân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800555 ', N'Nguyễn Anh Huy', N'Bảo', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800556 ', N'Đỗ Huy', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800586 ', N'Lê Nguyễn Ánh', N'Tiên', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800612 ', N'Nguyễn Thảo', N'Vy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800621 ', N'Trần Quốc', N'Minh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800622 ', N'Nguyễn Huỳnh Lạt', N'Minh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800658 ', N'Lê Ngọc', N'Sang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800663 ', N'Nguyễn Hoàn', N'Kha', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800671 ', N'Đặng Phúc', N'Hữu', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800686 ', N'Nguyễn Anh', N'Hoàng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800687 ', N'Nguyễn Thiên', N'Phú', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800688 ', N'Lê Trần', N'Đức', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800692 ', N'Nguyễn Dương Anh', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800699 ', N'Phạm Hữu', N'Phước', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800705 ', N'Chiu Thùy', N'Tỷ', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800724 ', N'Nguyễn Thành', N'An', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800726 ', N'Lê Quốc', N'Khánh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800736 ', N'Đặng Kiến', N'Phong', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800744 ', N'Tô Quốc', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800753 ', N'Nguyễn Nhựt', N'Tân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800766 ', N'Phạm Tiến', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800769 ', N'Nguyễn Thanh', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800827 ', N'Dương Trường', N'Giang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800835 ', N'Đồng Đình', N'Quân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800850 ', N'Nguyễn Thanh', N'Toàn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800859 ', N'Hàng Ngọc', N'Hưng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800877 ', N'Nguyễn Quốc', N'Vương', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800895 ', N'Phạm Đức', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800909 ', N'Ngô Gia', N'Phương', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800925 ', N'Nguyễn Hiếu', N'Nghĩa', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800963 ', N'Nguyễn Võ Đức', N'Anh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800964 ', N'Nguyễn Đoàn Gia', N'Thuận', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800965 ', N'Nguyễn Xuân Thanh', N'Sang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800980 ', N'Lê Nhất', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800991 ', N'Nguyễn Long', N'Đức', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800992 ', N'Hoàng Trung', N'Nam', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800994 ', N'Đinh Hoàng Minh', N'Mẫn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800998 ', N'Hồ Đăng', N'Quang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801021 ', N'Thiều Văn Vũ', N'Tín', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801039 ', N'Võ Văn', N'Thiện', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801108 ', N'Nguyễn Xuân', N'Toàn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801111 ', N'Trần Thanh', N'Ân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801122 ', N'Mai Huỳnh', N'Trường', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801124 ', N'Nguyễn Phạm Công', N'Khang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801144 ', N'Lê Duy', N'Anh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801182 ', N'Trần Quốc', N'Trọng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801192 ', N'Nguyễn Phạm Công', N'Minh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801196 ', N'Nguyễn Trần Chính', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801260 ', N'Nguyễn Anh', N'Thư', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801268 ', N'Nguyễn Hoàng', N'Tín', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801312 ', N'Nguyễn Tấn Nam', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801342 ', N'Phan Lê Hữu', N'Nhân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801362 ', N'Phạm Phúc', N'Hậu', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801379 ', N'Ngô Minh', N'Đạt', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801405 ', N'Tăng Quang', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801417 ', N'Nguyễn Thanh', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801425 ', N'Tạ Bỉnh', N'Quân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801444 ', N'Đào Nguyễn Hồng', N'Nhung', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801456 ', N'Lê Anh', N'Hào', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801471 ', N'Lê Cường', N'Thịnh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801502 ', N'Lê Triệu', N'Luân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801584 ', N'Võ Phương', N'Nam', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801592 ', N'Phạm Công', N'Minh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801604 ', N'Phạm Tuấn', N'Cảnh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801606 ', N'Bùi Quốc', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801623 ', N'Nguyễn Hoàng Minh', N'Thy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801635 ', N'Nguyễn Gia', N'Khánh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801636 ', N'Huỳnh Trương Tấn', N'An', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801672 ', N'Lê Trần', N'Lợi', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801674 ', N'Trần Quốc', N'Vương', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801691 ', N'Nguyễn Công', N'Tính', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801698 ', N'Nguyễn Ngọc', N'Thìn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801707 ', N'Nguyễn Quang', N'Thông', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801726 ', N'Lê Văn', N'Hiếu', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801733 ', N'Võ Anh', N'Khoa', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801738 ', N'Võ Xuân', N'Kỷ', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801881 ', N'Nguyễn Lê Trường', N'Thiện', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801934 ', N'Nguyễn Thị Mỹ', N'Kim', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801961 ', N'Phan Văn', N'Thành', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801978 ', N'Cao Nhật', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801984 ', N'Lê Hồng Chí', N'Hiển', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802007 ', N'Trần Bảo', N'Tiến', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802009 ', N'Phạm Anh', N'Thi', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802012 ', N'Lê Thái', N'Thông', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802024 ', N'Ngô Hồng', N'Phương', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802030 ', N'Lê Hoàng', N'Anh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802058 ', N'Võ Đức An', N'Khang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802064 ', N'Trần Đình', N'Đô', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802067 ', N'Nguyễn Trọng', N'Thành', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802091 ', N'Bùi Phạm Phú', N'Lâm', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802094 ', N'Hồ Anh', N'Vũ', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802099 ', N'Trần Nhật', N'Bản', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802110 ', N'Nguyễn Duy', N'Linh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802129 ', N'Dương Minh', N'Danh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802158 ', N'Nguyễn Vương Vân', N'Trường', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802218 ', N'Nguyễn Ngọc', N'Đăng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802262 ', N'Nguyễn Tấn', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802290 ', N'Nguyễn Kim', N'Hiếu', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802294 ', N'Phạm Phú', N'Tài', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802325 ', N'Lê Thị Thúy', N'Hoài', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802337 ', N'Lê Trần Trung', N'Hậu', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802374 ', N'Huỳnh Tấn', N'Tiến', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802381 ', N'Phạm Thanh', N'Đức', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802382 ', N'Bùi Tấn', N'Đạt', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802384 ', N'Nguyễn Châu Toàn', N'Quốc', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802387 ', N'Cao Tài', N'Lộc', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802389 ', N'Đỗ Quốc', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802391 ', N'Ngô Xuân', N'Trúc', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802443 ', N'Phạm Tấn', N'Đạt', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802448 ', N'Hoàng Quốc', N'Đạt', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802473 ', N'Nguyễn Thị Hồng', N'Ngọc', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802504 ', N'Dương Nhật', N'Anh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802511 ', N'Trần Xuân', N'Nhơn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802512 ', N'Lê Anh', N'Phi', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802538 ', N'Võ Công', N'Trường', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802541 ', N'Nguyễn Hữu', N'Vinh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802544 ', N'Lê Hoàng Trọng', N'Tín', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802580 ', N'Đinh Ngọc Hải', N'Đăng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802624 ', N'Huỳnh Thanh', N'Phát', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802629 ', N'Cao Dương', N'Trần', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802640 ', N'Lê Đình', N'Mẫn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802697 ', N'Phan Nguyễn Hoài', N'An', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802700 ', N'Ngô Thanh', N'Danh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802752 ', N'Phạm Anh', N'Quốc', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802776 ', N'Nguyễn Đức', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802799 ', N'Võ Thanh', N'Tùng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802808 ', N'Hồ Hoàng', N'Dung', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802827 ', N'Chương Thiệu', N'Phong', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802893 ', N'Huỳnh Tấn', N'Phú', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802913 ', N'Trương Nguyễn Minh', N'Ân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802933 ', N'Trần Ngọc', N'Trung', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802954 ', N'Nguyễn Việt', N'Thành', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802975 ', N'Thái Trương Đăng', N'Khoa', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802981 ', N'Lê Minh', N'Tú', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802987 ', N'Lâm Hồng', N'Hải', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802990 ', N'Huỳnh Phú', N'Quí', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803029 ', N'Hồng Quốc', N'Bình', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803039 ', N'Đỗ Tiến', N'Thịnh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803052 ', N'Chung Xuân', N'Thịnh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803057 ', N'Trần Anh', N'Tuấn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803058 ', N'Phan Thành', N'Trí', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803070 ', N'Nguyễn Đỗ Minh', N'Nhất', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803079 ', N'Nguyễn Huỳnh Khánh', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803115 ', N'Trần Minh', N'Tuấn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803124 ', N'Ngô Gia', N'Bảo', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803126 ', N'Nguyễn Phương Hoài', N'Việt', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803156 ', N'Nguyễn Công Hải', N'Nam', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803164 ', N'Nguyễn Quang', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803166 ', N'Võ Chí', N'Cường', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803168 ', N'Hoàng Đức', N'Công', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803178 ', N'Trần Quang', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803189 ', N'Nguyễn Văn', N'Thành', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803221 ', N'Nguyễn Quốc', N'Thắng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803236 ', N'Võ Minh', N'Khang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803239 ', N'Phạm Nguyễn Anh', N'Trường', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803255 ', N'Hồ Hữu', N'Chí', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803312 ', N'Trần Minh', N'Hiếu', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803327 ', N'Vũ Công Tuấn', N'Anh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803355 ', N'Phan Anh', N'Minh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803372 ', N'Lê Thanh', N'Toàn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803383 ', N'Lương Gia', N'Thuận', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803440 ', N'Lê Duy', N'Tuyên', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803441 ', N'Trần Thanh', N'Tùng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803477 ', N'Đỗ Như', N'Việt', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803494 ', N'Nguyễn Ngọc', N'Khoa', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803523 ', N'Quách Đại', N'Triệu', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803550 ', N'Lê Phước', N'Thịnh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803559 ', N'Lê Nguyễn Tất', N'Thắng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803576 ', N'Nguyễn Đức', N'Nhân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803595 ', N'Phạm Lê', N'Hưng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803598 ', N'Lê Văn Hùng', N'Minh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803612 ', N'Vũ Tuấn', N'Nghĩa', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803625 ', N'Trần Chí', N'Lâm', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803665 ', N'Đặng Văn', N'Hiếu', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803715 ', N'Nguyễn Thái', N'Vỹ', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803757 ', N'Hoàng Thanh', N'Tuấn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803764 ', N'Mai Gia', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803769 ', N'Trần Bảo', N'Toàn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803800 ', N'Nguyễn Anh', N'Võ', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803935 ', N'Huỳnh Quốc', N'Dương', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804098 ', N'Nguyễn Hoàng', N'Bảo', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804107 ', N'Cao Chiến', N'Hào', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804123 ', N'Võ Khánh', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804141 ', N'Nguyễn Trọng', N'Trí', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804249 ', N'Tống Khánh Nhật', N'An', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804303 ', N'Phạm Quốc', N'Ân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804310 ', N'Võ Ngọc', N'Bội', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804331 ', N'Nguyễn Duy', N'Bảo', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804376 ', N'Lê Trí', N'Cường', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804380 ', N'Ngô Anh', N'Cương', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804386 ', N'Nguyễn Thị Ngọc', N'Diễm', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804398 ', N'Vòng Say', N'Dậu', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804418 ', N'Lạc Hồng', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804430 ', N'Trần Khánh', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804453 ', N'Phạm Đăng Hải', N'Dương', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804500 ', N'Trần Tuấn', N'Đại', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804511 ', N'Huỳnh Trung', N'Đông', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804528 ', N'Nguyễn Thành', N'Đạt', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804536 ', N'Tôn Quốc', N'Đạt', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804542 ', N'Trần Hí', N'Đường', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804576 ', N'Lưu Vịnh', N'Hân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804614 ', N'Lê Văn', N'Hiệp', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804616 ', N'Trần Hoàng', N'Hiệp', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804706 ', N'Vũ Huy', N'Hoàng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804755 ', N'Lê Thanh', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804772 ', N'Trần Nguyễn Quốc', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804821 ', N'Cao Vũ', N'Khang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804825 ', N'Hà Trí', N'Khang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804835 ', N'Nguyễn Tuấn', N'Khang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804851 ', N'Nguyễn Quốc', N'Khánh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804894 ', N'Phan Thị Tú', N'Khuyên', 0, CAST(N'2000-11-18' AS Date), CAST(N'2018-08-19' AS Date), N'D18_TH12  ', N'DH        ')
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804901 ', N'Hoàng Trung', N'Kiên', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804942 ', N'Đặng Phước', N'Lộc', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804948 ', N'Nguyễn Tấn', N'Lộc', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804949 ', N'Nguyễn Xuân', N'Lộc', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805023 ', N'Nguyễn Hoàng', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805028 ', N'Nguyễn Nhị', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805047 ', N'Trần Thành', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805103 ', N'Phạm Văn', N'Mạnh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805129 ', N'Phạm Dương Hoài', N'Nam', 1, CAST(N'2000-11-12' AS Date), CAST(N'2018-08-19' AS Date), N'D18_TH12  ', N'DH        ')
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805130 ', N'Phạm Hoàng', N'Nam', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805131 ', N'Tân Bỉnh', N'Nam', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805204 ', N'Trần Thị', N'Nguyệt', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805206 ', N'Huỳnh Công', N'Nhã', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805207 ', N'Trần Đại', N'Nhã', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805220 ', N'Nguyễn Trọng', N'Nhân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805223 ', N'Trần Thiện Thành', N'Nhân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805286 ', N'Phạm Thị Huỳnh', N'Như', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805303 ', N'Nguyễn Việt', N'Pháp', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805316 ', N'Nguyễn Tấn', N'Phát', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805322 ', N'Trần Mãnh', N'Phát', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805350 ', N'Nguyễn Phong', N'Phú', 1, CAST(N'2000-04-10' AS Date), CAST(N'2018-08-19' AS Date), N'D18_TH12  ', N'DH        ')
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805351 ', N'Phạm Minh', N'Phú', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805354 ', N'Trần Huy', N'Phú', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805358 ', N'Đào Thiên', N'Phúc', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805372 ', N'Trần Bảo', N'Phúc', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805388 ', N'Bùi Hoàng', N'Phương', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805426 ', N'Trần Minh', N'Quang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805435 ', N'Nguyễn Thanh', N'Quân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805444 ', N'Đinh Kiến', N'Quốc', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805469 ', N'Trần Đình', N'Ri', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805479 ', N'Tạ Đăng', N'Sáng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805491 ', N'Nguyễn Thanh', N'Sướng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805497 ', N'Mai Trương', N'Tài', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805517 ', N'Ao Nhật', N'Tân', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805528 ', N'Đặng Hồng Bảo', N'Thái', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805597 ', N'Lai Đặng Hồng', N'Thiện', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805624 ', N'Nguyễn Tấn', N'Thịnh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805679 ', N'Phạm Thanh', N'Thuận', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805688 ', N'Trần Thị Ngọc', N'Thùy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805702 ', N'Lý Hoàng', N'Thư', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805715 ', N'Ngô Thùy', N'Thương', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805750 ', N'Nguyễn Hoàng', N'Tiến', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805753 ', N'Nhâm Trung', N'Tiến', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805764 ', N'Nguyễn Đặng', N'Tín', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805774 ', N'Nguyễn Thanh', N'Tấn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805788 ', N'Trương Ngọc', N'Toàn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805899 ', N'Bùi Lê Hoàng Nhật', N'Trường', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805930 ', N'Lê Minh', N'Tú', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805934 ', N'Nguyễn Minh', N'Tú', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806037 ', N'Ngô Gia', N'Vinh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806039 ', N'Nguyễn Hữu Lê', N'Vinh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806065 ', N'Phan Mai Thiên', N'Vũ', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806068 ', N'Trần Tuấn', N'Vũ', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806073 ', N'Phạm Đình', N'Vương', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806091 ', N'Nguyễn Hải', N'Vy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806100 ', N'Trần Khánh', N'Vy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806426 ', N'Hoàng Ngọc', N'Hà', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51808001 ', N'Thái Tú', N'Nghi', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51900713 ', N'Dương Ngọc', N'Nguyên', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51900846 ', N'Nguyễn Tiến', N'Đạt', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51900990 ', N'Huỳnh Thanh', N'Vỉ', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51901192 ', N'Nguyễn Gia', N'Vũ', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51902283 ', N'Phạm Tấn', N'Thuận', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51902991 ', N'Hoàng Nguyễn Hoài', N'Thương', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51903919 ', N'Nguyễn Thành', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51903937 ', N'Nguyễn Phúc', N'Lộc', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51904075 ', N'Nguyễn Trọng', N'Nghĩa', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51904373 ', N'Đặng Thái', N'Sơn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51904681 ', N'Nguyễn Thanh', N'Trà', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51904791 ', N'Trần Minh', N'Trường', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51905085 ', N'Lê Hoàng', N'Tuấn', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51905519 ', N'Hà Trung', N'Phi', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'admin      ', N'123', NULL, 0, 1)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'admin2     ', N'123', NULL, 0, 1)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'admin3     ', N'123', NULL, 1, 1)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'admin4     ', N'123456', NULL, 0, 1)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51602345 ', N'DH51602345 ', N'DH51602345 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51603201 ', N'DH51603201 ', N'DH51603201 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51700384 ', N'DH51700384 ', N'DH51700384 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51700421 ', N'DH51700421 ', N'DH51700421 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51701216 ', N'DH51701216 ', N'DH51701216 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51701666 ', N'DH51701666 ', N'DH51701666 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51702712 ', N'DH51702712 ', N'DH51702712 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51703187 ', N'DH51703187 ', N'DH51703187 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51703213 ', N'DH51703213 ', N'DH51703213 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51703441 ', N'DH51703441 ', N'DH51703441 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51703677 ', N'DH51703677 ', N'DH51703677 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51703938 ', N'DH51703938 ', N'DH51703938 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51704388 ', N'DH51704388 ', N'DH51704388 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800004 ', N'DH51800004 ', N'DH51800004 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800013 ', N'DH51800013 ', N'DH51800013 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800023 ', N'DH51800023 ', N'DH51800023 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800027 ', N'DH51800027 ', N'DH51800027 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800041 ', N'DH51800041 ', N'DH51800041 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800043 ', N'DH51800043 ', N'DH51800043 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800049 ', N'DH51800049 ', N'DH51800049 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800070 ', N'DH51800070 ', N'DH51800070 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800079 ', N'DH51800079 ', N'DH51800079 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800085 ', N'DH51800085 ', N'DH51800085 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800094 ', N'DH51800094 ', N'DH51800094 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800124 ', N'DH51800124 ', N'DH51800124 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800131 ', N'DH51800131 ', N'DH51800131 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800141 ', N'DH51800141 ', N'DH51800141 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800143 ', N'DH51800143 ', N'DH51800143 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800144 ', N'DH51800144 ', N'DH51800144 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800156 ', N'DH51800156 ', N'DH51800156 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800165 ', N'DH51800165 ', N'DH51800165 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800174 ', N'DH51800174 ', N'DH51800174 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800191 ', N'DH51800191 ', N'DH51800191 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800195 ', N'DH51800195 ', N'DH51800195 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800203 ', N'DH51800203 ', N'DH51800203 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800211 ', N'DH51800211 ', N'DH51800211 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800220 ', N'DH51800220 ', N'DH51800220 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800223 ', N'DH51800223 ', N'DH51800223 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800224 ', N'DH51800224 ', N'DH51800224 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800232 ', N'DH51800232 ', N'DH51800232 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800242 ', N'DH51800242 ', N'DH51800242 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800321 ', N'DH51800321 ', N'DH51800321 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800367 ', N'DH51800367 ', N'DH51800367 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800369 ', N'DH51800369 ', N'DH51800369 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800372 ', N'DH51800372 ', N'DH51800372 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800380 ', N'DH51800380 ', N'DH51800380 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800394 ', N'DH51800394 ', N'DH51800394 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800439 ', N'DH51800439 ', N'DH51800439 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800497 ', N'DH51800497 ', N'DH51800497 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800512 ', N'DH51800512 ', N'DH51800512 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800516 ', N'DH51800516 ', N'DH51800516 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800518 ', N'DH51800518 ', N'DH51800518 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800534 ', N'DH51800534 ', N'DH51800534 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800548 ', N'DH51800548 ', N'DH51800548 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800555 ', N'DH51800555 ', N'DH51800555 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800556 ', N'DH51800556 ', N'DH51800556 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800586 ', N'DH51800586 ', N'DH51800586 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800612 ', N'DH51800612 ', N'DH51800612 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800621 ', N'DH51800621 ', N'DH51800621 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800622 ', N'DH51800622 ', N'DH51800622 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800658 ', N'DH51800658 ', N'DH51800658 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800663 ', N'DH51800663 ', N'DH51800663 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800671 ', N'DH51800671 ', N'DH51800671 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800686 ', N'DH51800686 ', N'DH51800686 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800687 ', N'DH51800687 ', N'DH51800687 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800688 ', N'DH51800688 ', N'DH51800688 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800692 ', N'DH51800692 ', N'DH51800692 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800699 ', N'DH51800699 ', N'DH51800699 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800705 ', N'DH51800705 ', N'DH51800705 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800724 ', N'DH51800724 ', N'DH51800724 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800726 ', N'DH51800726 ', N'DH51800726 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800736 ', N'DH51800736 ', N'DH51800736 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800744 ', N'DH51800744 ', N'DH51800744 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800753 ', N'DH51800753 ', N'DH51800753 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800766 ', N'DH51800766 ', N'DH51800766 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800769 ', N'DH51800769 ', N'DH51800769 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800827 ', N'DH51800827 ', N'DH51800827 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800835 ', N'DH51800835 ', N'DH51800835 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800850 ', N'DH51800850 ', N'DH51800850 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800859 ', N'DH51800859 ', N'DH51800859 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800877 ', N'DH51800877 ', N'DH51800877 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800895 ', N'DH51800895 ', N'DH51800895 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800909 ', N'DH51800909 ', N'DH51800909 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800925 ', N'DH51800925 ', N'DH51800925 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800963 ', N'DH51800963 ', N'DH51800963 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800964 ', N'DH51800964 ', N'DH51800964 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800965 ', N'DH51800965 ', N'DH51800965 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800980 ', N'DH51800980 ', N'DH51800980 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800991 ', N'DH51800991 ', N'DH51800991 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800992 ', N'DH51800992 ', N'DH51800992 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800994 ', N'DH51800994 ', N'DH51800994 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51800998 ', N'DH51800998 ', N'DH51800998 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801021 ', N'DH51801021 ', N'DH51801021 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801039 ', N'DH51801039 ', N'DH51801039 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801108 ', N'DH51801108 ', N'DH51801108 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801111 ', N'DH51801111 ', N'DH51801111 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801122 ', N'DH51801122 ', N'DH51801122 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801124 ', N'DH51801124 ', N'DH51801124 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801144 ', N'DH51801144 ', N'DH51801144 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801182 ', N'DH51801182 ', N'DH51801182 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801192 ', N'DH51801192 ', N'DH51801192 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801196 ', N'DH51801196 ', N'DH51801196 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801260 ', N'DH51801260 ', N'DH51801260 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801268 ', N'DH51801268 ', N'DH51801268 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801312 ', N'DH51801312 ', N'DH51801312 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801342 ', N'DH51801342 ', N'DH51801342 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801362 ', N'DH51801362 ', N'DH51801362 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801379 ', N'DH51801379 ', N'DH51801379 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801405 ', N'DH51801405 ', N'DH51801405 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801417 ', N'DH51801417 ', N'DH51801417 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801425 ', N'DH51801425 ', N'DH51801425 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801444 ', N'DH51801444 ', N'DH51801444 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801456 ', N'DH51801456 ', N'DH51801456 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801471 ', N'DH51801471 ', N'DH51801471 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801502 ', N'DH51801502 ', N'DH51801502 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801584 ', N'DH51801584 ', N'DH51801584 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801592 ', N'DH51801592 ', N'DH51801592 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801604 ', N'DH51801604 ', N'DH51801604 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801606 ', N'DH51801606 ', N'DH51801606 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801623 ', N'DH51801623 ', N'DH51801623 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801635 ', N'DH51801635 ', N'DH51801635 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801636 ', N'DH51801636 ', N'DH51801636 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801672 ', N'DH51801672 ', N'DH51801672 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801674 ', N'DH51801674 ', N'DH51801674 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801691 ', N'DH51801691 ', N'DH51801691 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801698 ', N'DH51801698 ', N'DH51801698 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801707 ', N'DH51801707 ', N'DH51801707 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801726 ', N'DH51801726 ', N'DH51801726 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801733 ', N'DH51801733 ', N'DH51801733 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801738 ', N'DH51801738 ', N'DH51801738 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801881 ', N'DH51801881 ', N'DH51801881 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801934 ', N'DH51801934 ', N'DH51801934 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801961 ', N'DH51801961 ', N'DH51801961 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801978 ', N'DH51801978 ', N'DH51801978 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51801984 ', N'DH51801984 ', N'DH51801984 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802007 ', N'DH51802007 ', N'DH51802007 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802009 ', N'DH51802009 ', N'DH51802009 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802012 ', N'DH51802012 ', N'DH51802012 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802024 ', N'DH51802024 ', N'DH51802024 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802030 ', N'DH51802030 ', N'DH51802030 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802058 ', N'DH51802058 ', N'DH51802058 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802064 ', N'DH51802064 ', N'DH51802064 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802067 ', N'DH51802067 ', N'DH51802067 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802091 ', N'DH51802091 ', N'DH51802091 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802094 ', N'DH51802094 ', N'DH51802094 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802099 ', N'DH51802099 ', N'DH51802099 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802110 ', N'DH51802110 ', N'DH51802110 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802129 ', N'DH51802129 ', N'DH51802129 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802158 ', N'DH51802158 ', N'DH51802158 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802218 ', N'DH51802218 ', N'DH51802218 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802262 ', N'DH51802262 ', N'DH51802262 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802290 ', N'DH51802290 ', N'DH51802290 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802294 ', N'DH51802294 ', N'DH51802294 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802325 ', N'DH51802325 ', N'DH51802325 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802337 ', N'DH51802337 ', N'DH51802337 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802374 ', N'DH51802374 ', N'DH51802374 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802381 ', N'DH51802381 ', N'DH51802381 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802382 ', N'DH51802382 ', N'DH51802382 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802384 ', N'DH51802384 ', N'DH51802384 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802387 ', N'DH51802387 ', N'DH51802387 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802389 ', N'DH51802389 ', N'DH51802389 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802391 ', N'DH51802391 ', N'DH51802391 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802443 ', N'DH51802443 ', N'DH51802443 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802448 ', N'DH51802448 ', N'DH51802448 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802473 ', N'DH51802473 ', N'DH51802473 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802504 ', N'DH51802504 ', N'DH51802504 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802511 ', N'DH51802511 ', N'DH51802511 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802512 ', N'DH51802512 ', N'DH51802512 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802538 ', N'DH51802538 ', N'DH51802538 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802541 ', N'DH51802541 ', N'DH51802541 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802544 ', N'DH51802544 ', N'DH51802544 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802580 ', N'DH51802580 ', N'DH51802580 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802624 ', N'DH51802624 ', N'DH51802624 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802629 ', N'DH51802629 ', N'DH51802629 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802640 ', N'DH51802640 ', N'DH51802640 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802697 ', N'DH51802697 ', N'DH51802697 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802700 ', N'DH51802700 ', N'DH51802700 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802752 ', N'DH51802752 ', N'DH51802752 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802776 ', N'DH51802776 ', N'DH51802776 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802799 ', N'DH51802799 ', N'DH51802799 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802808 ', N'DH51802808 ', N'DH51802808 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802827 ', N'DH51802827 ', N'DH51802827 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802893 ', N'DH51802893 ', N'DH51802893 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802913 ', N'DH51802913 ', N'DH51802913 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802933 ', N'DH51802933 ', N'DH51802933 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802954 ', N'DH51802954 ', N'DH51802954 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802975 ', N'DH51802975 ', N'DH51802975 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802981 ', N'DH51802981 ', N'DH51802981 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802987 ', N'DH51802987 ', N'DH51802987 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51802990 ', N'DH51802990 ', N'DH51802990 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803029 ', N'DH51803029 ', N'DH51803029 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803039 ', N'DH51803039 ', N'DH51803039 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803052 ', N'DH51803052 ', N'DH51803052 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803057 ', N'DH51803057 ', N'DH51803057 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803058 ', N'DH51803058 ', N'DH51803058 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803070 ', N'DH51803070 ', N'DH51803070 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803079 ', N'DH51803079 ', N'DH51803079 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803115 ', N'DH51803115 ', N'DH51803115 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803124 ', N'DH51803124 ', N'DH51803124 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803126 ', N'DH51803126 ', N'DH51803126 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803156 ', N'DH51803156 ', N'DH51803156 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803164 ', N'DH51803164 ', N'DH51803164 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803166 ', N'DH51803166 ', N'DH51803166 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803168 ', N'DH51803168 ', N'DH51803168 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803178 ', N'DH51803178 ', N'DH51803178 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803189 ', N'DH51803189 ', N'DH51803189 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803221 ', N'DH51803221 ', N'DH51803221 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803236 ', N'DH51803236 ', N'DH51803236 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803239 ', N'DH51803239 ', N'DH51803239 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803255 ', N'DH51803255 ', N'DH51803255 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803312 ', N'DH51803312 ', N'DH51803312 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803327 ', N'DH51803327 ', N'DH51803327 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803355 ', N'DH51803355 ', N'DH51803355 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803372 ', N'DH51803372 ', N'DH51803372 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803383 ', N'DH51803383 ', N'DH51803383 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803440 ', N'DH51803440 ', N'DH51803440 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803441 ', N'DH51803441 ', N'DH51803441 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803477 ', N'DH51803477 ', N'DH51803477 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803494 ', N'DH51803494 ', N'DH51803494 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803523 ', N'DH51803523 ', N'DH51803523 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803550 ', N'DH51803550 ', N'DH51803550 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803559 ', N'DH51803559 ', N'DH51803559 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803576 ', N'DH51803576 ', N'DH51803576 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803595 ', N'DH51803595 ', N'DH51803595 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803598 ', N'DH51803598 ', N'DH51803598 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803612 ', N'DH51803612 ', N'DH51803612 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803625 ', N'DH51803625 ', N'DH51803625 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803665 ', N'DH51803665 ', N'DH51803665 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803715 ', N'DH51803715 ', N'DH51803715 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803757 ', N'DH51803757 ', N'DH51803757 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803764 ', N'DH51803764 ', N'DH51803764 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803769 ', N'DH51803769 ', N'DH51803769 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803800 ', N'DH51803800 ', N'DH51803800 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51803935 ', N'DH51803935 ', N'DH51803935 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804098 ', N'DH51804098 ', N'DH51804098 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804107 ', N'DH51804107 ', N'DH51804107 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804123 ', N'DH51804123 ', N'DH51804123 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804141 ', N'DH51804141 ', N'DH51804141 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804249 ', N'DH51804249 ', N'DH51804249 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804303 ', N'DH51804303 ', N'DH51804303 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804310 ', N'DH51804310 ', N'DH51804310 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804331 ', N'DH51804331 ', N'DH51804331 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804376 ', N'DH51804376 ', N'DH51804376 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804380 ', N'DH51804380 ', N'DH51804380 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804386 ', N'DH51804386 ', N'DH51804386 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804398 ', N'DH51804398 ', N'DH51804398 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804418 ', N'DH51804418 ', N'DH51804418 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804430 ', N'DH51804430 ', N'DH51804430 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804453 ', N'DH51804453 ', N'DH51804453 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804500 ', N'DH51804500 ', N'DH51804500 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804511 ', N'DH51804511 ', N'DH51804511 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804528 ', N'DH51804528 ', N'DH51804528 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804536 ', N'DH51804536 ', N'DH51804536 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804542 ', N'DH51804542 ', N'DH51804542 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804576 ', N'DH51804576 ', N'DH51804576 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804614 ', N'DH51804614 ', N'DH51804614 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804616 ', N'DH51804616 ', N'DH51804616 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804706 ', N'DH51804706 ', N'DH51804706 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804755 ', N'DH51804755 ', N'DH51804755 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804772 ', N'DH51804772 ', N'DH51804772 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804821 ', N'DH51804821 ', N'DH51804821 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804825 ', N'DH51804825 ', N'DH51804825 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804835 ', N'DH51804835 ', N'DH51804835 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804851 ', N'DH51804851 ', N'DH51804851 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804894 ', N'123', N'DH51804894 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804901 ', N'DH51804901 ', N'DH51804901 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804942 ', N'DH51804942 ', N'DH51804942 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804948 ', N'DH51804948 ', N'DH51804948 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51804949 ', N'DH51804949 ', N'DH51804949 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805023 ', N'DH51805023 ', N'DH51805023 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805028 ', N'DH51805028 ', N'DH51805028 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805047 ', N'DH51805047 ', N'DH51805047 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805103 ', N'DH51805103 ', N'DH51805103 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805129 ', N'123', N'DH51805129 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805130 ', N'DH51805130 ', N'DH51805130 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805131 ', N'DH51805131 ', N'DH51805131 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805204 ', N'DH51805204 ', N'DH51805204 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805206 ', N'DH51805206 ', N'DH51805206 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805207 ', N'DH51805207 ', N'DH51805207 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805220 ', N'DH51805220 ', N'DH51805220 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805223 ', N'DH51805223 ', N'DH51805223 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805286 ', N'DH51805286 ', N'DH51805286 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805303 ', N'DH51805303 ', N'DH51805303 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805316 ', N'DH51805316 ', N'DH51805316 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805322 ', N'DH51805322 ', N'DH51805322 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805350 ', N'123', N'DH51805350 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805351 ', N'DH51805351 ', N'DH51805351 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805354 ', N'DH51805354 ', N'DH51805354 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805358 ', N'DH51805358 ', N'DH51805358 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805372 ', N'DH51805372 ', N'DH51805372 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805388 ', N'DH51805388 ', N'DH51805388 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805426 ', N'DH51805426 ', N'DH51805426 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805435 ', N'DH51805435 ', N'DH51805435 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805444 ', N'DH51805444 ', N'DH51805444 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805469 ', N'DH51805469 ', N'DH51805469 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805479 ', N'DH51805479 ', N'DH51805479 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805491 ', N'DH51805491 ', N'DH51805491 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805497 ', N'DH51805497 ', N'DH51805497 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805517 ', N'DH51805517 ', N'DH51805517 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805528 ', N'DH51805528 ', N'DH51805528 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805597 ', N'DH51805597 ', N'DH51805597 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805624 ', N'DH51805624 ', N'DH51805624 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805679 ', N'DH51805679 ', N'DH51805679 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805688 ', N'DH51805688 ', N'DH51805688 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805702 ', N'DH51805702 ', N'DH51805702 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805715 ', N'DH51805715 ', N'DH51805715 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805750 ', N'DH51805750 ', N'DH51805750 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805753 ', N'DH51805753 ', N'DH51805753 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805764 ', N'DH51805764 ', N'DH51805764 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805774 ', N'DH51805774 ', N'DH51805774 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805788 ', N'DH51805788 ', N'DH51805788 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805899 ', N'DH51805899 ', N'DH51805899 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805930 ', N'DH51805930 ', N'DH51805930 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51805934 ', N'DH51805934 ', N'DH51805934 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51806037 ', N'DH51806037 ', N'DH51806037 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51806039 ', N'DH51806039 ', N'DH51806039 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51806065 ', N'DH51806065 ', N'DH51806065 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51806068 ', N'DH51806068 ', N'DH51806068 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51806073 ', N'DH51806073 ', N'DH51806073 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51806091 ', N'DH51806091 ', N'DH51806091 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51806100 ', N'DH51806100 ', N'DH51806100 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51806426 ', N'DH51806426 ', N'DH51806426 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51808001 ', N'DH51808001 ', N'DH51808001 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51900713 ', N'DH51900713 ', N'DH51900713 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51900846 ', N'DH51900846 ', N'DH51900846 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51900990 ', N'DH51900990 ', N'DH51900990 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51901192 ', N'DH51901192 ', N'DH51901192 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51902283 ', N'DH51902283 ', N'DH51902283 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51902991 ', N'DH51902991 ', N'DH51902991 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51903919 ', N'DH51903919 ', N'DH51903919 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51903937 ', N'DH51903937 ', N'DH51903937 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51904075 ', N'DH51904075 ', N'DH51904075 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51904373 ', N'DH51904373 ', N'DH51904373 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51904681 ', N'DH51904681 ', N'DH51904681 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51904791 ', N'DH51904791 ', N'DH51904791 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51905085 ', N'DH51905085 ', N'DH51905085 ', 0, 2)
GO
INSERT [dbo].[web_user] ([username], [password], [mssv], [locked], [group]) VALUES (N'DH51905519 ', N'DH51905519 ', N'DH51905519 ', 0, 2)
GO
ALTER TABLE [dbo].[dangkymonhoc]  WITH CHECK ADD  CONSTRAINT [FK_dangkymonhoc_hocky] FOREIGN KEY([mahocky])
REFERENCES [dbo].[hocky] ([mahocky])
GO
ALTER TABLE [dbo].[dangkymonhoc] CHECK CONSTRAINT [FK_dangkymonhoc_hocky]
GO
ALTER TABLE [dbo].[dangkymonhoc]  WITH CHECK ADD  CONSTRAINT [FK_dangkymonhoc_monhoc] FOREIGN KEY([mamon])
REFERENCES [dbo].[monhoc] ([mamon])
GO
ALTER TABLE [dbo].[dangkymonhoc] CHECK CONSTRAINT [FK_dangkymonhoc_monhoc]
GO
ALTER TABLE [dbo].[dangkymonhoc]  WITH CHECK ADD  CONSTRAINT [FK_dangkymonhoc_web_user] FOREIGN KEY([mssv])
REFERENCES [dbo].[web_user] ([username])
GO
ALTER TABLE [dbo].[dangkymonhoc] CHECK CONSTRAINT [FK_dangkymonhoc_web_user]
GO
ALTER TABLE [dbo].[monhoc]  WITH CHECK ADD  CONSTRAINT [FK_monhoc_hocky] FOREIGN KEY([mahocky])
REFERENCES [dbo].[hocky] ([mahocky])
GO
ALTER TABLE [dbo].[monhoc] CHECK CONSTRAINT [FK_monhoc_hocky]
GO
ALTER TABLE [dbo].[monhoc]  WITH CHECK ADD  CONSTRAINT [FK_monhoc_loaimon] FOREIGN KEY([maloai])
REFERENCES [dbo].[loaimon] ([maloai])
GO
ALTER TABLE [dbo].[monhoc] CHECK CONSTRAINT [FK_monhoc_loaimon]
GO
ALTER TABLE [dbo].[monhocmodk]  WITH CHECK ADD  CONSTRAINT [FK_monhocmodk_hocky] FOREIGN KEY([mahocky])
REFERENCES [dbo].[hocky] ([mahocky])
GO
ALTER TABLE [dbo].[monhocmodk] CHECK CONSTRAINT [FK_monhocmodk_hocky]
GO
ALTER TABLE [dbo].[monhocmodk]  WITH CHECK ADD  CONSTRAINT [FK_monhocmodk_monhoc] FOREIGN KEY([mamon])
REFERENCES [dbo].[monhoc] ([mamon])
GO
ALTER TABLE [dbo].[monhocmodk] CHECK CONSTRAINT [FK_monhocmodk_monhoc]
GO
ALTER TABLE [dbo].[sinhvien]  WITH CHECK ADD  CONSTRAINT [FK_sinhvien_hedaotao] FOREIGN KEY([mahe])
REFERENCES [dbo].[hedaotao] ([mahe])
GO
ALTER TABLE [dbo].[sinhvien] CHECK CONSTRAINT [FK_sinhvien_hedaotao]
GO
ALTER TABLE [dbo].[sinhvien]  WITH CHECK ADD  CONSTRAINT [FK_sinhvien_lophoc] FOREIGN KEY([malop])
REFERENCES [dbo].[lophoc] ([malop])
GO
ALTER TABLE [dbo].[sinhvien] CHECK CONSTRAINT [FK_sinhvien_lophoc]
GO
ALTER TABLE [dbo].[web_user]  WITH CHECK ADD  CONSTRAINT [FK_web_user_sinhvien] FOREIGN KEY([mssv])
REFERENCES [dbo].[sinhvien] ([mssv])
GO
ALTER TABLE [dbo].[web_user] CHECK CONSTRAINT [FK_web_user_sinhvien]
GO
