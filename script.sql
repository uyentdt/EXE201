USE [master]
GO
/****** Object:  Database [E_shop]    Script Date: 7/8/2024 12:06:50 AM ******/
CREATE DATABASE [E_shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'E_shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.THAOUYEN\MSSQL\DATA\E_shop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'E_shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.THAOUYEN\MSSQL\DATA\E_shop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [E_shop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [E_shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [E_shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [E_shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [E_shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [E_shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [E_shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [E_shop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [E_shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [E_shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [E_shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [E_shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [E_shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [E_shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [E_shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [E_shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [E_shop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [E_shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [E_shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [E_shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [E_shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [E_shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [E_shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [E_shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [E_shop] SET RECOVERY FULL 
GO
ALTER DATABASE [E_shop] SET  MULTI_USER 
GO
ALTER DATABASE [E_shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [E_shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [E_shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [E_shop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [E_shop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [E_shop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'E_shop', N'ON'
GO
ALTER DATABASE [E_shop] SET QUERY_STORE = OFF
GO
USE [E_shop]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Role] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ResetPasswordExpiry] [datetime2](7) NULL,
	[ResetPasswordToken] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuthHistories]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthHistories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_AuthHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogImages]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[BlogId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_BlogImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Price] [decimal](18, 2) NULL,
	[Color] [nvarchar](max) NULL,
	[Size] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ProdId] [int] NULL,
	[ProdVariantId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CategoryId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Coupons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Color] [nvarchar](max) NULL,
	[Size] [nvarchar](max) NULL,
	[OrderId] [int] NULL,
	[ProdId] [int] NULL,
	[ProdVariantId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[TypePayment] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ProdId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductLikes]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLikes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ProdId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_ProductLikes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[OriginalPrice] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[Tag] [nvarchar](max) NULL,
	[Material] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[IsFeatured] [bit] NOT NULL,
	[Gender] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SupplierId] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVariants]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVariants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Stock] [int] NOT NULL,
	[ProdId] [int] NULL,
	[ColorId] [int] NULL,
	[SizeId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_ProductVariants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptDetails]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amonut] [int] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[ReceiptId] [int] NULL,
	[ProdVariantId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_ReceiptDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipts]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[SupplierId] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Receipts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Rating] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ProdId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CategoryId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 7/8/2024 12:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231112041715_initial', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231119111509_ResetPassword', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231228021421_TypePayment', N'5.0.17')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'148c41ec-f378-4168-83c5-2665fde87d63', N'AppUser', N'Nguyễn Văn', N'A', N'Admin', N'Thanh Xuân, Hà Nội', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIY1bLDveRbV2CoECs9qR/hG4mRhoTeh8CGr8KB6h4CGwm59NQIXoPC/4j6G0uhXTg==', N'YY47L6MMIGR46U4OOX43RDKG25Y6IPEW', N'5f31de18-f41b-45f1-bfb3-5153463aa792', NULL, 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', N'AppUser', N'Chiu', N'Jessica', N'User', N'HCM', N'jessica@gmail.com', N'JESSICA@GMAIL.COM', N'jessica@gmail.com', N'JESSICA@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEIYQWUnUYAF7XmWIzJyuAqivYiRAizw2+dPqFn/SOe0I92DXUKOs9yTePlvo+lDA4g==', N'3JNB5SUEPI33HTJT5U5CMBZCPNKWRENO', N'70f50227-9dad-4003-8e50-b9fed2d40f11', N'0123456789', 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'49d8c68f-8f48-457a-8457-33366333381b', N'AppUser', N'Trịnh Đức', N'Hiếu', N'User', N'Bách Khoa, Hai Bà Trưng, Hà Nội', N'byn1612@gmail.com', N'BYN1612@GMAIL.COM', N'byn1612@gmail.com', N'BYN1612@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEWmyRhtNlA8dasX0AyxLxU5bEKyMautIDscp4TNjAsXxZ01JObAKK+eNpweMoOYCg==', N'LAH6VIZVNOOXHMZGPSVRDCUKFAB7O6CH', N'67d1b210-2249-40b6-b913-33705f1b9eb4', N'33936951261234556', 0, 0, NULL, 1, 0, CAST(N'2024-04-29T16:54:35.4165013' AS DateTime2), N'ft0O9KjAyogXurZEHGgnC32t7WzP3B+7ZKymBm2F6b4soRhEcEhI0zAyAKwNJJ0eLjiWtwjsMgoS3d6I9N4Q7g==')
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'71c6f620-2850-45d6-a410-9872e3c03430', N'AppUser', N'Khách', N'Hàng', N'User', N'HCM', N'customer2@gmail.com', N'CUSTOMER2@GMAIL.COM', N'customer2@gmail.com', N'CUSTOMER2@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAECOSMtAVFwQW6KFziQmcXC3ORy3E2A0iqRE6yYkxabZpSy47yXxn+8Conm2V/s5Q+g==', N'FI7KAG4MNXZMPGZUMCAKHSKDHMRDMLBC', N'95b29292-700b-4713-85e4-73f528157af5', N'0123456789', 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'86a66af9-819c-446d-9b58-0389e94f586d', N'AppUser', N'Khách hàng', N'1', N'User', N'HCM', N'customer1@gmail.com', N'CUSTOMER1@GMAIL.COM', N'customer1@gmail.com', N'CUSTOMER1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEO0UAsRCkguTK53Jd/YG9HerzsIbois17kyddath2pbtjJDW5s+3+K/N6Xkl3fSNQw==', N'AGKE6GZ2XU3U7A6RCMRMKUVJT5RHJYKP', N'8b13add0-d5fd-4aaa-8ff0-ee4bb86c26ce', N'0123456789', 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'89bfd838-4754-47f9-af61-074a06fa2c68', N'AppUser', N'Đặng', N'Việt Anh', N'Admin', N'Hà Nội', N'vietdang0407@gmail.com', N'VIETDANG0407@GMAIL.COM', N'vietdang0407@gmail.com', N'VIETDANG0407@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAECK3FQsSMMb2Zv/cSFgzxiUYf+O1wOQobgc/IwzbpdvmCWZNqvc9L9jqUm4t/L+JTA==', N'2TYSXNYYQ443J3IEVI4J6LH5XH5ALV5G', N'bec7a3db-232a-4b50-a02e-359da4365fe7', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'9630eea2-440a-4116-82e1-1027b0791a55', N'AppUser', N'aaa', N'bbb', N'User', N'123', N'xxx@gmail.com', N'XXX@GMAIL.COM', N'xxx@gmail.com', N'XXX@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEF+o22r16Zn8r6MFc+goWczaBdpWXbRDbSKTTQLE8x24Rkq2L8SvKTA/4detTSlsxw==', N'LFSO4VCRKWJX3IJIV7YDIAN4TYKT2DEN', N'6b7cf2f2-96af-4658-b486-739d2b256a1b', N'0123456789', 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'98474c8d-8896-41df-854e-4c03755d8f13', N'AppUser', N'Hoàng Văn', N'C', N'User', N'Cầu Giấy, Hà Nội', N'c@gmail.com', N'C@GMAIL.COM', N'c@gmail.com', N'C@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEL/U948QOfjKx41KZvH7/puAp0jxVAgcJN0SzBxtUArSqksz5CmXUJKdZqzxTY8gxw==', N'DS27AO3Q37EFDJI3U74542PTNQE36CMI', N'1fa381cd-ce55-48bf-bd30-41e9005d034a', N'893457348764', 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'ae32526b-9cdc-434d-9d4e-10289e4d064b', N'AppUser', N'Thảo', N'Uyên', N'Admin', N'123', N'uyen@gmail.com', N'UYEN@GMAIL.COM', N'uyen@gmail.com', N'UYEN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEHtR3YyUsb3zCkc1Lw/dGkIn/WMQki8eEqtvGQxlnID+UzEijM84dtzx+n5aa2UcuQ==', N'XXMBPABFYIHV3CTSFC5WDA4RQPSHAGU5', N'90083be9-dd5a-4c61-b49b-ade6ee9098ec', N'null', 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'b280d88a-8f8b-4015-97e8-4e3460041769', N'AppUser', N'Trần Văn', N'B', N'User', N'Hà Nội, Việt Nam', N'b@gmail.com', N'B@GMAIL.COM', N'b@gmail.com', N'B@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGGUitygXVIatXVHlKB9HET2NYBPOBIh6krm7KPefgsZJNcr5Vd1tEue2iTG6zq0qw==', N'54K44FHPYADUCR3O6PEV5YBAUW57XOKQ', N'456168a5-7e3f-4605-aa12-5abb55172cbe', N'23432476126', 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'b45f35b4-038c-45ca-b4dc-e218c62c835d', N'AppUser', N'Chiu', N'Selena', N'User', N'HCM', N'selena@gmail.com', N'SELENA@GMAIL.COM', N'selena@gmail.com', N'SELENA@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEHkSrQ/sU1Bk/dpwOqkljtRZPZYfFyWJYuEXKlHUCX07tZ5q7KhsWDTYzoYC0A/Jjg==', N'O5MZXCHZLD3QE7HIA2YW4Y73XZAJAB67', N'd7162c34-1adf-4de4-85b5-7d7215b9663d', N'0123456789', 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'b7ea53c2-96dc-4193-8fbe-86a39f46cc01', N'AppUser', N'ad', N'min', N'Admin', N'123', N'aaa@gmail.com', N'AAA@GMAIL.COM', N'aaa@gmail.com', N'AAA@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEBt0ij9Px3evYMNpyyNDyPKB1IIRTX8l99z23JtVDnoLo1tLYSGqqaE1W0VDwkI8eA==', N'4H2ZYFMVOABGYHODK2KDCZT6UVTHU2ZK', N'9a81f68a-690e-412f-b13b-e4d7ef38b346', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'b9cba919-6077-4b88-8c6b-ac136d54956c', N'AppUser', N'admin2', N'admin2', N'Admin', N'Hà Nội', N'admin2@gmail.com', N'ADMIN2@GMAIL.COM', N'admin2@gmail.com', N'ADMIN2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECiapvW2MYs/tDmWc04D80DYuF2YBK7OPNSfNm6Toec0HoKXEjsTv2JJau90BIOxkQ==', N'5RCHDK4CMUDCHNJNLT2JFAABYXMOWPYL', N'254d82f9-cb4a-4b87-bd72-b490d213fd14', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'c76465cd-d880-4acd-aaa9-20a5423a2f03', N'AppUser', N'Đặng', N'Việt Anh', N'User', N'Hà Nội', N'vietdang04072001@gmail.com', N'VIETDANG04072001@GMAIL.COM', N'vietdang04072001@gmail.com', N'VIETDANG04072001@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAENCDOhlW4miv0Jhj4bKO9TSGEHdHCxji9wHAlt5IqQlWBwjsFtckN+TmfXFQfw++8Q==', N'QUQSLWT5UQWNNSNS3MCBJ2FT3B66UK3A', N'840d8962-7a93-4846-8112-4cccc123b9ec', N'3674635276', 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'd7be1a8d-810d-4bc6-8e6c-68f4933a4569', N'AppUser', N'Khách ', N'Hàng', N'User', N'HCM', N'customer@gmail.com', N'CUSTOMER@GMAIL.COM', N'customer@gmail.com', N'CUSTOMER@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMarr6WdO0rl2+wLcNZc460cGYNC7FGEPfq6KbFQhh+2NXAZBE9UBiU58Z30T3oUbg==', N'NQ7634CU7HWNLDJQTMY3A6ADHIFPX7IL', N'76481cb1-4e61-4153-bac7-78ca320f476d', N'0123456789', 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'e187e311-39c7-410b-9add-a6e52f2ba6a9', N'AppUser', N'ad', N'min', N'Admin', N'123', N'aaabbb@gmail.com', N'AAABBB@GMAIL.COM', N'aaabbb@gmail.com', N'AAABBB@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAECozSzUj6LxTNp9zYbL+tveCj3E7evZ3UQOAnwYxRipUl9EMa+vX8y79OPAj8WxExw==', N'2WNSIVEYR7Y733K7TVEG24WZZDOEDUS7', N'883edfb0-7a03-4a84-8834-05b4fc370c65', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'ecff5e07-179f-4595-937d-9af613cf0d2d', N'AppUser', N'a', N'b', N'User', N'HCM', N'cc@gmail.com', N'CC@GMAIL.COM', N'cc@gmail.com', N'CC@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEGcQsYdkpUQ0L60zF5EOVmzheMpPTsj5fPZjHY1iok/7mNhS4j40x/eN+50zL5Uh6w==', N'M62QXSBPHMZVTP7KRBWNC7VQUTTDXZQR', N'e3c0aa54-d44c-4452-8ac0-b52bf0773bf5', N'0303030303', 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
GO
SET IDENTITY_INSERT [dbo].[AuthHistories] ON 

INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:19:39.2747615' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:24:22.6473126' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:40:55.1243777' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'b280d88a-8f8b-4015-97e8-4e3460041769', NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:41:05.2482208' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'98474c8d-8896-41df-854e-4c03755d8f13', NULL, NULL, NULL, NULL, CAST(N'2023-11-19T11:08:25.1835065' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2023-11-25T16:34:23.7547364' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'b280d88a-8f8b-4015-97e8-4e3460041769', NULL, NULL, NULL, NULL, CAST(N'2023-11-25T17:09:04.3575781' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, N'b280d88a-8f8b-4015-97e8-4e3460041769', NULL, NULL, NULL, NULL, CAST(N'2023-11-25T17:11:28.8670528' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1005, N'98474c8d-8896-41df-854e-4c03755d8f13', NULL, NULL, NULL, NULL, CAST(N'2023-12-05T16:16:20.7568067' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2005, N'b280d88a-8f8b-4015-97e8-4e3460041769', NULL, NULL, NULL, NULL, CAST(N'2023-12-09T16:44:12.8443863' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2006, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2023-12-09T16:44:26.0319712' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2007, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:26:20.7650291' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2008, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:26:20.7650393' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2009, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:22:54.8025121' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2010, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T16:51:22.5101707' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2011, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T16:51:22.5047923' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2012, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T16:51:23.9168476' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2013, N'b280d88a-8f8b-4015-97e8-4e3460041769', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T16:54:51.3712862' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2014, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T16:56:04.2771759' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2015, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T17:14:43.3711832' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2016, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T20:25:29.2169035' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2017, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2023-12-12T21:06:59.8490048' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2018, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2023-12-12T21:06:59.8490039' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2019, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2023-12-12T21:09:38.0558155' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2020, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2023-12-16T17:31:47.2831401' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2021, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2023-12-16T17:42:59.5748341' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2022, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2023-12-21T19:59:54.0188754' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2023, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2023-12-23T21:23:42.9303044' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2024, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:14:31.5974519' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2025, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:14:31.5974519' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2026, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-01-04T21:03:42.5890035' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2027, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-04T21:03:50.5335119' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2028, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-04T21:04:39.9476644' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2029, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-01-04T22:08:22.6698600' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2030, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-04T22:09:55.0982527' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2031, N'98474c8d-8896-41df-854e-4c03755d8f13', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:08:48.5276176' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2032, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:12:16.5719693' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2033, N'b280d88a-8f8b-4015-97e8-4e3460041769', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:12:49.6382437' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2034, N'98474c8d-8896-41df-854e-4c03755d8f13', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:20:27.4688696' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2035, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:21:16.2875139' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2036, N'98474c8d-8896-41df-854e-4c03755d8f13', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:21:31.4609187' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2037, N'98474c8d-8896-41df-854e-4c03755d8f13', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:34:41.7006344' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2038, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:34:56.4155518' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2039, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:37:05.3453101' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2040, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:37:24.7664517' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2041, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:37:37.0675964' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2042, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:38:17.1024327' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2043, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:38:46.4968942' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2044, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:39:03.5878014' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2045, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:43:00.3666843' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2046, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:43:19.7170096' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2047, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:43:55.0731567' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2048, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:44:23.0336331' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2049, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:44:58.7911472' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2050, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:45:33.9310531' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2051, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:56:18.3996792' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2052, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:57:20.4074983' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2053, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:59:04.9691929' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2054, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T11:00:33.2630159' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2055, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T11:03:44.3466629' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2056, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T11:07:04.4420458' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2057, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T11:07:16.9262515' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2058, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T11:10:13.0841205' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2059, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T14:17:58.7335836' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2060, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T14:32:52.7059856' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2061, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T14:34:26.9217425' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2062, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T14:37:53.8969470' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2063, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T14:38:06.8752147' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2064, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T14:38:36.6652425' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2065, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T14:40:47.1330304' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2066, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-07T22:53:13.2503811' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2067, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-07T22:54:51.7994741' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2068, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-01-07T22:58:30.3159037' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2069, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-07T22:58:56.2323994' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2070, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-07T23:00:48.0337311' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2071, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-01-07T23:06:46.1276509' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2072, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-01-07T23:08:23.2732351' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2073, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:11:40.4390480' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2074, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:18:50.7463633' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2075, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:30:57.2545038' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2076, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:35:13.6419156' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2077, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:35:50.4763565' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2078, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:36:33.3371887' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2079, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:37:03.3252365' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3073, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-03-18T21:08:09.0591835' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3074, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-03-18T21:16:30.5838433' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3075, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-03-18T21:19:02.2605305' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3076, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-03-18T21:22:05.4332949' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3077, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-03-18T21:26:00.6619769' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3078, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-04-18T12:54:15.1266531' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3079, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-04-18T12:56:30.8936214' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3080, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-04-29T16:39:37.6019159' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3081, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-04-29T16:41:38.4011344' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3082, N'b9cba919-6077-4b88-8c6b-ac136d54956c', NULL, NULL, NULL, NULL, CAST(N'2024-04-29T16:44:46.7571755' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3083, N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-04-29T16:50:20.3600058' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3095, N'e187e311-39c7-410b-9add-a6e52f2ba6a9', NULL, NULL, NULL, NULL, CAST(N'2024-06-16T01:49:26.6011344' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3096, N'89bfd838-4754-47f9-af61-074a06fa2c68', NULL, NULL, NULL, NULL, CAST(N'2024-06-16T01:50:33.1594583' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3097, N'89bfd838-4754-47f9-af61-074a06fa2c68', NULL, NULL, NULL, NULL, CAST(N'2024-06-16T01:51:40.6567866' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3098, N'e187e311-39c7-410b-9add-a6e52f2ba6a9', NULL, NULL, NULL, NULL, CAST(N'2024-06-16T01:53:42.7593465' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3099, N'c76465cd-d880-4acd-aaa9-20a5423a2f03', NULL, NULL, NULL, NULL, CAST(N'2024-06-16T21:23:27.2177980' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3100, N'c76465cd-d880-4acd-aaa9-20a5423a2f03', NULL, NULL, NULL, NULL, CAST(N'2024-06-16T22:21:03.6226855' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3101, N'9630eea2-440a-4116-82e1-1027b0791a55', NULL, NULL, NULL, NULL, CAST(N'2024-06-16T22:35:40.5153973' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3102, N'b7ea53c2-96dc-4193-8fbe-86a39f46cc01', NULL, NULL, NULL, NULL, CAST(N'2024-06-16T22:36:44.6457473' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3103, N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2024-06-19T20:22:20.8876292' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3104, N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2024-06-19T20:23:02.3422205' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3105, N'd7be1a8d-810d-4bc6-8e6c-68f4933a4569', NULL, NULL, NULL, NULL, CAST(N'2024-06-19T21:15:13.1248291' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3106, N'86a66af9-819c-446d-9b58-0389e94f586d', NULL, NULL, NULL, NULL, CAST(N'2024-06-19T21:36:58.1741678' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3107, N'86a66af9-819c-446d-9b58-0389e94f586d', NULL, NULL, NULL, NULL, CAST(N'2024-06-19T22:06:34.1661877' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3108, N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2024-06-20T17:22:11.0365472' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3109, N'71c6f620-2850-45d6-a410-9872e3c03430', NULL, NULL, NULL, NULL, CAST(N'2024-06-20T17:24:37.8491317' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3110, N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2024-06-23T21:14:20.8480885' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3111, N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2024-06-24T21:25:19.5763578' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3112, N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2024-06-25T02:16:54.2682697' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3113, N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2024-06-25T14:45:09.8666126' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3114, N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2024-06-26T15:15:57.8245455' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3115, N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-26T15:22:55.9181619' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3116, N'b45f35b4-038c-45ca-b4dc-e218c62c835d', NULL, NULL, NULL, NULL, CAST(N'2024-06-26T15:51:50.2646203' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3117, N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2024-06-26T20:57:01.2603808' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3118, N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2024-06-26T20:59:55.1284252' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3119, N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:28:05.4048046' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3120, N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:44:38.3489190' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3121, N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-26T22:36:09.5305820' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3122, N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2024-06-29T21:34:22.3395315' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3123, N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-29T21:50:16.0378109' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3124, N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-29T22:40:05.0859021' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[AuthHistories] OFF
GO
SET IDENTITY_INSERT [dbo].[BlogImages] ON 

INSERT [dbo].[BlogImages] ([Id], [Name], [BlogId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'/Images/list-image-blog/5bf21b96-0aca-4498-a39c-287e76910116.jpg', 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:16:52.8277659' AS DateTime2), NULL, NULL)
INSERT [dbo].[BlogImages] ([Id], [Name], [BlogId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'/Images/list-image-blog/6ff1c928-4618-4347-9af4-364c170bde68.jpg', 2, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:17:40.5572788' AS DateTime2), NULL, NULL)
INSERT [dbo].[BlogImages] ([Id], [Name], [BlogId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'/Images/list-image-blog/f05c5e79-207f-4734-8e3b-9e80e4fa4d2a.jpg', 3, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:18:31.8664923' AS DateTime2), NULL, NULL)
INSERT [dbo].[BlogImages] ([Id], [Name], [BlogId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'/Images/list-image-blog/b209df23-553b-408b-88a8-c5c4cd1b0e28.jpg', 4, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:19:02.3712768' AS DateTime2), NULL, NULL)
INSERT [dbo].[BlogImages] ([Id], [Name], [BlogId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'/Images/list-image-blog/312db72e-1bac-4485-9a9c-322d7f9f37db.jpg', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:19:33.0431790' AS DateTime2), NULL, NULL)
INSERT [dbo].[BlogImages] ([Id], [Name], [BlogId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'/Images/list-image-blog/40597822-0ec2-4acb-b85f-55a0d3c26ce3.jpg', 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:20:07.3656667' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[BlogImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [Title], [Description], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'Hướng dẫn về Phong cách: Đồ dệt kim nam', N'Mùa dệt kim đã chính thức đến, và không có thời điểm nào tốt hơn để bạn cập nhật tủ đồ của mình với những món đồ dệt kim mới nhất. Bắt đầu với những phong cách đáng thêm muốn mà bạn cần biết ngay bây giờ: áo len dáng dài, áo len cashmere, áo polo & áo cao cổ. Những món đồ này không chỉ giúp bạn giữ ấm mà còn mang đến vẻ ngoài thời thượng và tinh tế. Hãy thử kết hợp áo len dáng dài với quần jeans và giày boots để có một phong cách nam tính, hoặc chọn áo len cashmere với quần tây và giày da cho một vẻ ngoài thanh lịch. Đừng quên thêm vào tủ đồ của mình những chiếc áo cao cổ, một item không thể thiếu trong mùa đông này, kết hợp với áo khoác dạ để tạo nên một phong cách lịch lãm và ấm áp. Với những gợi ý này, bạn sẽ luôn tự tin và ấm áp trong mùa đông này. Hãy khám phá thêm các cách phối đồ và mẹo vặt để biến tấu những món đồ dệt kim này thành những bộ trang phục đa dạng và phong cách cho mọi dịp.', N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:16:52.8274359' AS DateTime2), NULL, CAST(N'2024-06-26T20:55:40.6724200' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'BÁO CÁO XU HƯỚNG NAM: MÙA ĐÔNG 2023', N'Khám phá những hiểu biết độc quyền về các xu hướng thời trang nam mới nhất, được tiết lộ bởi đội ngũ thiết kế của H&M Man. Trong lookbook mùa đông năm nay, chúng tôi mang đến cho bạn những phong cách và trang phục đang thịnh hành nhất. Từ áo khoác dạ dài, áo len oversized đến quần jogger và boots da, tất cả đều được thiết kế với sự tinh tế và chú trọng đến chi tiết. Áo khoác dạ dài không chỉ mang lại sự ấm áp mà còn tạo nên vẻ ngoài lịch lãm và đẳng cấp. Áo len oversized là sự lựa chọn hoàn hảo cho những ngày lạnh giá, mang lại sự thoải mái và phong cách. Quần jogger kết hợp với boots da tạo nên một phong cách năng động và hiện đại. Hãy cùng chúng tôi khám phá cách phối đồ hoàn hảo cho mùa đông, từ phong cách casual đến formal, để bạn luôn nổi bật và tự tin trong mọi hoàn cảnh. Đừng quên cập nhật những xu hướng mới nhất và biến tấu chúng theo phong cách riêng của bạn để tạo nên những bộ trang phục ấn tượng và độc đáo.', N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:17:40.5572761' AS DateTime2), NULL, CAST(N'2024-06-26T21:00:16.1953017' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'SỰ HOÀN HẢO ĐẸP ĐÔI', N'Để tôn vinh sự hoàn hảo đỉnh cao về hiệu suất và phong cách với Snow Drop mới của H&M Move, chúng tôi đã lùng sục khắp thế giới để tìm kiếm những địa điểm đầy cảm hứng kết hợp hoàn hảo với trang phục đỉnh cao cấp của chúng tôi. Từ những ngọn núi phủ tuyết trắng ở Châu Âu đến những khu rừng rậm rạp ở Bắc Mỹ, mỗi địa điểm đều được lựa chọn kỹ lưỡng để tôn vinh vẻ đẹp và sự đa dạng của thiên nhiên. Những bộ trang phục trong bộ sưu tập Snow Drop không chỉ đẹp mắt mà còn mang lại sự thoải mái và hiệu suất tối ưu trong mọi hoạt động ngoài trời. Áo khoác chống nước, quần dày giữ ấm và giày boots chống trượt là những món đồ không thể thiếu trong mùa đông này. Hãy cùng chúng tôi khám phá những bộ trang phục này trong những bối cảnh thiên nhiên tuyệt đẹp và cảm nhận sự hoàn hảo trong từng chi tiết. Với Snow Drop, bạn sẽ luôn tự tin và phong cách trong mọi hoạt động ngoài trời, từ leo núi, trượt tuyết đến dạo chơi trong rừng.', N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:18:31.8664882' AS DateTime2), NULL, CAST(N'2024-06-26T21:00:42.3478522' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Zlatan Ibrahimović, Nadia Nadim & JaQuel Knight HIIT the Zone', N'Sẵn sàng để HIIT vùng di chuyển? Global Brand Movers của H&M Move đang bước vào mùa giải mới với các động tác HIIT - luyện tập cường độ cao ngắt quãng - hàng đầu của họ và họ muốn xem động tác của bạn. Một bộ sưu tập quần áo di chuyển hợp thời trang mới ra mắt vào ngày 17 tháng 8 sẽ khiến bạn phải hành động. Bộ sưu tập này không chỉ mang đến cho bạn những trang phục thể thao thời thượng mà còn được thiết kế để hỗ trợ tối đa cho các bài tập của bạn. Áo thun thoáng khí, quần legging co giãn và giày thể thao nhẹ nhàng là những món đồ không thể thiếu trong bộ sưu tập này. Hãy cùng Zlatan, Nadia và JaQuel khám phá những động tác HIIT hiệu quả nhất và cập nhật ngay tủ đồ thể thao của bạn với những món đồ mới nhất từ H&M Move. Đừng quên chia sẻ những động tác của bạn trên mạng xã hội với hashtag #HMMove để có cơ hội xuất hiện trên trang chủ của chúng tôi. Hãy sẵn sàng để bước vào mùa giải mới với sự tự tin và phong cách đỉnh cao.', N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:19:02.3712733' AS DateTime2), NULL, CAST(N'2024-06-26T21:00:53.0595905' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'XU HƯỚNG QUẦN NAM MÙA THU ’23', N'Khám phá những xu hướng và trang phục chủ đạo của mùa mới trong lookbook của H&M Man. Mùa thu năm nay, chúng tôi mang đến cho bạn những chiếc quần với thiết kế đa dạng và phong cách, từ quần jeans, quần chinos đến quần jogger và quần tây. Mỗi chiếc quần đều được thiết kế với chất liệu cao cấp và chi tiết tinh tế, mang lại sự thoải mái và phong cách cho người mặc. Quần jeans với kiểu dáng slim-fit hay straight-leg là lựa chọn hoàn hảo cho phong cách casual hàng ngày. Quần chinos với màu sắc trung tính dễ dàng kết hợp với áo sơ mi hoặc áo thun, tạo nên vẻ ngoài lịch lãm và hiện đại. Quần jogger mang lại sự thoải mái và phong cách năng động, phù hợp cho những buổi dạo phố hoặc hoạt động thể thao. Quần tây với thiết kế thanh lịch và sang trọng là lựa chọn hoàn hảo cho những dịp quan trọng. Hãy cùng chúng tôi khám phá cách phối đồ với những chiếc quần này để tạo nên những bộ trang phục ấn tượng và thời thượng nhất cho mùa thu. Đừng quên cập nhật những xu hướng mới nhất và biến tấu chúng theo phong cách riêng của bạn để luôn nổi bật và tự tin.
', N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:19:33.0431752' AS DateTime2), NULL, CAST(N'2024-06-26T21:01:01.2417734' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'H&M MOVE HỢP TÁC CÙNG THỂ THAO KHÔNG BIÊN GIỚI', N'H&M Move và Sport Without Borders đã hợp tác để trao cơ hội cho giới trẻ thông qua thể thao. Về cốt lõi và sứ mệnh của mình, mối quan hệ hợp tác này nỗ lực xây dựng niềm tin và truyền cảm hứng bằng cách khuếch đại sức mạnh tích cực của các hình mẫu địa phương, những người có niềm đam mê thể thao thúc đẩy sự thay đổi tích cực trong cộng đồng. Thông qua các chương trình và hoạt động thể thao, chúng tôi mong muốn mang lại cho các bạn trẻ cơ hội phát triển bản thân, rèn luyện kỹ năng và xây dựng những giá trị tích cực. Các hoạt động thể thao không chỉ giúp các bạn trẻ rèn luyện sức khỏe mà còn mang lại niềm vui và sự hứng khởi, giúp họ tự tin hơn trong cuộc sống. Hãy cùng chúng tôi khám phá những câu chuyện đầy cảm hứng và những thành tựu đáng tự hào từ sự hợp tác này. Những hình mẫu địa phương với niềm đam mê thể thao đã và đang góp phần tạo nên sự thay đổi tích cực trong cộng đồng, trở thành nguồn cảm hứng cho các bạn trẻ. Hãy cùng H&M Move và Sport Without Borders lan tỏa tinh thần thể thao và xây dựng một cộng đồng vững mạnh và đoàn kết.

', N'ae32526b-9cdc-434d-9d4e-10289e4d064b', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:20:07.3656629' AS DateTime2), NULL, CAST(N'2024-06-26T21:01:11.6166557' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'Christian Dior', NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:30.5173983' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'Louis Vuiton', NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:37.6594055' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'H&M', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:30:48.5637983' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Zara', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:30:53.6217243' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'Uniqlo', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:31:01.0849470' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'EcoLife', NULL, NULL, NULL, NULL, CAST(N'2024-06-16T02:21:42.3261756' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [Price], [Color], [Size], [Quantity], [UserId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (17, CAST(250000.00 AS Decimal(18, 2)), N'Xanh dương', N'S', 3, N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', 10, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'Áo', NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:19:52.5459039' AS DateTime2), NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'Quần', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:26:52.1921904' AS DateTime2), NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'Đồng hồ', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:26:56.6496112' AS DateTime2), NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Thắt lưng', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:27:00.8790527' AS DateTime2), NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'Giày', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:27:03.8265325' AS DateTime2), NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'Phụ kiện', NULL, NULL, NULL, NULL, CAST(N'2024-06-16T02:20:18.1131236' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'Đen', 1, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:51.6828558' AS DateTime2), NULL, NULL)
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'Trắng', 1, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:55.2583990' AS DateTime2), NULL, NULL)
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'Vàng', 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:32:45.3082162' AS DateTime2), NULL, NULL)
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Be', 2, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:32:52.9042219' AS DateTime2), NULL, NULL)
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'Nâu', 2, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:32:58.3321714' AS DateTime2), NULL, CAST(N'2023-12-10T10:33:18.9465868' AS DateTime2))
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'Đỏ', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:33:47.8441433' AS DateTime2), NULL, NULL)
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'Tím', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:34:21.1755472' AS DateTime2), NULL, NULL)
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, N'Xanh dương', 1, NULL, NULL, NULL, NULL, CAST(N'2024-06-19T22:44:40.2276330' AS DateTime2), NULL, NULL)
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (9, N'Xanh nhạt', 2, NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:10:45.3137711' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Coupons] ON 

INSERT [dbo].[Coupons] ([Id], [Name], [Discount], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'QJM6B', CAST(50000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:34:30.1197604' AS DateTime2), NULL, NULL)
INSERT [dbo].[Coupons] ([Id], [Name], [Discount], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'MHIO7', CAST(75000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:34:32.9560180' AS DateTime2), NULL, NULL)
INSERT [dbo].[Coupons] ([Id], [Name], [Discount], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'C28M4', CAST(100000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:34:35.5162774' AS DateTime2), NULL, NULL)
INSERT [dbo].[Coupons] ([Id], [Name], [Discount], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'5R8NJ', CAST(125000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:34:38.4361948' AS DateTime2), NULL, NULL)
INSERT [dbo].[Coupons] ([Id], [Name], [Discount], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'48HYO', CAST(150000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:34:41.1161535' AS DateTime2), NULL, NULL)
INSERT [dbo].[Coupons] ([Id], [Name], [Discount], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'M3SNU', CAST(100000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2024-01-05T14:40:36.0683913' AS DateTime2), NULL, NULL)
INSERT [dbo].[Coupons] ([Id], [Name], [Discount], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'EEIH5', CAST(75000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2024-01-07T23:11:01.4299466' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Coupons] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, 1, CAST(500000.00 AS Decimal(18, 2)), CAST(500000.00 AS Decimal(18, 2)), N'Đen', N'S', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, 1, CAST(750000.00 AS Decimal(18, 2)), CAST(750000.00 AS Decimal(18, 2)), N'Đỏ', N'43', 2, 6, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, 1, CAST(700000.00 AS Decimal(18, 2)), CAST(700000.00 AS Decimal(18, 2)), N'Trắng', N'L', 3, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, 2, CAST(1400000.00 AS Decimal(18, 2)), CAST(700000.00 AS Decimal(18, 2)), N'Trắng', N'L', 4, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, 2, CAST(1000000.00 AS Decimal(18, 2)), CAST(500000.00 AS Decimal(18, 2)), N'Nâu', N'39', 5, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, 1, CAST(750000.00 AS Decimal(18, 2)), CAST(750000.00 AS Decimal(18, 2)), N'Đỏ', N'43', 6, 6, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, 1, CAST(489000.00 AS Decimal(18, 2)), CAST(489000.00 AS Decimal(18, 2)), N'Trắng', N'M', 7, 7, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, 1, CAST(500000.00 AS Decimal(18, 2)), CAST(500000.00 AS Decimal(18, 2)), N'Tím', N'41', 8, 5, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (9, 1, CAST(150000.00 AS Decimal(18, 2)), CAST(150000.00 AS Decimal(18, 2)), N'Trắng', N'XL', 9, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (10, 1, CAST(500000.00 AS Decimal(18, 2)), CAST(500000.00 AS Decimal(18, 2)), N'Be', N'38', 10, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (11, 1, CAST(489000.00 AS Decimal(18, 2)), CAST(489000.00 AS Decimal(18, 2)), N'Trắng', N'M', 11, 7, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (12, 1, CAST(500000.00 AS Decimal(18, 2)), CAST(500000.00 AS Decimal(18, 2)), N'Đen', N'S', 12, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (13, 2, CAST(1000000.00 AS Decimal(18, 2)), CAST(500000.00 AS Decimal(18, 2)), N'Đen', N'S', 13, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (14, 2, CAST(978000.00 AS Decimal(18, 2)), CAST(489000.00 AS Decimal(18, 2)), N'Trắng', N'M', 14, 7, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (15, 2, CAST(978000.00 AS Decimal(18, 2)), CAST(489000.00 AS Decimal(18, 2)), N'Trắng', N'M', 15, 7, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1014, 2, CAST(1400000.00 AS Decimal(18, 2)), CAST(700000.00 AS Decimal(18, 2)), N'Trắng', N'L', 1014, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1015, 2, CAST(1400000.00 AS Decimal(18, 2)), CAST(700000.00 AS Decimal(18, 2)), N'Trắng', N'L', 1015, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1016, 1, CAST(150000.00 AS Decimal(18, 2)), CAST(150000.00 AS Decimal(18, 2)), N'Trắng', N'XL', 1016, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1017, 1, CAST(489000.00 AS Decimal(18, 2)), CAST(489000.00 AS Decimal(18, 2)), N'Trắng', N'M', 1017, 7, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1018, 2, CAST(978000.00 AS Decimal(18, 2)), CAST(489000.00 AS Decimal(18, 2)), N'Trắng', N'M', 1018, 7, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1019, 2, CAST(978000.00 AS Decimal(18, 2)), CAST(489000.00 AS Decimal(18, 2)), N'Trắng', N'M', 1019, 7, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1020, 2, CAST(398000.00 AS Decimal(18, 2)), CAST(199000.00 AS Decimal(18, 2)), N'Xanh nhạt', N'M', 1020, 11, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1021, 1, CAST(199000.00 AS Decimal(18, 2)), CAST(199000.00 AS Decimal(18, 2)), N'Xanh nhạt', N'M', 1021, 11, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1022, 2, CAST(500000.00 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), N'Xanh dương', N'S', 1022, 10, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1023, 2, CAST(398000.00 AS Decimal(18, 2)), CAST(199000.00 AS Decimal(18, 2)), N'Xanh nhạt', N'M', 1023, 11, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1024, 1, CAST(150000.00 AS Decimal(18, 2)), CAST(150000.00 AS Decimal(18, 2)), N'Trắng', N'XL', 1024, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1025, 4, CAST(1956000.00 AS Decimal(18, 2)), CAST(489000.00 AS Decimal(18, 2)), N'Trắng', N'M', 1025, 7, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1026, 3, CAST(1050000.00 AS Decimal(18, 2)), CAST(350000.00 AS Decimal(18, 2)), N'Trắng', N'L', 1026, 8, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1027, 4, CAST(3000000.00 AS Decimal(18, 2)), CAST(750000.00 AS Decimal(18, 2)), N'Đỏ', N'43', 1027, 6, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1028, 3, CAST(1467000.00 AS Decimal(18, 2)), CAST(489000.00 AS Decimal(18, 2)), N'Trắng', N'L', 1028, 7, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1029, 3, CAST(1500000.00 AS Decimal(18, 2)), CAST(500000.00 AS Decimal(18, 2)), N'Be', N'38', 1029, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1030, 4, CAST(1956000.00 AS Decimal(18, 2)), CAST(489000.00 AS Decimal(18, 2)), N'Trắng', N'L', 1030, 7, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1031, 4, CAST(3000000.00 AS Decimal(18, 2)), CAST(750000.00 AS Decimal(18, 2)), N'Đỏ', N'43', 1031, 6, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1032, 1, CAST(489000.00 AS Decimal(18, 2)), CAST(489000.00 AS Decimal(18, 2)), N'Trắng', N'L', 1032, 7, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1, N'gói hàng cẩn thận', 2, CAST(500000.00 AS Decimal(18, 2)), N'Cầu Giấy, Hà Nội', N'98474c8d-8896-41df-854e-4c03755d8f13', NULL, NULL, NULL, NULL, CAST(N'2023-12-05T16:30:12.9474951' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (2, NULL, 2, CAST(750000.00 AS Decimal(18, 2)), N'Bách Khoa, Hai Bà Trưng, Hà Nội', N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T16:52:06.5671628' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (3, N'Nhờ shop gói hàng cẩn thận cho mình', 2, CAST(700000.00 AS Decimal(18, 2)), N'Hà Nội, Việt Nam', N'b280d88a-8f8b-4015-97e8-4e3460041769', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T16:55:35.4699444' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (4, N'Đóng gói áo bomber cẩn thận giúp mình', 2, CAST(1400000.00 AS Decimal(18, 2)), N'Bách Khoa, Hai Bà Trưng, Hà Nội', N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T17:15:12.1167505' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (5, N'Báo shipper vận chuyển cẩn thận giúp mình', 2, CAST(1000000.00 AS Decimal(18, 2)), N'Bách Khoa, Hai Bà Trưng, Hà Nội', N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T17:16:43.2585280' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (6, N'Cửa hàng ship sớm cho mình', 2, CAST(750000.00 AS Decimal(18, 2)), N'Bách Khoa, Hai Bà Trưng, Hà Nội', N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2023-12-30T16:32:41.0964616' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (7, N'thanh toán online 4/1', 2, CAST(489000.00 AS Decimal(18, 2)), N'Bách Khoa, Hai Bà Trưng, Hà Nội', N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-04T21:06:04.9901610' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (8, N'cửa hàng ship giày nhanh giúp mình', 0, CAST(500000.00 AS Decimal(18, 2)), N'Hà Nội, Việt Nam', N'b280d88a-8f8b-4015-97e8-4e3460041769', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:20:08.1641477' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (9, N'Của hàng ship đồ nhanh giúp mình', 0, CAST(100000.00 AS Decimal(18, 2)), N'Cầu Giấy, Hà Nội', N'98474c8d-8896-41df-854e-4c03755d8f13', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T10:22:50.8308598' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (10, N'Đơn hàng quần jean ship nhanh cho mình', 0, CAST(500000.00 AS Decimal(18, 2)), N'Bách Khoa, Hai Bà Trưng, Hà Nội', N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T11:08:33.8133778' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (11, N'Thanh toán online', 0, CAST(489000.00 AS Decimal(18, 2)), N'Bách Khoa, Hai Bà Trưng, Hà Nội', N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T14:36:11.8668412' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (12, N'thanh toán', 0, CAST(400000.00 AS Decimal(18, 2)), N'Bách Khoa, Hai Bà Trưng, Hà Nội', N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-05T14:41:23.1538275' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (13, N'Cửa hàng gói đồ cẩn thận giúp mình', 0, CAST(900000.00 AS Decimal(18, 2)), N'Bách Khoa, Hai Bà Trưng, Hà Nội', N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-07T23:02:59.3073573' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (14, N'Cửa hàng ship nhanh giúp mình', 0, CAST(878000.00 AS Decimal(18, 2)), N'Bách Khoa, Hai Bà Trưng, Hà Nội', N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:14:36.4274065' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (15, N'Cửa hàng ship đồ nhanh cho mình ', 3, CAST(878000.00 AS Decimal(18, 2)), N'Bách Khoa, Hai Bà Trưng, Hà Nội', N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:33:05.0420618' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1014, N'chú ý gói đồ cẩn thận giúp mình', 1, CAST(1400000.00 AS Decimal(18, 2)), N'Bách Khoa, Hai Bà Trưng, Hà Nội', N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-03-18T21:25:42.1040137' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1015, N'Chú ý gói đồ cẩn thận giúp mình ', 0, CAST(1300000.00 AS Decimal(18, 2)), N'Hà Nội', N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-03-18T21:27:00.5962743' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1016, N'Chú ý gói hàng cẩn thận giúp mình', 3, CAST(150000.00 AS Decimal(18, 2)), N'Bách Khoa, Hai Bà Trưng, Hà Nội', N'49d8c68f-8f48-457a-8457-33366333381b', NULL, NULL, NULL, NULL, CAST(N'2024-04-29T16:57:56.3178037' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1017, NULL, 0, CAST(489000.00 AS Decimal(18, 2)), N'123', N'9630eea2-440a-4116-82e1-1027b0791a55', NULL, NULL, NULL, NULL, CAST(N'2024-06-16T22:36:08.0929515' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1018, NULL, 0, CAST(978000.00 AS Decimal(18, 2)), N'HCM', N'86a66af9-819c-446d-9b58-0389e94f586d', NULL, NULL, NULL, NULL, CAST(N'2024-06-19T21:37:44.8696490' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1019, NULL, 1, CAST(978000.00 AS Decimal(18, 2)), N'HCM', N'71c6f620-2850-45d6-a410-9872e3c03430', NULL, NULL, NULL, NULL, CAST(N'2024-06-20T17:25:10.0678581' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1020, NULL, 3, CAST(398000.00 AS Decimal(18, 2)), N'HCM', N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:28:29.6122612' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1021, NULL, 3, CAST(199000.00 AS Decimal(18, 2)), N'HCM', N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:29:16.3646803' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1022, NULL, 2, CAST(500000.00 AS Decimal(18, 2)), N'HCM', N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:44:56.5403346' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1023, NULL, 0, CAST(398000.00 AS Decimal(18, 2)), N'HCM', N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:46:03.9762772' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1024, NULL, 0, CAST(150000.00 AS Decimal(18, 2)), N'HCM', N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-26T22:36:34.1617514' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1025, NULL, 0, CAST(1956000.00 AS Decimal(18, 2)), N'HCM', N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-29T21:53:20.1208448' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1026, NULL, 0, CAST(1050000.00 AS Decimal(18, 2)), N'HCM', N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-29T22:19:51.4021751' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1027, NULL, 0, CAST(3000000.00 AS Decimal(18, 2)), N'HCM', N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-29T22:20:47.0869257' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1028, NULL, 0, CAST(1467000.00 AS Decimal(18, 2)), N'HCM', N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-29T22:27:01.2138225' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1029, NULL, 0, CAST(1500000.00 AS Decimal(18, 2)), N'HCM', N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-29T22:32:01.7027440' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1030, NULL, 0, CAST(1956000.00 AS Decimal(18, 2)), N'HCM', N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-29T22:37:09.2329827' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1031, NULL, 0, CAST(3000000.00 AS Decimal(18, 2)), N'HCM', N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-29T22:44:34.4327740' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1032, NULL, 0, CAST(489000.00 AS Decimal(18, 2)), N'HCM', N'26b07973-06ee-4ffd-9dc2-ebf0a1a47201', NULL, NULL, NULL, NULL, CAST(N'2024-06-29T23:03:33.9182264' AS DateTime2), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'/Images/list-image-product/f09e5143-7147-4b10-83c7-1aac95e773ce.jpg', 1, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:21:46.6547681' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'/Images/list-image-product/07f6b61b-bd16-4c97-9d3f-71991794eb37.jpg', 2, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:36:02.5666180' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'/Images/list-image-product/9d67b433-da93-4203-9751-23639636deff.jpg', 3, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:39:32.3824550' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'/Images/list-image-product/7cd13c7c-2eb0-4aa4-9be2-1784cea6fa74.jpg', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:41:25.3352844' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'/Images/list-image-product/a8ab75d8-8aef-4750-b016-76a2fcd809c5.jpg', 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:43:52.9693000' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'/Images/list-image-product/bee7fefa-1d99-4d59-b01b-d153d0e7f577.jpg', 7, NULL, NULL, NULL, NULL, CAST(N'2023-12-23T21:14:07.4152017' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, N'/Images/list-image-product/2fc9f315-5777-4ccb-9f96-cebf3d7ec682.jpg', 8, NULL, NULL, NULL, NULL, CAST(N'2023-12-23T21:19:09.7752691' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (9, N'/Images/list-image-product/743f7d83-ec4c-4b54-a353-61439d0f03e4.jpg', 4, NULL, NULL, NULL, NULL, CAST(N'2023-12-23T21:21:43.8339126' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (10, N'/Images/list-image-product/11da3c58-7d0e-4aaa-8847-7705d9ec88d4.jpg', 9, NULL, NULL, NULL, NULL, CAST(N'2024-04-29T16:48:13.3987002' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (11, N'/Images/list-image-product/57236730-109c-4986-9b5f-aaad37240a59.png', 10, NULL, NULL, NULL, NULL, CAST(N'2024-06-19T21:28:54.2751622' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (12, N'/Images/list-image-product/dc75c44e-c1a5-490d-b38a-34cd5497d5ed.png', 11, NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:10:09.7153457' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductLikes] ON 

INSERT [dbo].[ProductLikes] ([Id], [Name], [Price], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2008, NULL, 0, N'49d8c68f-8f48-457a-8457-33366333381b', 9, NULL, NULL, NULL, NULL, CAST(N'2024-04-29T16:51:06.7032153' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductLikes] ([Id], [Name], [Price], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2009, NULL, 0, NULL, 6, NULL, NULL, NULL, NULL, CAST(N'2024-06-13T02:42:54.9449118' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductLikes] ([Id], [Name], [Price], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2010, NULL, 0, N'86a66af9-819c-446d-9b58-0389e94f586d', 8, NULL, NULL, NULL, NULL, CAST(N'2024-06-19T21:38:40.5147621' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductLikes] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'Áo sơ mi', N'Các sản phẩm của Dior đều có thiết kế sang trọng, thanh lịch và độc đáo. Một phần cũng bởi Christian Dior là người yêu cái đẹp, yêu thiên nhiên nên do đó, các thiết kế của ông có phần tự do, thoáng mát. Đến nay, Dior vẫn luôn không ngừng cập nhật những xu hướng mới để tạo ra những sản phẩm mang chất riêng.

Thời trang cao cấp của Dior không bao giờ lỗi mốt nên bạn có thể sử dụng chúng lâu dài, tuy là thế nhưng có một vài thiết kế của hãng không có tính ứng dụng cao nên dẫn đến nhiều tranh cãi.', CAST(500000.00 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Fashion', N'Vải ', N'new', 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:21:46.5965997' AS DateTime2), NULL, CAST(N'2024-06-19T21:27:02.9133463' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'Quần jean', N'Quần jeans dáng skinny fit. Có 5 túi. Vải hiệu ứng bạc màu. Cài khóa kéo và khuy phía trước.', CAST(500000.00 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'fashion', N'99% vải cotton, 1% elastane', N'new', 1, 1, 4, 2, 4, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:36:02.5206392' AS DateTime2), NULL, CAST(N'2023-12-23T21:03:43.5396836' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'Áo khoác bomber', N'Áo khoác bomber nhẹ bằng linen có cổ đứng gân nổi và khoá kéo dọc thân trước. Túi chéo hai bên có khuy bấm và chun bọc ở cổ tay và gấu. Có lớp lót. Dáng vừa để mặc thoải mái và tạo dáng cổ điển. Vải làm từ linen rất thoáng khí, đẹp cả khi là ủi hay để nhăn và mềm theo thời gian.', CAST(700000.00 AS Decimal(18, 2)), CAST(350000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'fashion', N'Vải lanh', N'new', 1, 1, 3, 1, 3, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:39:32.3822083' AS DateTime2), NULL, CAST(N'2023-12-23T21:05:40.8222517' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Áo ba lỗ', N'Được làm bằng vải AIRism mịn với công nghệ DRY. Chiếc áo ba lỗ này được thiết kế tỉ mỉ, với số đo và chiều rộng của dây cài cổ áo có thể mặc riêng.', CAST(150000.00 AS Decimal(18, 2)), CAST(75000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Fashion', N'71% Bông, 25% Polyeste, 4% Elastan', N'normal', 1, 1, 5, 1, 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:40:17.7229294' AS DateTime2), NULL, CAST(N'2023-12-23T21:21:43.7735072' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'Giày thể thao', N'Những đôi giày thể thao này có lớp vải canvas ở bên ngoài như những kiểu giày canvas khác, nhưng bên trong chúng tôi đã thêm nhiều chi tiết sáng tạo để mang đến cảm giác. Lớp lót có chất liệu lưới với khả năng thoáng khí tuyệt vời. Điều này giúp đôi giày mềm và thoải mái hơn bất kỳ các kiểu giày trước đó. Bạn sẽ cảm nhận được sự thoải mái trong từng bước chân của mình.', CAST(500000.00 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Fashion', N'vải, cao su', N'normal', 1, 1, 5, 5, 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:41:25.3349485' AS DateTime2), NULL, CAST(N'2023-12-23T21:08:43.0484409' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'Giày chạy bộ', N'Giày thể thao chạy bộ', CAST(750000.00 AS Decimal(18, 2)), CAST(350000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Fashion', N'vải, boost', N'new', 1, 1, 5, 5, 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:43:52.9690632' AS DateTime2), NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'Áo khoác giả lông cừu', N'Một thiết kế của “Doraemon Sustainability Mode”, đại sứ bền vững toàn cầu của UNIQLO. Được làm từ 100% vải polyester tái chế, làm đầy và thêu.
', CAST(489000.00 AS Decimal(18, 2)), CAST(220000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Fashion', N'100% Polyeste ( 100% Sử Dụng Sợi Polyeste Tái Chế )', N'new', 1, 2, 5, 1, 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-23T21:14:07.3942462' AS DateTime2), NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, N'Áo chui đầu đính hạt cườm', N'Áo chui đầu dệt kim mềm có chứa sợi len với cổ tròn, vai ráp trễ và tay dài. Phía trước đính hạt cườm nhựa và viền gân nổi quanh cổ, cổ tay và gấu', CAST(350000.00 AS Decimal(18, 2)), CAST(180000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Fashion', N'Pôlyexte 52%, Acrylic 41%, Len 4%, Vải thun Elastan 3%', N'new', 1, 2, 3, 1, 3, NULL, NULL, NULL, NULL, CAST(N'2023-12-23T21:19:09.7740322' AS DateTime2), NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (9, N'Áo polo', N'Áo polo nam', CAST(250000.00 AS Decimal(18, 2)), CAST(100000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Áo polo', N'Vải cotton', N'new', 1, 1, 3, 1, 3, NULL, NULL, NULL, NULL, CAST(N'2024-04-29T16:48:13.3886335' AS DateTime2), NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (10, N'Áo khoác len', N'Chất lượng dày dặn, ấm áp', CAST(250000.00 AS Decimal(18, 2)), CAST(100000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Quần áo', N'Len', N'new', 1, 2, 6, 1, 7, NULL, NULL, NULL, NULL, CAST(N'2024-06-19T21:28:54.2732491' AS DateTime2), NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (11, N'Quần Jean Đơn Giản', N'Quần jeans là một item kinh điển và không thể thiếu trong tủ đồ của mọi người. Với thiết kế đa dạng từ slim-fit, straight-leg đến relaxed-fit, quần jeans mang lại sự thoải mái và phong cách cho người mặc. Chất liệu denim bền bỉ và co giãn giúp bạn dễ dàng di chuyển và hoạt động. Quần jeans dễ dàng phối hợp với nhiều loại trang phục khác nhau, từ áo thun, áo sơ mi đến áo len, tạo nên những bộ trang phục đa dạng và phong cách cho mọi dịp.', CAST(199000.00 AS Decimal(18, 2)), CAST(80000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Quần jean', N'Jean', N'normal', 1, 2, 6, 2, 7, NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:10:09.6821635' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductVariants] ON 

INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, 96, 1, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:22:11.8751209' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, 150, 1, 2, 2, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:22:26.7554939' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, 146, 2, 4, 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:50:11.7462192' AS DateTime2), NULL, CAST(N'2023-12-10T11:21:06.8879510' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, 298, 2, 5, 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:50:26.3198044' AS DateTime2), NULL, CAST(N'2024-01-08T21:20:03.8867530' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, 143, 3, 2, 3, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:50:36.0624924' AS DateTime2), NULL, CAST(N'2023-12-10T11:20:40.6619740' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, 347, 4, 2, 4, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:50:51.5572244' AS DateTime2), NULL, CAST(N'2024-01-08T21:38:06.9438137' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, 249, 5, 7, 8, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:51:00.5980184' AS DateTime2), NULL, CAST(N'2023-12-10T11:22:16.1175010' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, 140, 6, 6, 10, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:51:10.9414137' AS DateTime2), NULL, CAST(N'2023-12-10T11:22:45.5306698' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (9, 50, 4, 3, 2, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:12:32.1112170' AS DateTime2), NULL, CAST(N'2023-12-30T13:32:30.0274852' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (10, 85, 7, 2, 2, NULL, NULL, NULL, NULL, CAST(N'2023-12-23T21:15:35.6957858' AS DateTime2), NULL, CAST(N'2023-12-30T13:32:30.0059301' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (11, 42, 7, 2, 3, NULL, NULL, NULL, NULL, CAST(N'2023-12-23T21:15:45.2042569' AS DateTime2), NULL, CAST(N'2023-12-30T13:32:30.0195158' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (12, 0, 8, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-23T21:19:54.3486855' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (13, 0, 8, 3, 2, NULL, NULL, NULL, NULL, CAST(N'2023-12-23T21:20:04.9401673' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (14, 197, 8, 2, 3, NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:29:24.2377683' AS DateTime2), NULL, CAST(N'2023-12-30T13:30:26.3333539' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (15, 98, 10, 8, 1, NULL, NULL, NULL, NULL, CAST(N'2024-06-19T22:43:02.0703535' AS DateTime2), NULL, CAST(N'2024-06-19T22:45:34.9172947' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (16, 0, 2, 9, 12, NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:11:33.7943081' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (17, 145, 11, 9, 12, NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:12:55.6816767' AS DateTime2), NULL, CAST(N'2024-06-26T21:13:33.8193264' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ProductVariants] OFF
GO
SET IDENTITY_INSERT [dbo].[ReceiptDetails] ON 

INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, 100, CAST(25000000.00 AS Decimal(18, 2)), 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, 150, CAST(37500000.00 AS Decimal(18, 2)), 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, 150, CAST(52500000.00 AS Decimal(18, 2)), 2, 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:20:40.6316152' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, 150, CAST(37500000.00 AS Decimal(18, 2)), 3, 3, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:21:06.8859152' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, 200, CAST(50000000.00 AS Decimal(18, 2)), 3, 4, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:21:06.8966115' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, 200, CAST(15000000.00 AS Decimal(18, 2)), 4, 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:21:36.5164693' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, 100, CAST(25000000.00 AS Decimal(18, 2)), 5, 7, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:22:16.1080896' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, 150, CAST(52500000.00 AS Decimal(18, 2)), 5, 7, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:22:16.1174672' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (9, 150, CAST(52500000.00 AS Decimal(18, 2)), 6, 8, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:22:45.5294647' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (10, 200, CAST(36000000.00 AS Decimal(18, 2)), 7, 14, NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:30:26.3274136' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (11, 100, CAST(22000000.00 AS Decimal(18, 2)), 8, 10, NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:32:30.0032345' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (12, 50, CAST(11000000.00 AS Decimal(18, 2)), 8, 11, NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:32:30.0144145' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (13, 50, CAST(3750000.00 AS Decimal(18, 2)), 8, 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:32:30.0228155' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (14, 50, CAST(3750000.00 AS Decimal(18, 2)), 8, 9, NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:32:30.0261075' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (15, 100, CAST(25000000.00 AS Decimal(18, 2)), 9, 4, NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:20:03.8781705' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (16, 100, CAST(7500000.00 AS Decimal(18, 2)), 10, 6, NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:38:06.9374102' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (17, 100, CAST(10000000.00 AS Decimal(18, 2)), 1010, 15, NULL, NULL, NULL, NULL, CAST(N'2024-06-19T22:45:34.9150879' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (18, 150, CAST(12000000.00 AS Decimal(18, 2)), 1011, 17, NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:13:33.8125452' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ReceiptDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Receipts] ON 

INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'0H9GXYC', CAST(62500000.00 AS Decimal(18, 2)), N'oke', N'148c41ec-f378-4168-83c5-2665fde87d63', 1, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:23:36.6577453' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'PI4T7KP', CAST(52500000.00 AS Decimal(18, 2)), N'Nhập sản phẩm của H&M', N'148c41ec-f378-4168-83c5-2665fde87d63', 3, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:20:40.5854774' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'006KXQW', CAST(87500000.00 AS Decimal(18, 2)), N'Nhập quần jean zara', N'148c41ec-f378-4168-83c5-2665fde87d63', 4, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:21:06.8793854' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'JRGILYA', CAST(15000000.00 AS Decimal(18, 2)), N'nhập áo ba lỗ Uniqlo', N'148c41ec-f378-4168-83c5-2665fde87d63', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:21:36.5114762' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'26WPYIC', CAST(77500000.00 AS Decimal(18, 2)), N'Nhập giày thể thao và giày chạy bộ Uniqlo', N'148c41ec-f378-4168-83c5-2665fde87d63', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:22:16.0999451' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'903TZSQ', CAST(52500000.00 AS Decimal(18, 2)), N'Nhập giày chạy bộ uniqlo', N'148c41ec-f378-4168-83c5-2665fde87d63', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:22:45.5262554' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'GVB93H9', CAST(36000000.00 AS Decimal(18, 2)), N'nhập hàng ngày 30/12', N'148c41ec-f378-4168-83c5-2665fde87d63', 3, NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:30:26.2910189' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, N'ZAXGD9X', CAST(40500000.00 AS Decimal(18, 2)), N'Nhập hàng Uniqlo ngày 30/12', N'148c41ec-f378-4168-83c5-2665fde87d63', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:32:29.9901259' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (9, N'68N0F6J', CAST(25000000.00 AS Decimal(18, 2)), N'Nhập hàng 8/1', N'148c41ec-f378-4168-83c5-2665fde87d63', 4, NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:20:03.8290419' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (10, N'VT7S1WJ', CAST(7500000.00 AS Decimal(18, 2)), N'Nhập áo 3 lỗ', N'148c41ec-f378-4168-83c5-2665fde87d63', 5, NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:38:06.9136822' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1009, N'THU1JNC', CAST(0.00 AS Decimal(18, 2)), N'Nhập áo sơ mi trắng size M ngày 29/4', N'b9cba919-6077-4b88-8c6b-ac136d54956c', 1, NULL, NULL, NULL, NULL, CAST(N'2024-04-29T16:46:11.5411220' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1010, N'P5Z93Y4', CAST(10000000.00 AS Decimal(18, 2)), N'chốt', N'ae32526b-9cdc-434d-9d4e-10289e4d064b', 7, NULL, NULL, NULL, NULL, CAST(N'2024-06-19T22:45:34.8755990' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1011, N'NQM04RC', CAST(12000000.00 AS Decimal(18, 2)), N'Nhập quần jean', N'ae32526b-9cdc-434d-9d4e-10289e4d064b', 7, NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:13:33.7667917' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Receipts] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'tạm ổn', 4, N'49d8c68f-8f48-457a-8457-33366333381b', 1, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:34:57.9425288' AS DateTime2), NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'Quá là tuyệt vời', 5, N'b280d88a-8f8b-4015-97e8-4e3460041769', 1, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:41:26.1557222' AS DateTime2), NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Sản phẩm tốt', 4, N'49d8c68f-8f48-457a-8457-33366333381b', 7, NULL, NULL, NULL, NULL, CAST(N'2024-01-05T14:35:36.8299032' AS DateTime2), NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'Sản phẩm tương đối tốt', 4, N'49d8c68f-8f48-457a-8457-33366333381b', 3, NULL, NULL, NULL, NULL, CAST(N'2024-01-07T22:56:05.0918168' AS DateTime2), NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'Sản phẩm tốt', 5, N'49d8c68f-8f48-457a-8457-33366333381b', 1, NULL, NULL, NULL, NULL, CAST(N'2024-01-07T23:01:41.4801211' AS DateTime2), NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'Sản phẩm tốt', 5, N'49d8c68f-8f48-457a-8457-33366333381b', 7, NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:12:31.3644684' AS DateTime2), NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, N'Sản phẩm đẹp', 5, N'49d8c68f-8f48-457a-8457-33366333381b', 7, NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:31:49.3573626' AS DateTime2), NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1007, N'Sản phẩm rất đẹp', 5, N'49d8c68f-8f48-457a-8457-33366333381b', 3, NULL, NULL, NULL, NULL, CAST(N'2024-03-18T21:28:12.5322583' AS DateTime2), NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1008, N'Áo 3 lỗ thoáng mát, đẹp', 5, N'49d8c68f-8f48-457a-8457-33366333381b', 4, NULL, NULL, NULL, NULL, CAST(N'2024-04-29T16:57:22.8751742' AS DateTime2), NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1009, N'123', 5, NULL, 7, NULL, NULL, NULL, NULL, CAST(N'2024-06-12T23:38:00.4342253' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'S', 1, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:43.4114789' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'M', 1, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:46.8894904' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'L', 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:31:17.0559384' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'XL', 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:31:22.5177063' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'38', 2, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:31:28.7973446' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'39', 2, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:31:33.1962644' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'40', 2, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:31:38.9009605' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, N'41', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:31:49.0972188' AS DateTime2), NULL, CAST(N'2023-12-10T10:32:21.5961683' AS DateTime2))
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (9, N'42', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:32:26.0213777' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (10, N'43', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:32:32.0214264' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (11, N'S', 2, NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:11:10.3261597' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (12, N'M', 2, NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:11:15.4885477' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (13, N'L', 2, NULL, NULL, NULL, NULL, CAST(N'2024-06-26T21:11:21.4587754' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Description], [Address], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'Christian Dior', N'099999999', N'Hãng thời trang đến từ UK', N'UK', NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:09.7156257' AS DateTime2), NULL, CAST(N'2024-01-04T22:09:08.6153387' AS DateTime2))
INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Description], [Address], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'Louis Vuiton', N'08888888', N'Hãng thời trang đến từ Pháp', N'France', NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:24.6228014' AS DateTime2), NULL, CAST(N'2024-01-04T22:09:18.5239828' AS DateTime2))
INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Description], [Address], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'H&M', N'07777777777', N'Chuyên cung cấp các loại quần áo phụ kiện', N'Thụy Điển', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:28:03.5229647' AS DateTime2), NULL, NULL)
INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Description], [Address], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Zara', N'066666666', N'Chuyên cung cấp quần áo ', N'Tây Ban Nha', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:29:00.3954140' AS DateTime2), NULL, NULL)
INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Description], [Address], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'Uniqlo', N'055555555', N'Hãng cung cấp quần áo đến từ Nhật Bản', N'Nhật Bản', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:29:31.0144782' AS DateTime2), NULL, NULL)
INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Description], [Address], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'Eco Life', N'0123456789', N'	Chuyên cung cấp quần áo', N'Việt Nam', NULL, NULL, NULL, NULL, CAST(N'2024-06-16T02:21:25.5833057' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [TypePayment]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AuthHistories]  WITH CHECK ADD  CONSTRAINT [FK_AuthHistories_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AuthHistories] CHECK CONSTRAINT [FK_AuthHistories_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BlogImages]  WITH CHECK ADD  CONSTRAINT [FK_BlogImages_Blogs_BlogId] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([Id])
GO
ALTER TABLE [dbo].[BlogImages] CHECK CONSTRAINT [FK_BlogImages_Blogs_BlogId]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Products_ProdId] FOREIGN KEY([ProdId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Products_ProdId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_ProductVariants_ProdVariantId] FOREIGN KEY([ProdVariantId])
REFERENCES [dbo].[ProductVariants] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_ProductVariants_ProdVariantId]
GO
ALTER TABLE [dbo].[Colors]  WITH CHECK ADD  CONSTRAINT [FK_Colors_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Colors] CHECK CONSTRAINT [FK_Colors_Categories_CategoryId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProdId] FOREIGN KEY([ProdId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProdId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_ProductVariants_ProdVariantId] FOREIGN KEY([ProdVariantId])
REFERENCES [dbo].[ProductVariants] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_ProductVariants_ProdVariantId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProdId] FOREIGN KEY([ProdId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProdId]
GO
ALTER TABLE [dbo].[ProductLikes]  WITH CHECK ADD  CONSTRAINT [FK_ProductLikes_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProductLikes] CHECK CONSTRAINT [FK_ProductLikes_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProductLikes]  WITH CHECK ADD  CONSTRAINT [FK_ProductLikes_Products_ProdId] FOREIGN KEY([ProdId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductLikes] CHECK CONSTRAINT [FK_ProductLikes_Products_ProdId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers_SupplierId] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers_SupplierId]
GO
ALTER TABLE [dbo].[ProductVariants]  WITH CHECK ADD  CONSTRAINT [FK_ProductVariants_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[ProductVariants] CHECK CONSTRAINT [FK_ProductVariants_Colors_ColorId]
GO
ALTER TABLE [dbo].[ProductVariants]  WITH CHECK ADD  CONSTRAINT [FK_ProductVariants_Products_ProdId] FOREIGN KEY([ProdId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductVariants] CHECK CONSTRAINT [FK_ProductVariants_Products_ProdId]
GO
ALTER TABLE [dbo].[ProductVariants]  WITH CHECK ADD  CONSTRAINT [FK_ProductVariants_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
GO
ALTER TABLE [dbo].[ProductVariants] CHECK CONSTRAINT [FK_ProductVariants_Sizes_SizeId]
GO
ALTER TABLE [dbo].[ReceiptDetails]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptDetails_ProductVariants_ProdVariantId] FOREIGN KEY([ProdVariantId])
REFERENCES [dbo].[ProductVariants] ([Id])
GO
ALTER TABLE [dbo].[ReceiptDetails] CHECK CONSTRAINT [FK_ReceiptDetails_ProductVariants_ProdVariantId]
GO
ALTER TABLE [dbo].[ReceiptDetails]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptDetails_Receipts_ReceiptId] FOREIGN KEY([ReceiptId])
REFERENCES [dbo].[Receipts] ([Id])
GO
ALTER TABLE [dbo].[ReceiptDetails] CHECK CONSTRAINT [FK_ReceiptDetails_Receipts_ReceiptId]
GO
ALTER TABLE [dbo].[Receipts]  WITH CHECK ADD  CONSTRAINT [FK_Receipts_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Receipts] CHECK CONSTRAINT [FK_Receipts_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Receipts]  WITH CHECK ADD  CONSTRAINT [FK_Receipts_Suppliers_SupplierId] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Receipts] CHECK CONSTRAINT [FK_Receipts_Suppliers_SupplierId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Products_ProdId] FOREIGN KEY([ProdId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Products_ProdId]
GO
ALTER TABLE [dbo].[Sizes]  WITH CHECK ADD  CONSTRAINT [FK_Sizes_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Sizes] CHECK CONSTRAINT [FK_Sizes_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [E_shop] SET  READ_WRITE 
GO
