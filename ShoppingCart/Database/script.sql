USE [master]
GO
/****** Object:  Database [ShoppingCart]    Script Date: 3/9/2018 9:08:14 AM ******/
CREATE DATABASE [ShoppingCart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoppingCart', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShoppingCart.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShoppingCart_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShoppingCart_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShoppingCart] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoppingCart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoppingCart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoppingCart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoppingCart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoppingCart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoppingCart] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoppingCart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoppingCart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoppingCart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoppingCart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoppingCart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoppingCart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoppingCart] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoppingCart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoppingCart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoppingCart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoppingCart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoppingCart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoppingCart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoppingCart] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShoppingCart] SET  MULTI_USER 
GO
ALTER DATABASE [ShoppingCart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoppingCart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoppingCart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoppingCart] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShoppingCart] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ShoppingCart]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/9/2018 9:08:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Paid] [bit] NULL,
	[PurchaseDate] [datetime] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/9/2018 9:08:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[ProductPrice] [decimal](18, 0) NULL,
	[ProductImage] [varchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/9/2018 9:08:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (1, 1, 1, 3, 1, CAST(N'2018-03-08 09:56:09.347' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (2, 1, 3, 19, 1, CAST(N'2018-03-08 09:56:09.347' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (3, 1, 4, 5, 1, CAST(N'2018-03-08 09:56:09.347' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (4, 1, 6, 3, 1, CAST(N'2018-03-08 09:56:09.347' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (5, 1, 2, 6, 1, CAST(N'2018-03-08 09:56:09.347' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (6, 1, 5, 4, 1, CAST(N'2018-03-08 09:56:09.347' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (7, 1, 8, 2, 1, CAST(N'2018-03-08 09:56:09.347' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (8, 1, 4, 1, 1, CAST(N'2018-03-08 09:58:57.247' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (9, 1, 3, 1, 1, CAST(N'2018-03-08 10:00:04.687' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (10, 1, 3, 1, 1, CAST(N'2018-03-08 10:13:33.840' AS DateTime))
SET IDENTITY_INSERT [dbo].[Cart] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (1, N'Raglan Shirt', CAST(100 AS Decimal(18, 0)), N'img/img.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (2, N'Basic Shirt', CAST(120 AS Decimal(18, 0)), N'img/img2.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (3, N'Sweat Shirt', CAST(150 AS Decimal(18, 0)), N'img/img3.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (4, N'Polo Shirt', CAST(119 AS Decimal(18, 0)), N'img/img4.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (5, N'Printed Shirt', CAST(170 AS Decimal(18, 0)), N'img/img5.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (6, N'Pattern Shirt', CAST(140 AS Decimal(18, 0)), N'img/img6.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (7, N'Jumper', CAST(200 AS Decimal(18, 0)), N'img/img7.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (8, N'Sport Shirt', CAST(190 AS Decimal(18, 0)), N'img/img8.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Username], [Password]) VALUES (1, N'Umairah', N'flower95')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  StoredProcedure [dbo].[AddToCart]    Script Date: 3/9/2018 9:08:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddToCart]
	-- Add the parameters for the stored procedure here
	 @UserId int,
	 @ProductId int
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 
	 IF EXISTS(select * from Cart where UserId=@UserId and ProductId=@ProductId and Paid is null)
	 BEGIN
 
		UPDATE [dbo].[Cart]
		   SET  [Quantity] = (select Quantity from Cart where UserId=@UserId and ProductId=@ProductId and Paid is null)+1
			  WHERE UserId=@UserId and ProductId=@ProductId and Paid is null
 
 	 END
	 ELSE
	 BEGIN
 

INSERT INTO [dbo].[Cart]
           ([UserId]
           ,[ProductId]
           ,[Quantity]
          )
     VALUES
           (@UserId
           ,@ProductId
           ,1)
 


	 END

END

GO
/****** Object:  StoredProcedure [dbo].[Authentication]    Script Date: 3/9/2018 9:08:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Authentication] 
	-- Add the parameters for the stored procedure here
	@Username varchar(50),
	@Password varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
SELECT [UserId]
      ,[Username]
      ,[Password]
  FROM [dbo].[Users] where Username=@Username and [Password]=@Password 


END

GO
/****** Object:  StoredProcedure [dbo].[CartItem]    Script Date: 3/9/2018 9:08:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CartItem]
	-- Add the parameters for the stored procedure here
	@UserId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

SELECT P.ProductName ,P.ProductPrice,P.ProductImage,C.Quantity,(P.ProductPrice*C.Quantity) as totals from Products P
INNER JOIN Cart C ON C.ProductId=P.ProductId WHERE C.UserId=@UserId and C.Paid is null
	
END

GO
/****** Object:  StoredProcedure [dbo].[CheckOut]    Script Date: 3/9/2018 9:08:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CheckOut] 
	-- Add the parameters for the stored procedure here
	@UserId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
 
UPDATE [dbo].[Cart]
   SET [Paid] = 'True'
      ,[PurchaseDate] = GETDATE()
	  
 WHERE UserId=@UserId and Paid is null
 
 END


 
GO
/****** Object:  StoredProcedure [dbo].[ProductSelectAll]    Script Date: 3/9/2018 9:08:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProductSelectAll] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

SELECT [ProductId]
      ,[ProductName]
      ,[ProductPrice]
      ,[ProductImage]
  FROM [dbo].[Products]
END
GO
USE [master]
GO
ALTER DATABASE [ShoppingCart] SET  READ_WRITE 
GO
