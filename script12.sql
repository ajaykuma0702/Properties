USE [PropertiesDB]
GO
/****** Object:  Table [dbo].[Tbl_District]    Script Date: 11/28/2023 12:25:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_District](
	[District_Id] [int] IDENTITY(1,1) NOT NULL,
	[State_Id] [int] NULL,
	[District] [nvarchar](200) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[District_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Login]    Script Date: 11/28/2023 12:25:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mobile] [nvarchar](50) NULL,
	[Password] [nvarchar](200) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Property_Detail]    Script Date: 11/28/2023 12:25:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Property_Detail](
	[Property_Id] [int] IDENTITY(1,1) NOT NULL,
	[Type_Id] [int] NULL,
	[Owner_Name] [nvarchar](200) NULL,
	[Owner_Mobile_Number] [nvarchar](50) NULL,
	[Owener_Email] [nvarchar](200) NULL,
	[State_Id] [int] NULL,
	[District_Id] [int] NULL,
	[Area] [nvarchar](max) NULL,
	[Price] [nvarchar](100) NULL,
	[Property_Location] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK__Tbl_Prop__2757E6D61AD84F85] PRIMARY KEY CLUSTERED 
(
	[Property_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Property_Type]    Script Date: 11/28/2023 12:25:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Property_Type](
	[Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Type_Name] [nvarchar](300) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_State]    Script Date: 11/28/2023 12:25:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_State](
	[State_Id] [int] IDENTITY(1,1) NOT NULL,
	[State] [nvarchar](200) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[State_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_User_Registration]    Script Date: 11/28/2023 12:25:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_User_Registration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Mobile] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[Profile_Pic] [nvarchar](max) NULL,
	[Password] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Vendor_Registration]    Script Date: 11/28/2023 12:25:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Vendor_Registration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [nvarchar](100) NULL,
	[Last_Name] [varchar](50) NULL,
	[Email_Id] [nvarchar](200) NULL,
	[Mobile] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[State] [nvarchar](200) NOT NULL,
	[District] [nvarchar](200) NULL,
	[City_location] [nvarchar](max) NULL,
	[Pincode] [varchar](50) NULL,
	[Password] [nvarchar](200) NULL,
	[Re_Password] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[DateTime] [datetime] NULL,
 CONSTRAINT [PK__Tbl_Vend__3214EC077BBAF0F8] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_District] ON 

INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (1, 26, N'Agra', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (2, 26, N'Aligarh		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (3, 26, N' Prayagraj     ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (4, 26, N'Ambedkar Nagar', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (5, 26, N'Amethi		', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (6, 26, N'Amroha		', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (7, 26, N'Auraiya		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (8, 26, N'Azamgarh		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (9, 26, N'Baghpat		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (10, 26, N'Bahraich		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (11, 26, N'Ballia		', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (12, 26, N'Balrampur		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (13, 26, N'Banda			 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (14, 26, N'Barabanki		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (15, 26, N'Bareilly		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (16, 26, N'Basti			 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (17, 26, N'Bhadohi		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (18, 26, N'Bijnor		', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (19, 26, N'Budaun		', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (20, 26, N'Bulandshahr	 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (21, 26, N'Chandauli		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (22, 26, N'Chitrakoot	', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (23, 26, N'Deoria		', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (24, 26, N'Etah			 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (25, 26, N'Etawah		', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (26, 26, N'Faizabad		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (27, 26, N'Farrukhabad	 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (28, 26, N'Fatehpur		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (29, 26, N'Firozabad		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (30, 26, N'Gautam Budha   ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (31, 26, N'Ghaziabad		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (32, 26, N'Ghazipur		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (33, 26, N'Gonda			 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (34, 26, N'Gorakhpur		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (35, 26, N'Hamirpur		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (36, 26, N'Hapur			 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (37, 26, N'Hardoi		', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (38, 26, N'Hathras		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (39, 26, N'Jalaun		', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (40, 26, N'Jaunpur		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (41, 26, N'Jhansi		', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (42, 26, N' Amroha        ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (43, 26, N'Kannauj		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (44, 26, N'Kanpur Dehat	 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (45, 26, N'Kanpur Nagar	 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (46, 26, N'Kasganj		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (47, 26, N'Kaushambi		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (48, 26, N'Kushinagar	', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (49, 26, N'Lakhimpur Kheri', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (50, 26, N'Lalitpur		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (51, 26, N'Lucknow		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (52, 26, N'Maharajganj	 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (53, 26, N'Mahoba		', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (54, 26, N'Mainpuri		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (55, 26, N'Mathura		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (56, 26, N'Mau			 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (57, 26, N'Meerut		', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (58, 26, N'Mirzapur		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (59, 26, N'Moradabad		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (60, 26, N'Muzaffarnagar	 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (61, 26, N'Pilibhit		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (62, 26, N'Pratapgarh	', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (63, 26, N'Rae Bareli	', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (64, 26, N'Rampur		', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (65, 26, N'Saharanpur	', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (66, 26, N'Sambhal		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (67, 26, N'Sant Kabir Nagar', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (68, 26, N'Shahjahanpur	 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (69, 26, N'Shamli		', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (70, 26, N'Shravasti		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (71, 26, N'Siddharthnagar', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (72, 26, N'Sitapur		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (73, 26, N'Sonbhadra		 ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (74, 26, N'Sultanpur      ', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (75, 26, N'Unnao', 1)
INSERT [dbo].[Tbl_District] ([District_Id], [State_Id], [District], [IsActive]) VALUES (76, 26, N'Varanasi', 1)
SET IDENTITY_INSERT [dbo].[Tbl_District] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Property_Type] ON 

INSERT [dbo].[Tbl_Property_Type] ([Type_Id], [Type_Name], [IsActive]) VALUES (1, N'Buy', 1)
INSERT [dbo].[Tbl_Property_Type] ([Type_Id], [Type_Name], [IsActive]) VALUES (2, N'rent', 1)
INSERT [dbo].[Tbl_Property_Type] ([Type_Id], [Type_Name], [IsActive]) VALUES (3, N'Plot', 1)
INSERT [dbo].[Tbl_Property_Type] ([Type_Id], [Type_Name], [IsActive]) VALUES (4, N'Commercial', 1)
SET IDENTITY_INSERT [dbo].[Tbl_Property_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_State] ON 

INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (1, N'Andhra Pardesh', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (2, N'Arunachal Pradesh', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (3, N'Assam', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (4, N'Bihar', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (5, N'Chhattisgarh', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (6, N'Goa', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (7, N'Gujarat', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (8, N'Haryana', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (9, N'Himachal Pradesh', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (10, N'Jharkhand', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (11, N'Karnataka', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (12, N'Kerala', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (13, N'Madhya Pradesh', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (14, N'Maharashtra', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (15, N'Manipur', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (16, N'Meghalaya', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (17, N'Mizoram', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (18, N'Nagaland', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (19, N'Odisha', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (20, N'Punjab', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (21, N'Rajasthan', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (22, N'Sikkim', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (23, N'Tamil Nadu', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (24, N'Telangana', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (25, N'Tripura', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (26, N'Uttar Pradesh', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (27, N'Uttarakhand', 1)
INSERT [dbo].[Tbl_State] ([State_Id], [State], [IsActive]) VALUES (28, N'West Bengal', 1)
SET IDENTITY_INSERT [dbo].[Tbl_State] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_User_Registration] ON 

INSERT [dbo].[Tbl_User_Registration] ([Id], [Name], [Mobile], [Email], [Profile_Pic], [Password], [IsActive]) VALUES (1, N'mukim', N'6392677430', N'mukim@gmail.com', N'claco9.png', N'1234', 1)
INSERT [dbo].[Tbl_User_Registration] ([Id], [Name], [Mobile], [Email], [Profile_Pic], [Password], [IsActive]) VALUES (3, N'mukim', N'63926774130fg', N'mukim1@gmail.com', N'Claco Logo1.png', N'1234', 1)
INSERT [dbo].[Tbl_User_Registration] ([Id], [Name], [Mobile], [Email], [Profile_Pic], [Password], [IsActive]) VALUES (4, N'mukim', N'6392677431 ', N'mukim2@gmail.com', N'cap6551.png', N'1234', 1)
INSERT [dbo].[Tbl_User_Registration] ([Id], [Name], [Mobile], [Email], [Profile_Pic], [Password], [IsActive]) VALUES (5, N'shiv', N'8052734575', N'shiv@gmail.com', N'img6800.png', N'jsdjkl', 1)
INSERT [dbo].[Tbl_User_Registration] ([Id], [Name], [Mobile], [Email], [Profile_Pic], [Password], [IsActive]) VALUES (7, N'shiv', N'1234', N'kjklk', N'img40.png', N'wsd', 1)
INSERT [dbo].[Tbl_User_Registration] ([Id], [Name], [Mobile], [Email], [Profile_Pic], [Password], [IsActive]) VALUES (8, N'shafeek', N'1234567890', N'shafik@gmail.com', N'img71.png', N'shafeek', 1)
INSERT [dbo].[Tbl_User_Registration] ([Id], [Name], [Mobile], [Email], [Profile_Pic], [Password], [IsActive]) VALUES (9, N'niranjan', N'366453', N'mdkkwd;', N'img80.png', N'dnw', 1)
INSERT [dbo].[Tbl_User_Registration] ([Id], [Name], [Mobile], [Email], [Profile_Pic], [Password], [IsActive]) VALUES (10, N'Shivam ', N'8052121203', N'Mishra@gmail.com', N'taaza1.jpg', N'Love01', 1)
INSERT [dbo].[Tbl_User_Registration] ([Id], [Name], [Mobile], [Email], [Profile_Pic], [Password], [IsActive]) VALUES (11, N'rama', N'258', N'rama@gmail.com', N'videoplayback.3gpp', N'4321', 1)
INSERT [dbo].[Tbl_User_Registration] ([Id], [Name], [Mobile], [Email], [Profile_Pic], [Password], [IsActive]) VALUES (12, N'suraj', N'7379736073', N'suraj pandey', N'img6645.png', N'jsdjkl', 1)
SET IDENTITY_INSERT [dbo].[Tbl_User_Registration] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Vendor_Registration] ON 

INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (1, N'Mukim', N'ahmad', N'mukim@gmail.com', N'6392677430', N'male', N'u.p', N'lmp', N'mahewaganj', N'261506', N'1234', N'1234', 1, CAST(N'2023-11-24T18:13:15.623' AS DateTime))
INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (3, N'Mukim', N'ahmad', N'mukim878@gmail.com', N'6392677430', N'male', N'u.p', N'lmp', N'mahewaganj', N'261506', N'12346', N'1234', 1, CAST(N'2023-11-25T11:03:31.520' AS DateTime))
INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (4, N'Mukim', N'ahmad', N'mukim8I78@gmail.com', N'6392677430', N'male', N'u.p', N'lmp', N'mahewaganj', N'261506', N'12346', N'1234', 1, CAST(N'2023-11-25T11:06:19.000' AS DateTime))
INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (5, N'Mukim', N'ahmad', N'mukim56595985@gmail.com', N'6392677430', N'male', N'u.p', N'lmp', N'mahewaganj', N'261506', N'1234', N'1234', 1, CAST(N'2023-11-25T11:07:46.290' AS DateTime))
INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (6, N'Mukim', N'ahmad', N'muki5zm@gmail.com', N'6392677430', N'male', N'u.p', N'lmp', N'mahewaganj', N'261506', N'1234', N'1234', 1, CAST(N'2023-11-25T11:10:22.390' AS DateTime))
INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (7, N'Mukim', N'ahmad', N'muki4m@gmail.com', N'6392677430', N'Male', N'One', N'One', N'mahewaganj', N'rtt56', N'5645', N'56', 1, CAST(N'2023-11-25T13:37:35.260' AS DateTime))
INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (8, N'suraj', N'pandey', N'surajpandey73@gmail.com', N'8299851007', N'Male', N'One', N'One', N'mahewaganj', N'226024', N'123', N'123', 1, CAST(N'2023-11-25T14:26:41.647' AS DateTime))
INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (9, N'fgfd', N'gfhf', N'hgfh657@gmail.com', N'8052734575', N'Male', N'One', N'One', N'fdg', N'675', N'657', N'657', 1, CAST(N'2023-11-25T17:53:01.303' AS DateTime))
INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (10, N'SURAJ', N'gfhf', N'hgfh546@gmail.com', N'8052734575', N'Male', N'One', N'One', N'56', N'546', N'546', N'56', 1, CAST(N'2023-11-26T13:08:17.657' AS DateTime))
INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (11, N'Mukim', N'ahmad', N'mukimahmad111@gmail.com', N'6392677430', N'Male', N'One', N'One', N'mahewaganj', N'261506', N'1263', N'1234', 1, CAST(N'2023-11-26T16:04:09.750' AS DateTime))
INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (12, N'Mukim', N'ahmad', N'jkllml@gmail.com', N'6392677430', N'Male', N'One', N'One', N'mahewaganj', N'261506', N'1.3131', N'213136', 1, CAST(N'2023-11-26T17:49:56.953' AS DateTime))
INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (13, N'Mukim', N'ahmad', N'mukimlmp@gmail.com', N'6392677430', N'Male', N'One', N'2', N'mahewaganj', N'261506', N'1234', N'1234', 1, CAST(N'2023-11-27T12:38:30.370' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tbl_Vendor_Registration] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Tbl_Prop__622A225DB2A46C3F]    Script Date: 11/28/2023 12:25:42 PM ******/
ALTER TABLE [dbo].[Tbl_Property_Type] ADD UNIQUE NONCLUSTERED 
(
	[Type_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Tbl_User__6FAE0782F2CDBB27]    Script Date: 11/28/2023 12:25:42 PM ******/
ALTER TABLE [dbo].[Tbl_User_Registration] ADD UNIQUE NONCLUSTERED 
(
	[Mobile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Tbl_User__A9D105342A6896C1]    Script Date: 11/28/2023 12:25:42 PM ******/
ALTER TABLE [dbo].[Tbl_User_Registration] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Tbl_Vend__B79555BEBD6F7FE9]    Script Date: 11/28/2023 12:25:42 PM ******/
ALTER TABLE [dbo].[Tbl_Vendor_Registration] ADD  CONSTRAINT [UQ__Tbl_Vend__B79555BEBD6F7FE9] UNIQUE NONCLUSTERED 
(
	[Email_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tbl_District] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Tbl_Login] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Tbl_Property_Detail] ADD  CONSTRAINT [DF__Tbl_Prope__IsAct__49C3F6B7]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Tbl_Property_Type] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Tbl_State] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Tbl_User_Registration] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Tbl_Vendor_Registration] ADD  CONSTRAINT [DF__Tbl_Vendo__IsAct__4D94879B]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Tbl_District]  WITH CHECK ADD FOREIGN KEY([State_Id])
