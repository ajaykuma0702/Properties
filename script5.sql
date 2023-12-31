USE [PropertiesDB]
GO
/****** Object:  Table [dbo].[Tbl_Vendor_Registration]    Script Date: 12/2/2023 12:26:21 PM ******/
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
INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (14, N'Mukim', N'ahmad', N'mudfgvdkim@gmail.com', N'6392677430', N'Male', N'26', N'51', N'1', N'261506', N'123', N'123', 1, CAST(N'2023-11-29T12:36:16.110' AS DateTime))
INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (16, N'shafeek', N'ahmad', N'mo@gmail.com', N'9794140419', N'Male', N'26', N'51', N'1', N'261507', N'12', N'12', 1, CAST(N'2023-11-29T12:44:08.357' AS DateTime))
INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (17, N'21', N'12', N'hgfh2@gmail.com', N'8052734575', N'Male', N'26', N'51', N'1', N'564567', N'1', N'1', 1, CAST(N'2023-11-29T13:05:56.030' AS DateTime))
INSERT [dbo].[Tbl_Vendor_Registration] ([Id], [First_Name], [Last_Name], [Email_Id], [Mobile], [Gender], [State], [District], [City_location], [Pincode], [Password], [Re_Password], [IsActive], [DateTime]) VALUES (18, N'Mukim', N'ahmad', N'mukim1@gmail.com', N'6392677430', N'Male', N'26', N'51', N'1', N'261506', N'1', N'1', 1, CAST(N'2023-12-02T11:06:56.883' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tbl_Vendor_Registration] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Tbl_Vend__B79555BEBD6F7FE9]    Script Date: 12/2/2023 12:26:21 PM ******/
ALTER TABLE [dbo].[Tbl_Vendor_Registration] ADD  CONSTRAINT [UQ__Tbl_Vend__B79555BEBD6F7FE9] UNIQUE NONCLUSTERED 
(
	[Email_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tbl_Vendor_Registration] ADD  CONSTRAINT [DF__Tbl_Vendo__IsAct__4D94879B]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  StoredProcedure [dbo].[InsertUserData]    Script Date: 12/2/2023 12:26:21 PM ******/
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
