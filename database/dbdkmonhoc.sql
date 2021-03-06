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
INSERT [dbo].[hedaotao] ([mahe], [hedaotao]) VALUES (N'CD        ', N'Cao ?????ng')
GO
INSERT [dbo].[hedaotao] ([mahe], [hedaotao]) VALUES (N'DH        ', N'?????i H???c')
GO
INSERT [dbo].[hedaotao] ([mahe], [hedaotao]) VALUES (N'LTDH      ', N'Li??n Th??ng ?????i H???c')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK1       ', N'H???c k??? 1')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK2       ', N'H???c k??? 2')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK3       ', N'H???c K??? 3')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK4       ', N'H???c k??? 4')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK5       ', N'H???c k??? 5')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK6       ', N'H???c k??? 6')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK7       ', N'H???c k??? 7')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HK8       ', N'H???c k??? 8')
GO
INSERT [dbo].[hocky] ([mahocky], [tenhocky]) VALUES (N'HKH       ', N'H???c k??? h??')
GO
INSERT [dbo].[loaimon] ([maloai], [tenloai]) VALUES (N'DA        ', N'????? ??n')
GO
INSERT [dbo].[loaimon] ([maloai], [tenloai]) VALUES (N'DC        ', N'?????i C????ng')
GO
INSERT [dbo].[loaimon] ([maloai], [tenloai]) VALUES (N'LT        ', N'L?? Thuy???t')
GO
INSERT [dbo].[loaimon] ([maloai], [tenloai]) VALUES (N'TC        ', N'Th??? Ch???t')
GO
INSERT [dbo].[loaimon] ([maloai], [tenloai]) VALUES (N'TH        ', N'Th???c H??nh')
GO
INSERT [dbo].[loaimon] ([maloai], [tenloai]) VALUES (N'TT        ', N'Th???c T???p')
GO
INSERT [dbo].[lophoc] ([malop], [tenlop]) VALUES (N'D18_TH12  ', N'L???p tin h???c 12')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03001   ', N'K??? thu???t s???', 2, 2, N'DC        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03002   ', N'Th?? nghi???m K??? thu???t s???', 1, 2, N'TH        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03003   ', N'K??? thu???t l???p tr??nh', 3, 3, N'LT        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03004   ', N'Th???c h??nh K??? thu???t l???p tr??nh', 1, 2, N'TH        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03005   ', N'To??n tin h???c', 3, 3, N'DC        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03006   ', N'Nh???p m??n c??ng t??c k??? s??', 1, 1, N'LT        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03007   ', N'C???u tr??c d??? li???u v?? thu???t gi???i', 3, 3, N'LT        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03008   ', N'C?? s??? d??? li???u', 3, 3, N'LT        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03009   ', N'H??? ??i???u h??nh', 3, 3, N'LT        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03010   ', N'Th???c h??nh C???u tr??c d??? li???u v?? thu???t gi???i', 1, 2, N'TH        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03011   ', N'Th???c h??nh C?? s??? d??? li???u', 1, 2, N'TH        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03012   ', N'Th???c h??nh H??? ??i???u h??nh', 1, 2, N'TH        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03013   ', N'C??ng ngh??? ph???n m???m', 3, 3, N'LT        ', N'HK5       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03014   ', N'????? ??n tin h???c', 2, 6, N'DA        ', N'HK5       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03015   ', N'L???p tr??nh h?????ng ?????i t?????ng', 3, 3, N'LT        ', N'HK5       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03016   ', N'Th???c h??nh L???p tr??nh h?????ng ?????i t?????ng', 1, 2, N'TH        ', N'HK5       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03017   ', N'L???p tr??nh ???ng d???ng c?? s??? d??? li???u', 3, 3, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03020   ', N'Qu???n tr??? c?? s??? d??? li???u', 3, 3, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03021   ', N'Seminar ngh??? nghi???p', 1, 2, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03022   ', N'Qu???n l?? d??? ??n', 3, 3, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03023   ', N'Th????ng m???i ??i???n t???', 3, 3, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03024   ', N'An ninh m??y t??nh', 2, 2, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03025   ', N'Th???c t???p An ninh m??y t??nh', 1, 2, N'TH        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03026   ', N'M?? h??a ???ng d???ng', 3, 3, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03027   ', N'Th???c h??nh H??? qu???n tr??? c?? s?? d??? li???u', 1, 2, N'TH        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03028   ', N'Th???c h??nh L???p tr??nh ???ng d???ng c?? s??? d??? li???u', 1, 2, N'TH        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03029   ', N'????? ??n Chuy??n ng??nh', 2, 6, N'DA        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03030   ', N'????? ??n Ph??n t??ch thi???t k??? h??? th???ng th??ng tin', 2, 6, N'DA        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03033   ', N'Ph??t tri???n ph???n m???m ngu???n m???', 3, 3, N'LT        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03034   ', N'Th???c h??nh Ph??t tri???n ph???n m???m ngu???n m???', 1, 2, N'TH        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03036   ', N'L???p tr??nh Web', 3, 3, N'LT        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03037   ', N'L???p tr??nh Windows', 3, 3, N'LT        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03038   ', N'L???p tr??nh cho thi???t b??? di ?????ng', 3, 3, N'LT        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03039   ', N'Th???c h??nh L???p tr??nh Web', 1, 2, N'TH        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03040   ', N'Th???c h??nh L???p tr??nh Windows', 1, 2, N'TH        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03041   ', N'Th???c h??nh L???p tr??nh cho thi???t b??? di ?????ng', 1, 2, N'TH        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03042   ', N'Tri???n khai h??? th???ng th??ng tin', 3, 3, N'LT        ', N'HK8       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03043   ', N'X??y d???ng ph???n m???m Web', 3, 3, N'LT        ', N'HK8       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03044   ', N'X??y d???ng ph???n m???m Windows', 3, 3, N'LT        ', N'HK8       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03045   ', N'Ki???m th??? ph???n m???m', 3, 3, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03151   ', N'Th???c t???p t???t nghi???p', 2, 4, N'TT        ', N'HK8       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS03153   ', N'????? ??n / Kh??a lu???n t???t nghi???p', 5, 0, N'DA        ', N'HK8       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09001   ', N'Nh???p m??n l???p tr??nh', 3, 3, N'LT        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09002   ', N'Th???c h??nh Nh???p m??n l???p tr??nh', 1, 2, N'TH        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09003   ', N'Nh???p m??n Web v?? ???ng d???ng', 3, 3, N'LT        ', N'HK5       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09004   ', N'Th???c h??nh Nh???p m??n Web v?? ???ng d???ng', 1, 2, N'TH        ', N'HK5       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09005   ', N'Nh???p m??n c???u tr??c d??? li???u', 3, 3, N'LT        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09006   ', N'T??? ch???c c???u tr??c m??y t??nh', 3, 3, N'LT        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09007   ', N'Th???c h??nh Nh???p m??n c???u tr??c d??? li???u', 1, 2, N'TH        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09008   ', N'Th???c h??nh T??? ch???c c???u tr??c m??y t??nh', 1, 2, N'TH        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09009   ', N'M???ng m??y t??nh', 3, 3, N'LT        ', N'HK5       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09010   ', N'Ph??n t??ch thi???t k??? h??? th???ng th??ng tin', 3, 3, N'LT        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'CS09011   ', N'Qu???n tr??? m???ng', 3, 3, N'LT        ', N'HK6       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS09011   ', N'KHXHNV_?????i c????ng v??n h??a Vi???t Nam', 2, 2, N'DC        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS09012   ', N'KHXHNV_K??? n??ng giao ti???p', 2, 3, N'DC        ', N'HK7       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS19001   ', N'Ti???ng Anh 1', 2, 3, N'DC        ', N'HK1       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS19002   ', N'Ti???ng Anh 2', 2, 3, N'DC        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS19003   ', N'Ti???ng Anh 3', 2, 3, N'DC        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS19004   ', N'Ti???ng Anh 4', 2, 3, N'DC        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS29001   ', N'Ph??p lu???t Vi???t Nam ?????i c????ng', 3, 3, N'DC        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS33001   ', N'To??n A1 (H??m 1 bi???n, chu???i)', 4, 4, N'LT        ', N'HK1       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS33002   ', N'To??n A2 (H??m nhi???u bi???n, gi???i t??ch vec t??)', 4, 2, N'DC        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS33003   ', N'To??n A3 (?????i s??? tuy???n t??nh)', 3, 3, N'DC        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS43001   ', N'V???t l?? 1', 3, 3, N'DC        ', N'HK1       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS43002   ', N'V???t l?? 2', 4, 3, N'DC        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS49004   ', N'Th?? nghi???m V???t l??_Ph???n 1', 1, 1, N'TH        ', N'HK1       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS49005   ', N'Th?? nghi???m V???t l??_Ph???n 2', 1, 1, N'TH        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS59001   ', N'Tin h???c ?????i c????ng', 2, 2, N'DC        ', N'HK1       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS59002   ', N'Th???c h??nh Tin h???c ?????i c????ng', 2, 3, N'TH        ', N'HK1       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS79001   ', N'Nh???ng nguy??n l?? c?? b???n c???a ch??? ngh??a M??c - L??nin', 4, 5, N'DC        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS79003   ', N'???????ng l???i c??ch m???ng c???a ?????ng C???ng s???n Vi???t Nam', 3, 3, N'DC        ', N'HK4       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS79004   ', N'L?? lu???n ch??nh tr??? cu???i kh??a', 0, 2, N'DC        ', N'HK8       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS79009   ', N'T?? t?????ng H??? Ch?? Minh', 2, 2, N'DC        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS93003   ', N'Gi??o d???c th??? ch???t 3', 0, 2, N'TC        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS93004   ', N'Gi??o d???c th??? ch???t 4', 0, 2, N'TC        ', N'HK3       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS99001   ', N'Gi??o d???c th??? ch???t 1', 0, 2, N'TC        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'GS99002   ', N'Gi??o d???c th??? ch???t 2', 0, 2, N'TC        ', N'HK2       ')
GO
INSERT [dbo].[monhoc] ([mamon], [tenmon], [sotinchi], [sotinchihocphi], [maloai], [mahocky]) VALUES (N'MI03002   ', N'Gi??o d???c qu???c ph??ng (??H)', 0, 0, N'TC        ', N'HK4       ')
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
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51602345 ', N'Nguy???n Quang', N'Tri???t', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51603201 ', N'?????ng Qu???c', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51700384 ', N'Nguy???n Minh', N'Quang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51700421 ', N'H?? Th??? Kim', N'H????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51701216 ', N'Ng?? Ho??ng', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51701666 ', N'Ph???m Ph??', N'V??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51702712 ', N'V?? C??ng', N'Minh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51703187 ', N'L?? Th??nh', N'C??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51703213 ', N'Hu???nh Tu???n', N'Di???u', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51703441 ', N'Nguy???n Vi???t', N'Ho??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51703677 ', N'Tr???n Minh', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51703938 ', N'Nguy???n H???ng', N'Phi', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51704388 ', N'B??i ?????c', N'Trung', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800004 ', N'Tr???n Ph??', N'Y??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800013 ', N'Mai Ch??', N'Kh??i', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800023 ', N'Tr????ng Th??i Thi???n', N'Ho??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800027 ', N'L?? ????nh', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800041 ', N'Tr???n V??n', N'Tr?????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800043 ', N'Phan Ho??ng', N'D??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800049 ', N'????? V??n Gia', N'Huy??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800070 ', N'Nguy???n Nh???t', N'Nam', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800079 ', N'Nguy???n Th??? Ng???c', N'Trang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800085 ', N'Nguy???n T??ng', N'Th???o', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800094 ', N'L?? Nh???t', N'Ti???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800124 ', N'Nguy???n Tr???n Tu???n', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800131 ', N'Ng?? ????nh', N'Khang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800141 ', N'V?? S???', N'H??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800143 ', N'Nguy???n Th??? Kh??nh', N'Vy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800144 ', N'Ho??ng Trung', N'Hi???u', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800156 ', N'Nguy???n L??u ?????c', N'T??i', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800165 ', N'Nguy???n Tr???n Tu???n', N'Kh??i', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800174 ', N'Nguy???n Ng???c Ng??n', N'H??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800191 ', N'Nguy???n Nh???t', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800195 ', N'Ph????ng Thanh', N'T??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800203 ', N'D????ng Ho??ng', N'Xu??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800211 ', N'V?? Ho??ng', N'Th???ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800220 ', N'Nguy???n T???n', N'Tin', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800223 ', N'Nguy???n Thi??n', N'Vinh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800224 ', N'Tr???n ???????ng', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800232 ', N'Tr????ng Ch??', N'B???u', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800242 ', N'Nguy???n Tr???ng', N'Nh??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800321 ', N'Nguy???n Anh', N'Khoa', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800367 ', N'Phan Ch??u', N'?????c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800369 ', N'Tr???n Kim', N'Ho??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800372 ', N'Hu???nh Qu???c', N'Tu???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800380 ', N'B??i Thanh', N'Tr???ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800394 ', N'Nguy???n Ng???c', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800439 ', N'Nguy???n V??n', N'H???u', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800497 ', N'Nguy???n Tr???n Vi???t', N'Th???ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800512 ', N'Nguy???n Ho??ng', N'Ch????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800516 ', N'????? ???c', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800518 ', N'Nguy???n V?? Duy T??', N'Vinh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800534 ', N'Nguy???n Minh', N'Hi???u', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800548 ', N'L?? Th??? Kim', N'Ng??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800555 ', N'Nguy???n Anh Huy', N'B???o', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800556 ', N'????? Huy', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800586 ', N'L?? Nguy???n ??nh', N'Ti??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800612 ', N'Nguy???n Th???o', N'Vy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800621 ', N'Tr???n Qu???c', N'Minh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800622 ', N'Nguy???n Hu???nh L???t', N'Minh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800658 ', N'L?? Ng???c', N'Sang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800663 ', N'Nguy???n Ho??n', N'Kha', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800671 ', N'?????ng Ph??c', N'H???u', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800686 ', N'Nguy???n Anh', N'Ho??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800687 ', N'Nguy???n Thi??n', N'Ph??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800688 ', N'L?? Tr???n', N'?????c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800692 ', N'Nguy???n D????ng Anh', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800699 ', N'Ph???m H???u', N'Ph?????c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800705 ', N'Chiu Th??y', N'T???', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800724 ', N'Nguy???n Th??nh', N'An', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800726 ', N'L?? Qu???c', N'Kh??nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800736 ', N'?????ng Ki???n', N'Phong', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800744 ', N'T?? Qu???c', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800753 ', N'Nguy???n Nh???t', N'T??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800766 ', N'Ph???m Ti???n', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800769 ', N'Nguy???n Thanh', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800827 ', N'D????ng Tr?????ng', N'Giang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800835 ', N'?????ng ????nh', N'Qu??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800850 ', N'Nguy???n Thanh', N'To??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800859 ', N'H??ng Ng???c', N'H??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800877 ', N'Nguy???n Qu???c', N'V????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800895 ', N'Ph???m ?????c', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800909 ', N'Ng?? Gia', N'Ph????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800925 ', N'Nguy???n Hi???u', N'Ngh??a', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800963 ', N'Nguy???n V?? ?????c', N'Anh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800964 ', N'Nguy???n ??o??n Gia', N'Thu???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800965 ', N'Nguy???n Xu??n Thanh', N'Sang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800980 ', N'L?? Nh???t', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800991 ', N'Nguy???n Long', N'?????c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800992 ', N'Ho??ng Trung', N'Nam', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800994 ', N'??inh Ho??ng Minh', N'M???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51800998 ', N'H??? ????ng', N'Quang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801021 ', N'Thi???u V??n V??', N'T??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801039 ', N'V?? V??n', N'Thi???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801108 ', N'Nguy???n Xu??n', N'To??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801111 ', N'Tr???n Thanh', N'??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801122 ', N'Mai Hu???nh', N'Tr?????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801124 ', N'Nguy???n Ph???m C??ng', N'Khang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801144 ', N'L?? Duy', N'Anh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801182 ', N'Tr???n Qu???c', N'Tr???ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801192 ', N'Nguy???n Ph???m C??ng', N'Minh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801196 ', N'Nguy???n Tr???n Ch??nh', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801260 ', N'Nguy???n Anh', N'Th??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801268 ', N'Nguy???n Ho??ng', N'T??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801312 ', N'Nguy???n T???n Nam', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801342 ', N'Phan L?? H???u', N'Nh??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801362 ', N'Ph???m Ph??c', N'H???u', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801379 ', N'Ng?? Minh', N'?????t', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801405 ', N'T??ng Quang', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801417 ', N'Nguy???n Thanh', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801425 ', N'T??? B???nh', N'Qu??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801444 ', N'????o Nguy???n H???ng', N'Nhung', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801456 ', N'L?? Anh', N'H??o', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801471 ', N'L?? C?????ng', N'Th???nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801502 ', N'L?? Tri???u', N'Lu??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801584 ', N'V?? Ph????ng', N'Nam', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801592 ', N'Ph???m C??ng', N'Minh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801604 ', N'Ph???m Tu???n', N'C???nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801606 ', N'B??i Qu???c', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801623 ', N'Nguy???n Ho??ng Minh', N'Thy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801635 ', N'Nguy???n Gia', N'Kh??nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801636 ', N'Hu???nh Tr????ng T???n', N'An', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801672 ', N'L?? Tr???n', N'L???i', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801674 ', N'Tr???n Qu???c', N'V????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801691 ', N'Nguy???n C??ng', N'T??nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801698 ', N'Nguy???n Ng???c', N'Th??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801707 ', N'Nguy???n Quang', N'Th??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801726 ', N'L?? V??n', N'Hi???u', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801733 ', N'V?? Anh', N'Khoa', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801738 ', N'V?? Xu??n', N'K???', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801881 ', N'Nguy???n L?? Tr?????ng', N'Thi???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801934 ', N'Nguy???n Th??? M???', N'Kim', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801961 ', N'Phan V??n', N'Th??nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801978 ', N'Cao Nh???t', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51801984 ', N'L?? H???ng Ch??', N'Hi???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802007 ', N'Tr???n B???o', N'Ti???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802009 ', N'Ph???m Anh', N'Thi', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802012 ', N'L?? Th??i', N'Th??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802024 ', N'Ng?? H???ng', N'Ph????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802030 ', N'L?? Ho??ng', N'Anh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802058 ', N'V?? ?????c An', N'Khang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802064 ', N'Tr???n ????nh', N'????', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802067 ', N'Nguy???n Tr???ng', N'Th??nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802091 ', N'B??i Ph???m Ph??', N'L??m', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802094 ', N'H??? Anh', N'V??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802099 ', N'Tr???n Nh???t', N'B???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802110 ', N'Nguy???n Duy', N'Linh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802129 ', N'D????ng Minh', N'Danh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802158 ', N'Nguy???n V????ng V??n', N'Tr?????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802218 ', N'Nguy???n Ng???c', N'????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802262 ', N'Nguy???n T???n', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802290 ', N'Nguy???n Kim', N'Hi???u', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802294 ', N'Ph???m Ph??', N'T??i', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802325 ', N'L?? Th??? Th??y', N'Ho??i', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802337 ', N'L?? Tr???n Trung', N'H???u', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802374 ', N'Hu???nh T???n', N'Ti???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802381 ', N'Ph???m Thanh', N'?????c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802382 ', N'B??i T???n', N'?????t', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802384 ', N'Nguy???n Ch??u To??n', N'Qu???c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802387 ', N'Cao T??i', N'L???c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802389 ', N'????? Qu???c', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802391 ', N'Ng?? Xu??n', N'Tr??c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802443 ', N'Ph???m T???n', N'?????t', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802448 ', N'Ho??ng Qu???c', N'?????t', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802473 ', N'Nguy???n Th??? H???ng', N'Ng???c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802504 ', N'D????ng Nh???t', N'Anh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802511 ', N'Tr???n Xu??n', N'Nh??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802512 ', N'L?? Anh', N'Phi', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802538 ', N'V?? C??ng', N'Tr?????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802541 ', N'Nguy???n H???u', N'Vinh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802544 ', N'L?? Ho??ng Tr???ng', N'T??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802580 ', N'??inh Ng???c H???i', N'????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802624 ', N'Hu???nh Thanh', N'Ph??t', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802629 ', N'Cao D????ng', N'Tr???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802640 ', N'L?? ????nh', N'M???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802697 ', N'Phan Nguy???n Ho??i', N'An', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802700 ', N'Ng?? Thanh', N'Danh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802752 ', N'Ph???m Anh', N'Qu???c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802776 ', N'Nguy???n ?????c', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802799 ', N'V?? Thanh', N'T??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802808 ', N'H??? Ho??ng', N'Dung', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802827 ', N'Ch????ng Thi???u', N'Phong', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802893 ', N'Hu???nh T???n', N'Ph??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802913 ', N'Tr????ng Nguy???n Minh', N'??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802933 ', N'Tr???n Ng???c', N'Trung', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802954 ', N'Nguy???n Vi???t', N'Th??nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802975 ', N'Th??i Tr????ng ????ng', N'Khoa', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802981 ', N'L?? Minh', N'T??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802987 ', N'L??m H???ng', N'H???i', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51802990 ', N'Hu???nh Ph??', N'Qu??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803029 ', N'H???ng Qu???c', N'B??nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803039 ', N'????? Ti???n', N'Th???nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803052 ', N'Chung Xu??n', N'Th???nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803057 ', N'Tr???n Anh', N'Tu???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803058 ', N'Phan Th??nh', N'Tr??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803070 ', N'Nguy???n ????? Minh', N'Nh???t', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803079 ', N'Nguy???n Hu???nh Kh??nh', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803115 ', N'Tr???n Minh', N'Tu???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803124 ', N'Ng?? Gia', N'B???o', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803126 ', N'Nguy???n Ph????ng Ho??i', N'Vi???t', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803156 ', N'Nguy???n C??ng H???i', N'Nam', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803164 ', N'Nguy???n Quang', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803166 ', N'V?? Ch??', N'C?????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803168 ', N'Ho??ng ?????c', N'C??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803178 ', N'Tr???n Quang', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803189 ', N'Nguy???n V??n', N'Th??nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803221 ', N'Nguy???n Qu???c', N'Th???ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803236 ', N'V?? Minh', N'Khang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803239 ', N'Ph???m Nguy???n Anh', N'Tr?????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803255 ', N'H??? H???u', N'Ch??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803312 ', N'Tr???n Minh', N'Hi???u', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803327 ', N'V?? C??ng Tu???n', N'Anh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803355 ', N'Phan Anh', N'Minh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803372 ', N'L?? Thanh', N'To??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803383 ', N'L????ng Gia', N'Thu???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803440 ', N'L?? Duy', N'Tuy??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803441 ', N'Tr???n Thanh', N'T??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803477 ', N'????? Nh??', N'Vi???t', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803494 ', N'Nguy???n Ng???c', N'Khoa', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803523 ', N'Qu??ch ?????i', N'Tri???u', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803550 ', N'L?? Ph?????c', N'Th???nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803559 ', N'L?? Nguy???n T???t', N'Th???ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803576 ', N'Nguy???n ?????c', N'Nh??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803595 ', N'Ph???m L??', N'H??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803598 ', N'L?? V??n H??ng', N'Minh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803612 ', N'V?? Tu???n', N'Ngh??a', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803625 ', N'Tr???n Ch??', N'L??m', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803665 ', N'?????ng V??n', N'Hi???u', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803715 ', N'Nguy???n Th??i', N'V???', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803757 ', N'Ho??ng Thanh', N'Tu???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803764 ', N'Mai Gia', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803769 ', N'Tr???n B???o', N'To??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803800 ', N'Nguy???n Anh', N'V??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51803935 ', N'Hu???nh Qu???c', N'D????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804098 ', N'Nguy???n Ho??ng', N'B???o', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804107 ', N'Cao Chi???n', N'H??o', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804123 ', N'V?? Kh??nh', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804141 ', N'Nguy???n Tr???ng', N'Tr??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804249 ', N'T???ng Kh??nh Nh???t', N'An', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804303 ', N'Ph???m Qu???c', N'??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804310 ', N'V?? Ng???c', N'B???i', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804331 ', N'Nguy???n Duy', N'B???o', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804376 ', N'L?? Tr??', N'C?????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804380 ', N'Ng?? Anh', N'C????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804386 ', N'Nguy???n Th??? Ng???c', N'Di???m', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804398 ', N'V??ng Say', N'D???u', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804418 ', N'L???c H???ng', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804430 ', N'Tr???n Kh??nh', N'Duy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804453 ', N'Ph???m ????ng H???i', N'D????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804500 ', N'Tr???n Tu???n', N'?????i', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804511 ', N'Hu???nh Trung', N'????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804528 ', N'Nguy???n Th??nh', N'?????t', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804536 ', N'T??n Qu???c', N'?????t', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804542 ', N'Tr???n H??', N'???????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804576 ', N'L??u V???nh', N'H??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804614 ', N'L?? V??n', N'Hi???p', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804616 ', N'Tr???n Ho??ng', N'Hi???p', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804706 ', N'V?? Huy', N'Ho??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804755 ', N'L?? Thanh', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804772 ', N'Tr???n Nguy???n Qu???c', N'Huy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804821 ', N'Cao V??', N'Khang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804825 ', N'H?? Tr??', N'Khang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804835 ', N'Nguy???n Tu???n', N'Khang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804851 ', N'Nguy???n Qu???c', N'Kh??nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804894 ', N'Phan Th??? T??', N'Khuy??n', 0, CAST(N'2000-11-18' AS Date), CAST(N'2018-08-19' AS Date), N'D18_TH12  ', N'DH        ')
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804901 ', N'Ho??ng Trung', N'Ki??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804942 ', N'?????ng Ph?????c', N'L???c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804948 ', N'Nguy???n T???n', N'L???c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51804949 ', N'Nguy???n Xu??n', N'L???c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805023 ', N'Nguy???n Ho??ng', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805028 ', N'Nguy???n Nh???', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805047 ', N'Tr???n Th??nh', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805103 ', N'Ph???m V??n', N'M???nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805129 ', N'Ph???m D????ng Ho??i', N'Nam', 1, CAST(N'2000-11-12' AS Date), CAST(N'2018-08-19' AS Date), N'D18_TH12  ', N'DH        ')
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805130 ', N'Ph???m Ho??ng', N'Nam', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805131 ', N'T??n B???nh', N'Nam', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805204 ', N'Tr???n Th???', N'Nguy???t', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805206 ', N'Hu???nh C??ng', N'Nh??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805207 ', N'Tr???n ?????i', N'Nh??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805220 ', N'Nguy???n Tr???ng', N'Nh??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805223 ', N'Tr???n Thi???n Th??nh', N'Nh??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805286 ', N'Ph???m Th??? Hu???nh', N'Nh??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805303 ', N'Nguy???n Vi???t', N'Ph??p', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805316 ', N'Nguy???n T???n', N'Ph??t', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805322 ', N'Tr???n M??nh', N'Ph??t', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805350 ', N'Nguy???n Phong', N'Ph??', 1, CAST(N'2000-04-10' AS Date), CAST(N'2018-08-19' AS Date), N'D18_TH12  ', N'DH        ')
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805351 ', N'Ph???m Minh', N'Ph??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805354 ', N'Tr???n Huy', N'Ph??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805358 ', N'????o Thi??n', N'Ph??c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805372 ', N'Tr???n B???o', N'Ph??c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805388 ', N'B??i Ho??ng', N'Ph????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805426 ', N'Tr???n Minh', N'Quang', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805435 ', N'Nguy???n Thanh', N'Qu??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805444 ', N'??inh Ki???n', N'Qu???c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805469 ', N'Tr???n ????nh', N'Ri', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805479 ', N'T??? ????ng', N'S??ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805491 ', N'Nguy???n Thanh', N'S?????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805497 ', N'Mai Tr????ng', N'T??i', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805517 ', N'Ao Nh???t', N'T??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805528 ', N'?????ng H???ng B???o', N'Th??i', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805597 ', N'Lai ?????ng H???ng', N'Thi???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805624 ', N'Nguy???n T???n', N'Th???nh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805679 ', N'Ph???m Thanh', N'Thu???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805688 ', N'Tr???n Th??? Ng???c', N'Th??y', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805702 ', N'L?? Ho??ng', N'Th??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805715 ', N'Ng?? Th??y', N'Th????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805750 ', N'Nguy???n Ho??ng', N'Ti???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805753 ', N'Nh??m Trung', N'Ti???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805764 ', N'Nguy???n ?????ng', N'T??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805774 ', N'Nguy???n Thanh', N'T???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805788 ', N'Tr????ng Ng???c', N'To??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805899 ', N'B??i L?? Ho??ng Nh???t', N'Tr?????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805930 ', N'L?? Minh', N'T??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51805934 ', N'Nguy???n Minh', N'T??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806037 ', N'Ng?? Gia', N'Vinh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806039 ', N'Nguy???n H???u L??', N'Vinh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806065 ', N'Phan Mai Thi??n', N'V??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806068 ', N'Tr???n Tu???n', N'V??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806073 ', N'Ph???m ????nh', N'V????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806091 ', N'Nguy???n H???i', N'Vy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806100 ', N'Tr???n Kh??nh', N'Vy', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51806426 ', N'Ho??ng Ng???c', N'H??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51808001 ', N'Th??i T??', N'Nghi', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51900713 ', N'D????ng Ng???c', N'Nguy??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51900846 ', N'Nguy???n Ti???n', N'?????t', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51900990 ', N'Hu???nh Thanh', N'V???', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51901192 ', N'Nguy???n Gia', N'V??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51902283 ', N'Ph???m T???n', N'Thu???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51902991 ', N'Ho??ng Nguy???n Ho??i', N'Th????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51903919 ', N'Nguy???n Th??nh', N'Long', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51903937 ', N'Nguy???n Ph??c', N'L???c', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51904075 ', N'Nguy???n Tr???ng', N'Ngh??a', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51904373 ', N'?????ng Th??i', N'S??n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51904681 ', N'Nguy???n Thanh', N'Tr??', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51904791 ', N'Tr???n Minh', N'Tr?????ng', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51905085 ', N'L?? Ho??ng', N'Tu???n', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[sinhvien] ([mssv], [hodem], [ten], [gioitinh], [ngaysinh], [namvao], [malop], [mahe]) VALUES (N'DH51905519 ', N'H?? Trung', N'Phi', NULL, NULL, NULL, NULL, NULL)
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