REFERENCES [dbo].[Tbl_State] ([State_Id])
GO
ALTER TABLE [dbo].[Tbl_Property_Detail]  WITH CHECK ADD  CONSTRAINT [FK__Tbl_Prope__Distr__4F7CD00D] FOREIGN KEY([District_Id])
REFERENCES [dbo].[Tbl_District] ([District_Id])
GO
ALTER TABLE [dbo].[Tbl_Property_Detail] CHECK CONSTRAINT [FK__Tbl_Prope__Distr__4F7CD00D]
GO
ALTER TABLE [dbo].[Tbl_Property_Detail]  WITH CHECK ADD  CONSTRAINT [FK__Tbl_Prope__Type___5070F446] FOREIGN KEY([Type_Id])
REFERENCES [dbo].[Tbl_Property_Type] ([Type_Id])
GO
ALTER TABLE [dbo].[Tbl_Property_Detail] CHECK CONSTRAINT [FK__Tbl_Prope__Type___5070F446]
GO
/****** Object:  StoredProcedure [dbo].[GetDis]    Script Date: 11/28/2023 12:25:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  PROCEDURE [dbo].[GetDis]
 @StateId VARCHAR(50)=null	
AS
BEGIN
	Select District_Id,District from Tbl_District where IsActive=1 AND State_Id=Isnull(@StateId,State_Id) ORDER BY District_Id desc
END
GO
/****** Object:  StoredProcedure [dbo].[GetPropertyType]    Script Date: 11/28/2023 12:25:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetPropertyType]
as 
begin
select * from Tbl_Property_Type
end
GO
/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 11/28/2023 12:25:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetUser]
  as
  begin
  select*from Tbl_User_Registration
  end
GO
/****** Object:  StoredProcedure [dbo].[InsertUserData]    Script Date: 11/28/2023 12:25:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertUserData]
    @First_Name nvarchar(100),
    @Last_Name varchar(50),
    @Email_Id nvarchar(200),
    @Mobile varchar(50),
    @Gender varchar(50),
	@State varchar(50),
    @District nvarchar(200),
    @City_location nvarchar(MAX),
    @Pincode varchar(50),
    @Password nvarchar(200),
    @Re_Password varchar(50),
    @IsActive bit,
    @DateTime datetime
AS
BEGIN
    INSERT INTO Tbl_Vendor_Registration
    VALUES (
        @First_Name,
        @Last_Name,
        @Email_Id,
        @Mobile,
        @Gender,
		@State,
        @District,
        @City_location,
        @Pincode,
        @Password,
        @Re_Password,
        @IsActive,
        GETDATE()  
    )
END
GO
/****** Object:  StoredProcedure [dbo].[proc_getstate]    Script Date: 11/28/2023 12:25:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_getstate]
as
begin
select * from Tbl_State
end
GO
/****** Object:  StoredProcedure [dbo].[User_Registration]    Script Date: 11/28/2023 12:25:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[User_Registration]
    @Name NVARCHAR(255),
    @Mobile NVARCHAR(20),
    @Email NVARCHAR(255),
    @Profile_Pic NVARCHAR(255),
    @Password NVARCHAR(255),
	@IsActive bit
AS
BEGIN

INSERT INTO Tbl_User_Registration  VALUES (@Name, @Mobile, @Email, @Profile_Pic, @Password,@IsActive);
end
GO
