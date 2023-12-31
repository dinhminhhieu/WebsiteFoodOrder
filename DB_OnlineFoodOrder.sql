USE [OnlineFoodOrder_DB]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 6/25/2023 7:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[UserID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/25/2023 7:59:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[ImageUrl] [varchar](max) NULL,
	[IsActive] [bit] NULL,
	[CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 6/25/2023 7:59:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[ContactName] [varchar](100) NULL,
	[Email] [varchar](50) NULL,
	[Subjects] [varchar](200) NULL,
	[Messagess] [varchar](max) NULL,
	[CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/25/2023 7:59:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [varchar](max) NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[UserID] [int] NULL,
	[Statuss] [varchar](50) NULL,
	[PaymentID] [int] NULL,
	[OrderDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 6/25/2023 7:59:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentName] [varchar](50) NULL,
	[CardNo] [varchar](50) NULL,
	[ExpiryDate] [varchar](50) NULL,
	[CvvNo] [int] NULL,
	[Address] [varchar](max) NULL,
	[PaymentMode] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/25/2023 7:59:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[Descriptions] [varchar](max) NULL,
	[Price] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[ImageUrl] [varchar](max) NULL,
	[CategoryID] [int] NULL,
	[IsActive] [bit] NULL,
	[CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/25/2023 7:59:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](100) NULL,
	[UserName] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[UserAddress] [varchar](max) NULL,
	[PostCode] [varchar](50) NULL,
	[Passwords] [varchar](50) NULL,
	[ImageUrl] [varchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[IsAdmin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [ImageUrl], [IsActive], [CreateDate]) VALUES (5, N'Piza', N'Piza.png', 1, CAST(N'2022-09-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [ImageUrl], [IsActive], [CreateDate]) VALUES (6, N'Burger', N'Burger.jpg', 1, CAST(N'2022-09-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [ImageUrl], [IsActive], [CreateDate]) VALUES (16, N'Drink', N'Drink.png', 1, CAST(N'2022-09-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [ImageUrl], [IsActive], [CreateDate]) VALUES (17, N'Fries', N'Fried.png', 1, CAST(N'2022-09-13T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ContactID], [ContactName], [Email], [Subjects], [Messagess], [CreateDate]) VALUES (1, N'Nguyen Gia Huy', N'ghuynguyen0311@gmail.com', N'FeedBack about service', N'very good', CAST(N'2022-10-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [ContactName], [Email], [Subjects], [Messagess], [CreateDate]) VALUES (2, N'Nguyen Van Test', N'test@gmail.com', N'FeedBack about service', N'Your service is very good', CAST(N'2022-10-15T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderDetailsID], [OrderNo], [ProductID], [Quantity], [UserID], [Statuss], [PaymentID], [OrderDate]) VALUES (3, N'FEKRC', 10, 2, 5, N'Delivered', 3, CAST(N'2022-10-07T23:54:06.860' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsID], [OrderNo], [ProductID], [Quantity], [UserID], [Statuss], [PaymentID], [OrderDate]) VALUES (4, N'FEKRC', 3, 2, 5, N'Delivered', 3, CAST(N'2022-10-07T23:54:06.860' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsID], [OrderNo], [ProductID], [Quantity], [UserID], [Statuss], [PaymentID], [OrderDate]) VALUES (5, N'UVPTH', 16, 2, 5, N'Delivered', 4, CAST(N'2022-10-08T01:12:50.707' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsID], [OrderNo], [ProductID], [Quantity], [UserID], [Statuss], [PaymentID], [OrderDate]) VALUES (6, N'UVPTH', 14, 2, 5, N'Delivered', 4, CAST(N'2022-10-08T01:12:50.707' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsID], [OrderNo], [ProductID], [Quantity], [UserID], [Statuss], [PaymentID], [OrderDate]) VALUES (13, N'JSIJM', 10, 1, 6, N'Delivered', 9, CAST(N'2022-10-10T09:53:32.690' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsID], [OrderNo], [ProductID], [Quantity], [UserID], [Statuss], [PaymentID], [OrderDate]) VALUES (18, N'CEKOQ', 10, 2, 6, N'Pending', 12, CAST(N'2022-10-12T14:09:20.520' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsID], [OrderNo], [ProductID], [Quantity], [UserID], [Statuss], [PaymentID], [OrderDate]) VALUES (19, N'CEKOQ', 16, 2, 6, N'Pending', 12, CAST(N'2022-10-12T14:09:20.520' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsID], [OrderNo], [ProductID], [Quantity], [UserID], [Statuss], [PaymentID], [OrderDate]) VALUES (20, N'RGTII', 19, 4, 7, N'Dispatcher', 13, CAST(N'2022-10-15T10:35:03.660' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsID], [OrderNo], [ProductID], [Quantity], [UserID], [Statuss], [PaymentID], [OrderDate]) VALUES (21, N'RGTII', 3, 4, 7, N'Delivered', 13, CAST(N'2022-10-15T10:35:03.660' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsID], [OrderNo], [ProductID], [Quantity], [UserID], [Statuss], [PaymentID], [OrderDate]) VALUES (22, N'RGTII', 14, 4, 7, N'Pending', 13, CAST(N'2022-10-15T10:35:03.660' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsID], [OrderNo], [ProductID], [Quantity], [UserID], [Statuss], [PaymentID], [OrderDate]) VALUES (23, N'OJPPF', 6, 2, 8, N'Pending', 14, CAST(N'2023-03-22T11:29:56.313' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsID], [OrderNo], [ProductID], [Quantity], [UserID], [Statuss], [PaymentID], [OrderDate]) VALUES (24, N'OJPPF', 10, 2, 8, N'Pending', 14, CAST(N'2023-03-22T11:29:56.313' AS DateTime))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([PaymentID], [PaymentName], [CardNo], [ExpiryDate], [CvvNo], [Address], [PaymentMode]) VALUES (3, N'Truong Huynh Phuoc Hung', N'12345679876', N'7/10/2022', 123, N'Tam K? Qu?ng Nam', N'CreditCard')
INSERT [dbo].[Payment] ([PaymentID], [PaymentName], [CardNo], [ExpiryDate], [CvvNo], [Address], [PaymentMode]) VALUES (4, N'Truong Huynh Phuoc Hung', N'12345678987', N'8/10/2022', 123, N'Tam K? Qu?ng Nam', N'CreditCard')
INSERT [dbo].[Payment] ([PaymentID], [PaymentName], [CardNo], [ExpiryDate], [CvvNo], [Address], [PaymentMode]) VALUES (9, NULL, NULL, NULL, NULL, NULL, N'Delivery')
INSERT [dbo].[Payment] ([PaymentID], [PaymentName], [CardNo], [ExpiryDate], [CvvNo], [Address], [PaymentMode]) VALUES (12, N'Pham Phu Duc', N'123456797652', N'12/10/2022', 123, N'Nui Thanh, Quang Nam', N'CreditCard')
INSERT [dbo].[Payment] ([PaymentID], [PaymentName], [CardNo], [ExpiryDate], [CvvNo], [Address], [PaymentMode]) VALUES (13, N'Nguyen Van Test', N'1234567890987', N'15/10/2022', 123, N'Tam K? Qu?ng Nam', N'CreditCard')
INSERT [dbo].[Payment] ([PaymentID], [PaymentName], [CardNo], [ExpiryDate], [CvvNo], [Address], [PaymentMode]) VALUES (14, N'gg', N'4', N'22/3/2023', 2, N'g', N'CreditCard')
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (1, N'Cheese Pizza', N'Have Cheese, hot dog,...', CAST(20.00 AS Decimal(18, 2)), 10, N'CheesePizza.png', 5, 1, CAST(N'2022-09-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (3, N'Bulgogi Pizza  ', N'Have beef, onion, carrot, baro onion, cheese...', CAST(22.00 AS Decimal(18, 2)), 10, N'BulgogiPizza.png', 5, 1, CAST(N'2022-09-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (4, N'Kebab Pizza', N'Have french fries, maet, fresh cream', CAST(20.00 AS Decimal(18, 2)), 10, N'KebabPizza.png', 5, 1, CAST(N'2022-09-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (5, N'NewYord Pizza', N'Have pepperoni, mushrooms, sausage, anchovies', CAST(17.00 AS Decimal(18, 2)), 10, N'NewYordPizza.png', 5, 1, CAST(N'2022-09-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (6, N'Sicilian Pizza ', N'Cheese will be placed under the tomato sauce', CAST(15.00 AS Decimal(18, 2)), 10, N'SicilianPizza.png', 5, 1, CAST(N'2022-09-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (8, N'Neapolitan Pizza', N'Have tomato sauce, sprinkled with fresh basil leaves, olive oil and cheese.', CAST(20.00 AS Decimal(18, 2)), 10, NULL, 5, 0, CAST(N'2022-09-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (9, N'Detroit Pizza ', N'Have pepperoni, the brick-shaped cheese that surrounds the edges of the cake tray', CAST(21.00 AS Decimal(18, 2)), 10, N'DetroitPizza.png', 5, 1, CAST(N'2022-09-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (10, N'Beef Burger', N'Have 500g Minced British Beef Steak 15% fat,  4 slices of mature Cheddar, ....', CAST(20.00 AS Decimal(18, 2)), 10, N'BeefBurger.png', 6, 1, CAST(N'2022-09-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (11, N'Chicken Burger', N'Have chicken, burger buns, sliced cheese, ...', CAST(20.00 AS Decimal(18, 2)), 10, N'ChickenBurger.png', 6, 1, CAST(N'2022-09-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (12, N'Salmon Burger', N'Each bite is hearty and juicy, topped with a creamy remoulade sauce...', CAST(20.00 AS Decimal(18, 2)), 10, N'SalmonBurger.png', 6, 1, CAST(N'2022-09-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (13, N'Fried Chicken', N'Fried chicken is also sprinkled with chili peppers such as paprika or hot sauce to create a spicy taste.', CAST(10.00 AS Decimal(18, 2)), 20, N'FriedChicken.png', 17, 1, CAST(N'2022-09-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (14, N'Fried Potato', N'Have yellow or red potatoes, butter Olive oil, ....', CAST(15.00 AS Decimal(18, 2)), 20, N'Fried.png', 17, 1, CAST(N'2022-09-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (15, N'Fried Squid', N'Fresh squid, fried dough, deep fried dough, chicken eggs.', CAST(20.00 AS Decimal(18, 2)), 20, N'FriedSquid.png', 17, 1, CAST(N'2022-09-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (16, N'Fanta', N'Drinking water for refreshment', CAST(8.00 AS Decimal(18, 2)), 20, N'fanta.png', 16, 1, CAST(N'2022-09-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (18, N'Sprite', N'Drinking water for refreshment', CAST(7.00 AS Decimal(18, 2)), 20, N'Sprite.png', 16, 1, CAST(N'2022-09-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductName], [Descriptions], [Price], [Quantity], [ImageUrl], [CategoryID], [IsActive], [CreateDate]) VALUES (19, N'Burger Chicken', N'very delicous', CAST(20.00 AS Decimal(18, 2)), 20, N'hamburger-veggie-burger-chicken-sandwich-fast-food-hamburger-burger-png-image-2f3ef9ac42b1ff80a6f9a2950c5eacf9.png', 6, 1, CAST(N'2022-10-15T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Mobile], [Email], [UserAddress], [PostCode], [Passwords], [ImageUrl], [CreateDate], [IsAdmin]) VALUES (4, N'Nguyen Gia Huy', N'Kit', N'0328284430', N'ghuynguyen0311@gmail.com', N'Tam Ky, Quang Nam', N'51100', N'123456', N'337162835_1667217657031501_2126259759756546876_n.jpg', CAST(N'2022-09-11T22:39:22.877' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Mobile], [Email], [UserAddress], [PostCode], [Passwords], [ImageUrl], [CreateDate], [IsAdmin]) VALUES (5, N'Truong Huynh Phuoc Hung', N'Jet', N'123456789', N'hung@gmail.com', N'Tam Ky, Quang Nam', N'51000', N'123456', N'Hung_Avatar.jpg', CAST(N'2022-09-11T22:40:06.747' AS DateTime), 0)
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Mobile], [Email], [UserAddress], [PostCode], [Passwords], [ImageUrl], [CreateDate], [IsAdmin]) VALUES (6, N'Pham Phu Duc', N'Duckki', N'0101010101', N'duc@gmail.com', N'Nui Thanh, Quang Nam', N'562300', N'123456', N'z3365784688399_f3d332728563bf61a131766b9f31b053.jpg', CAST(N'2022-09-13T10:49:59.000' AS DateTime), 0)
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Mobile], [Email], [UserAddress], [PostCode], [Passwords], [ImageUrl], [CreateDate], [IsAdmin]) VALUES (7, N'Tai Khoan Test', N'Test', N'11111111', N'test@gmail.com', N'Test dia chi', N'210000', N'123', N'avatar.jpg', CAST(N'2022-10-15T10:28:50.000' AS DateTime), 0)
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Mobile], [Email], [UserAddress], [PostCode], [Passwords], [ImageUrl], [CreateDate], [IsAdmin]) VALUES (8, N'Ðinh Minh Hi?u', N'hieucute', N'0386690205', N'dinhminhhieuvn@gmail.com', N'Q12', N'5100', N'123456', N'book_5.png', CAST(N'2023-03-22T11:21:16.000' AS DateTime), 0)
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Mobile], [Email], [UserAddress], [PostCode], [Passwords], [ImageUrl], [CreateDate], [IsAdmin]) VALUES (10, N'Le Quang Dat', N'dat', N'2333', N'dat@gmail.com', N'Q4', N'511', N'123', NULL, CAST(N'2023-03-22T15:10:12.773' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__6FAE078241BE95D7]    Script Date: 6/25/2023 7:59:31 AM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Mobile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D10534935612CC]    Script Date: 6/25/2023 7:59:31 AM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__C9F284569E2B0530]    Script Date: 6/25/2023 7:59:31 AM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payment] ([PaymentID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
