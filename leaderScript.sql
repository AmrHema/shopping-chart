USE [master]
GO
/****** Object:  Database [leader]    Script Date: 24-03-2019 12:56:18 ص ******/
CREATE DATABASE [leader]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'leader', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\leader.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'leader_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\leader_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [leader] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [leader].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [leader] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [leader] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [leader] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [leader] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [leader] SET ARITHABORT OFF 
GO
ALTER DATABASE [leader] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [leader] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [leader] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [leader] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [leader] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [leader] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [leader] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [leader] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [leader] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [leader] SET  DISABLE_BROKER 
GO
ALTER DATABASE [leader] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [leader] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [leader] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [leader] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [leader] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [leader] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [leader] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [leader] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [leader] SET  MULTI_USER 
GO
ALTER DATABASE [leader] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [leader] SET DB_CHAINING OFF 
GO
ALTER DATABASE [leader] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [leader] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [leader] SET DELAYED_DURABILITY = DISABLED 
GO
USE [leader]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 24-03-2019 12:56:18 ص ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 24-03-2019 12:56:18 ص ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 24-03-2019 12:56:18 ص ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 24-03-2019 12:56:18 ص ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 24-03-2019 12:56:18 ص ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 24-03-2019 12:56:18 ص ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 24-03-2019 12:56:18 ص ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 24-03-2019 12:56:18 ص ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 24-03-2019 12:56:18 ص ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 24-03-2019 12:56:18 ص ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 24-03-2019 12:56:18 ص ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 24-03-2019 12:56:18 ص ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 24-03-2019 12:56:18 ص ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
ALTER ROLE [aspnet_Roles_BasicAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Roles_ReportingAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Profile_BasicAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Profile_ReportingAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_BasicAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_ReportingAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Membership_BasicAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Membership_ReportingAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
	[Notes] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[UserType] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Cat_id] [int] IDENTITY(1,1) NOT NULL,
	[Cat_Name] [nvarchar](50) NOT NULL,
	[Cat_Description] [nvarchar](200) NULL,
	[Cat_Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[FName] [varchar](50) NOT NULL,
	[LName] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[Postcode] [varchar](50) NOT NULL,
	[Ctype] [varchar](50) NOT NULL,
	[CardNo] [varchar](50) NOT NULL,
	[ExpDate] [datetime] NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order_Products]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Products](
	[OrderID] [int] NOT NULL,
	[PID] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[TotalSale] [money] NOT NULL,
 CONSTRAINT [PK_Order_Products] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[PID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Order_id] [int] IDENTITY(1,1) NOT NULL,
	[Order_date] [datetime] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipCity] [nvarchar](50) NULL,
	[ShipArea] [nvarchar](50) NULL,
	[ShipAddress] [nvarchar](50) NULL,
	[username] [nvarchar](30) NULL,
	[DeliveryDate] [datetime] NULL,
	[CID] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Cat_id] [int] NOT NULL,
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [nvarchar](50) NOT NULL,
	[Product_Price] [decimal](9, 2) NOT NULL,
	[Product_QTY] [int] NOT NULL,
	[Product_Writing_Date] [datetime] NULL,
	[Product_Description] [nvarchar](200) NULL,
	[Product_Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  View [dbo].[gridproductView]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[gridproductView]
as
SELECT        dbo.Categories.Cat_Name, dbo.Products.Product_id, dbo.Products.Product_Name, dbo.Products.Product_Price, dbo.Products.Product_QTY, 
                         dbo.Products.Product_Writing_Date, dbo.Products.Product_Description
FROM            dbo.Categories INNER JOIN
                         dbo.Products ON dbo.Categories.Cat_id = dbo.Products.Cat_id
GO
/****** Object:  View [dbo].[Membres_View]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Membres_View]
as
SELECT        username, name, email, phone, compagny, 
case gender when 'M' then 'Male' else 'Female' end as 'gender'
FROM            membre
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201902100159129_InitialCreate', N'SimpleMembre.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E2F70FE83A0A79E22B572E92EF604F616A9939C137473C13ABBE8DB82966887588952252A9BE0A0BFEC3CF427F52F9CA144C9122FBAD88AED140B2C2C72F8CD70382487C361FEFADF9FE39F9F02DF7AC47142423AB18F4687B685A91B7A842E2776CA163FBEB37F7EFF8FEFC6175EF0647D2EE84E381DB4A4C9C47E602C3A759CC47DC0014A460171E33009176CE4868183BCD0393E3CFC977374E46080B001CBB2C61F53CA4880B30FF89C86D4C5114B917F1D7AD84F4439D4CC3254EB06053889908B27F68C04918FAF71308FF12827B7AD339F20106586FD856D214A438618087AFA29C133168774398BA000F9F7CF1106BA05F2132C3A70BA22EFDA97C363DE1767D5B08072D38485414FC0A313A11C476EBE968AED5279A0BE0B50337BE6BDCE5438B1AF3C9C157D0C7D5080CCF074EAC79C78625F972CCE92E806B351D17094435EC600F72D8CBF8EAA880756E77607A5311D8F0EF9BF036B9AFA2C8DF184E294C5C83FB0EED2B94FDC5FF1F37DF815D3C9C9D17C71F2EECD5BE49DBCFD099FBCA9F614FA0A74B50228BA8BC308C7201B5E94FDB72DA7DECE911B96CD2A6D72AD802DC1BCB0AD6BF4F401D3257B801973FCCEB62EC913F68A12615C9F288169048D589CC2E74DEAFB68EEE3B2DE69E4C9FF6FE07AFCE6ED205C6FD0235966432FF1878913C3BCFA88FDAC367920513EBD6AE3FD45905DC661C0BFEBF695D77E998569ECF2CE8446927B142F31AB4B377656C6DBC9A439D4F0665DA0EEBF69734955F3D692F20EAD33130A16DB9E0D85BC2FCBB7B3C59D45110C5E665A5C234D06A7D9AD4652F303AB4AB4329EA3AEC643A1537FE7B5F02240C41F6031ECC0051C910589035CF6F297104C0FD1DE32DFA12481B5C0FB0F4A1E1A44879F03883EC36E1A8389CE180AA217E776F710527C9306736EF9DBE335D8D0DC7F0B2F91CBC2F882F2561BE37D08DDAF61CA2EA8778E18FEC4DC02907FDE93A03BC020E29CB92E4E924B3066EC4D43F0B30BC02BCA4E8E7BC3F1156AD7CEC8D44724D07B23D25AFAA5205D79247A0AC52B3190E93C9326513F844B42BB895A909A45CD295A4515647D45E560DD24159466413382563973AAC17CBD6C848677F632D8FDF7F636DBBC4D6B41458D335821F1BF31C5312C63DE1D620CC77435025DD68D5D380BD9F071A62FBE37659C3E233F1D9AD55AB3215B04869F0D19ECFECF864C4C287E241EF74A3A1C810A6280EF44AF3F5DB5CF3949B26D4F875A37B7CD7C3B6B8069BA9C2549E8926C1668825F227451971F7C38AB3D8E91F7468E8540C7C0D009DFF2A004FA66CB46754BCFB18F19B6CEDC3C383845898B3C558DD021AF8760C58EAA116C1513A90BF783C2132C1DC7BC11E287A004662AA14C9D1684BA24427EAB96A4961DB730DEF792875C738E234C39C3564D7461AE0F8170014A3ED2A0B46968EC542CAED9100D5EAB69CCDB5CD8D5B82B9189ADD8648BEF6CB04BE1BFBD8861366B6C0BC6D9AC922E0218C379BB30507156E96A00F2C165DF0C543A31190C54B8545B31D0BAC67660A07595BC3A03CD8FA85DC75F3AAFEE9B79D60FCADBDFD61BD5B503DBACE963CF4C33F73DA10D83163856CDF37CCE2BF113D31CCE404E713E4B84AB2B9B08079F61560FD9ACFC5DAD1FEA3483C846D404B832B416507111A8002913AA8770452CAF513AE145F4802DE26E8DB062ED97602B36A062572F442B84E66B53D9383B9D3ECA9E95D6A01879A7C34205476310F2E255EF7807A598E2B2AA62BAF8C27DBCE14AC7C4603428A8C5733528A9E8CCE05A2A4CB35D4B3A87AC8F4BB6919624F7C9A0A5A233836B49D868BB92344E410FB7602315D5B7F081265B11E928779BB26EECE48952A260EC1832AAC6D7288A085D5632AC448935CBD3ABA63FCEFAA71D053986E3269AECA352DA92130B63B4C4522DB006492F499CB073C4D01CF138CFD40B1432EDDE6A58FE0B96D5ED531DC4621F28A8F96F71B3AAB9BEAF6DB6AA3722402EA18B017769B238BAC600F4CD2D9EF2867C146B42F7D3D04F036AF6B0CCADF30BBC6AFBBC4445183B92FC8A07A5A84BF173EBBAEF3432EAAC186A944A0F66FD91324398F45DF89F558D9B7C52334A11A2AAA298C2563B1B39932BD36FB46437B1FF60B522BCCCCC12B929550051D413A392DEA08055EABAA3D63350AA98F59AEE88529A491552AAEA21653599A42664B5622D3C8346F514DD39A8E9235574B5B63BB22691A40AADA95E035B23B35CD71D55936B5205D65477C75E259EC8ABE81EEF5DC6C3CBFA9B577EC0DD6CF73260BCCC9238CCE657B9C7AF02558A7B62899B7A054C94EFA539194F79EB9B531ED8D8CC9C0C18E6B5A776055E5F7A1AEFEDCD98B57BEDDAF2DE74AF6FC6EB67B42F6A1ACA294F2629B997A73DE954371627ACF6C734CA912B27B1AD428D6050CF09C3C188138C66BFFB539F60BE901704D78892054E589ECB611F1F1E1D4BCF71F6E7698C93249EAF39A19ADEC7D4C76C0B6959F411C5EE038AD524890D9E8FAC4095F8F315F5F0D3C4FE6FD6EA340B65F05F59F18175957CA2E4F7142AEEE3145B7FA8499FC3A4D37778C0510AFAC7AB7819D15DE557BF7DC99B1E58B7314CA753EB5052F43AC35F7F2FD14B9ABCE906D2ACFD8AE2F5CEB6DA03052DAA345BD67F8F30276C90B7088594DF07E8E99F7D45D3BE37D80851F3A66028BC4154687A33B00E96F1BD80079F2C7B2FD0AFB3FAF703EB88667C3B40687F30F9E540F765A868B9C37D487362DAC69294E9B935F37AA334CC5DEF4D4A82F646135D4DC2EE013768A2F5662ECA2B4B601E6CEBD4E4270F86BD4BBB7FF1A4E47DC9435E39EDBB4D3FDE66C671C39DD2DF2AD1780F52E334A93EBB4F27DEB6AD9942C07B9E93D92F6978CF8C4D6CF3BB4F0DDEB6B19902C47B6E6CBD1280F7CCD676B57FEED8D23A6FA13B4FE75533930C5739BA28725BBA6E1E7287E3FF3C0423C83DCAFC95A53E3FAC29B7B585E18AC4CCD49C98263356268EC257A16866DBAFAF62C36FECACA069666B48E76CE22DD6FF46DE82A699B72149721789C6DA34455DF277CB3AD69441F59A128B6B3D69C9636FF3591BEFE55F531EF1204AA9CD1EC3EDF2EB491B1E4425434E9D1E69C2EA4531EC9D95BFCD08FB7742962B08FE971A29766BBB664973451761B1794B1215245284E61A33E4C1967A1633B2402E836A1E80CE9E8967413D7E0D32C7DE15BD4D599432E8320EE67E2DE0C59D8026FE592E745DE6F16DC4BF9221BA0062121EB8BFA5BFA4C4F74AB92F3531210304F72E44B8978F25E361DFE573897413D28E40427DA553748F83C807B0E496CED0235E473630BF0F7889DCE75504D004D23E1075B58FCF095AC6284804C6AA3D7C820D7BC1D3FBFF036B0293C7A2540000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'27527e6c-b932-4121-84fd-182d4b5c85ad', N'admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'79d8cb88-c22e-41ea-8123-a9f3f3def913', N'employee')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'764d2423-3923-4b92-800f-20ef4da1e40f', N'user')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Cat_id], [Cat_Name], [Cat_Description], [Cat_Image]) VALUES (49, N'Mobiles', N'top', N'~/Common/CatImages/49.jpg')
INSERT [dbo].[Categories] ([Cat_id], [Cat_Name], [Cat_Description], [Cat_Image]) VALUES (50, N'TV', N'Top', N'~/Common/CatImages/50.jpg')
INSERT [dbo].[Categories] ([Cat_id], [Cat_Name], [Cat_Description], [Cat_Image]) VALUES (51, N'Camera', N'Top', N'~/Common/CatImages/51.jpg')
INSERT [dbo].[Categories] ([Cat_id], [Cat_Name], [Cat_Description], [Cat_Image]) VALUES (52, N'Fleurs', N'Siper', N'~/Common/CatImages/52.jpg')
INSERT [dbo].[Categories] ([Cat_id], [Cat_Name], [Cat_Description], [Cat_Image]) VALUES (55, N'Ordinateurs', N'Excellent Labs', N'~/Common/CatImages/55.jpg')
INSERT [dbo].[Categories] ([Cat_id], [Cat_Name], [Cat_Description], [Cat_Image]) VALUES (113, N'Books', N'New Books', N'~/Common/CatImages/113.jpg')
INSERT [dbo].[Categories] ([Cat_id], [Cat_Name], [Cat_Description], [Cat_Image]) VALUES (120, N'Books_Bravo', N'Yahoooooooooo', N'~/Common/Images/uploade.jpg')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (49, 23, N'Infinix', CAST(5000.00 AS Decimal(9, 2)), 244, CAST(N'2019-03-20 00:00:00.000' AS DateTime), N'test test', N'~/Common/Images/49-23.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (50, 24, N'toshiba', CAST(6500.00 AS Decimal(9, 2)), 122, CAST(N'2011-09-28 00:00:00.000' AS DateTime), N'test test', N'~/Common/Images/22.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (51, 25, N'Codec', CAST(6500.00 AS Decimal(9, 2)), 182, CAST(N'2019-01-19 00:00:00.000' AS DateTime), N'test test', N'~/Common/Images/35mm-film-camera-Jem7WvE-600.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (52, 27, N'Rose', CAST(200.00 AS Decimal(9, 2)), 300, CAST(N'2015-08-24 00:00:00.000' AS DateTime), N'Super', N'~/Common/Images/52-27.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (52, 28, N'Violets', CAST(500.00 AS Decimal(9, 2)), 190, CAST(N'2017-11-17 00:00:00.000' AS DateTime), N'test test', N'~/Common/Images/52-28.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (49, 29, N'mobile-tablets', CAST(3500.00 AS Decimal(9, 2)), 149, CAST(N'2017-01-31 00:00:00.000' AS DateTime), N'test test', N'~/Common/Images/49-29.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (49, 34, N'Alcatel', CAST(500.00 AS Decimal(9, 2)), 500, CAST(N'2019-03-06 00:00:00.000' AS DateTime), N'Product_Name', N'~/Common/Images/49-34.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (52, 35, N'Lily Flower ', CAST(200.00 AS Decimal(9, 2)), 200, CAST(N'2019-02-16 00:00:00.000' AS DateTime), N'Ajax Top', N'~/Common/Images/52-35.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (49, 40, N'Mobile 1', CAST(1000.00 AS Decimal(9, 2)), 200, CAST(N'2019-03-19 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/49-40.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (49, 41, N'Mobile 2', CAST(2000.00 AS Decimal(9, 2)), 150, CAST(N'2019-03-15 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/49-41.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (49, 43, N'P-Tablet', CAST(10000.00 AS Decimal(9, 2)), 150, CAST(N'2019-03-11 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/49-43.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (52, 44, N'Lush-600x800', CAST(100.00 AS Decimal(9, 2)), 200, CAST(N'2019-03-19 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/52-44.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (49, 45, N'Bouquet', CAST(200.00 AS Decimal(9, 2)), 100, CAST(N'2019-03-14 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/49-45.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (51, 46, N'Canon', CAST(500.00 AS Decimal(9, 2)), 100, CAST(N'2019-03-14 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/51-46.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (51, 47, N'nikon_9', CAST(600.00 AS Decimal(9, 2)), 150, CAST(N'2019-03-14 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/51-47.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (55, 48, N'Laptop 2', CAST(10000.00 AS Decimal(9, 2)), 150, CAST(N'2019-03-14 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/55-48.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (55, 49, N'HP', CAST(10500.00 AS Decimal(9, 2)), 100, CAST(N'2019-03-14 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/55-49.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (55, 50, N'Dell', CAST(8000.00 AS Decimal(9, 2)), 100, CAST(N'2019-03-14 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/55-50.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (113, 51, N'BRAVO 1ع', CAST(60.00 AS Decimal(9, 2)), 5000, CAST(N'2019-03-19 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/113-51.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (113, 52, N'BRAVO 2ع', CAST(70.00 AS Decimal(9, 2)), 6000, CAST(N'2019-03-14 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/113-52.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (113, 53, N'BRAVO 3ع ', CAST(80.00 AS Decimal(9, 2)), 7000, CAST(N'2019-03-12 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/113-53.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (113, 54, N'Book', CAST(100.00 AS Decimal(9, 2)), 5000, CAST(N'2019-03-18 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/113-54.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (55, 55, N'laptops', CAST(8000.00 AS Decimal(9, 2)), 600, CAST(N'2019-03-14 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/55-55.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (50, 56, N'Tv', CAST(6000.00 AS Decimal(9, 2)), 600, CAST(N'2019-03-14 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/50-56.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (50, 57, N'Tv', CAST(9000.00 AS Decimal(9, 2)), 4000, CAST(N'2019-03-20 00:00:00.000' AS DateTime), N't', N'~/Common/Images/50-57.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (50, 58, N'lgtvthing', CAST(7000.00 AS Decimal(9, 2)), 600, CAST(N'2019-03-14 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/50-58.jpg')
INSERT [dbo].[Products] ([Cat_id], [Product_id], [Product_Name], [Product_Price], [Product_QTY], [Product_Writing_Date], [Product_Description], [Product_Image]) VALUES (51, 59, N'codec', CAST(1500.00 AS Decimal(9, 2)), 564, CAST(N'2019-03-14 00:00:00.000' AS DateTime), N'top', N'~/Common/Images/51-59.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 24-03-2019 12:56:19 ص ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Order_Products]  WITH CHECK ADD  CONSTRAINT [FK_Order_Products_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([Order_id])
GO
ALTER TABLE [dbo].[Order_Products] CHECK CONSTRAINT [FK_Order_Products_Orders]
GO
ALTER TABLE [dbo].[Order_Products]  WITH CHECK ADD  CONSTRAINT [FK_Order_Products_Products] FOREIGN KEY([PID])
REFERENCES [dbo].[Products] ([Product_id])
GO
ALTER TABLE [dbo].[Order_Products] CHECK CONSTRAINT [FK_Order_Products_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Orders] FOREIGN KEY([CID])
REFERENCES [dbo].[Customers] ([CID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Orders]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Products] FOREIGN KEY([Cat_id])
REFERENCES [dbo].[Categories] ([Cat_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Products]
GO
/****** Object:  StoredProcedure [dbo].[ChangePass]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChangePass]
@username nvarchar(30),
@NewPassword nvarchar(200)
as
if(Exists(select name from membre where username=@username))
begin 
UPDATE       membre
SET password_ =@NewPassword where username=@username
 select 1 as returncode
end
else
begin 
select 0 as returncode
end
GO
/****** Object:  StoredProcedure [dbo].[ManagCard]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ManagCard]
(
@check nchar(1),
@CardType	nvarchar(50) = null,
@CardNumber	int	= null,
@Month	nvarchar(50) = null,
@Year	nvarchar(50) = null,
@NameOfCard	nvarchar(50)= null,
@username	nvarchar(30) = null
)
AS
if @check='i'
BEGIN
	INSERT INTO Card
                         (CardType, CardNumber, [Month], [Year], NameOfCard, username)
VALUES        (@CardType, @CardNumber, @Month, @Year, @NameOfCard, @username)
END
if @check='u'
BEGIN
UPDATE       Card
SET                CardType = @CardType, [Month] = @Month, [Year] = @Year, NameOfCard = @NameOfCard, username = @username
WHERE        (CardNumber = @CardNumber)
END
if @check='d'
BEGIN
DELETE FROM Card
WHERE        (CardNumber = @CardNumber)
END

GO
/****** Object:  StoredProcedure [dbo].[MangCategories]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[MangCategories]
(
@typeProcedure		nchar(1),
@Cat_id				int = null,
@Cat_Name			nvarchar(50)=null,
@Cat_Description	nvarchar(50)=null,
@Cat_Image			nvarchar(MAX)=null
)
as
if @typeProcedure = 'i'
begin
insert into Categories (Cat_Name,Cat_Description,Cat_Image) 
values (@Cat_Name,@Cat_Description,@Cat_Image)
end
if @typeProcedure = 'u'
begin
update Categories set Cat_Name= @Cat_Name, Cat_Description =@Cat_Description,Cat_Image=@Cat_Image
where Cat_id = @Cat_id	
end
if @typeProcedure = 'd'
begin
delete from Categories where Cat_id = @Cat_id	
end

GO
/****** Object:  StoredProcedure [dbo].[MangMembre]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MangMembre]
	(
	@typeProcedure	nchar(1),
	@username	nvarchar(30),
	@password_	nvarchar(Max) =null,
	@name		nvarchar(50) =null,
	@email		nvarchar(30) =null,
	@phone		nvarchar(30) =null,
	@compagny	nvarchar(30) =null,
	@gender		nchar(1) =null,
	@birthdate	date =null,
	@question	nvarchar(80)=null,
	@answer		nvarchar(30) =null
	)
AS
if @typeProcedure='i'
begin
declare @count int
declare @returncode int

select @count = count(username) from membre where username = @username
if @count>0
begin
set @returncode = -1
end
else
begin
set @returncode = 1
insert into membre values(@username,@password_,@name,@email,@phone,@compagny,@gender,@birthdate,@question,@answer)
end
select @returncode as returnvalue
end
if @typeProcedure='u'
begin
update membre set password_= @password_,name=@name,email=@email,
phone=@phone,compagny=@compagny,gender=@gender,birthdate=@birthdate,
question=@question,answer=@answer where username=@username
end
if @typeProcedure='d'
begin
delete from membre where username=@username
end



GO
/****** Object:  StoredProcedure [dbo].[MangOrders]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[MangOrders]
(
@typeProcedure			nchar(1),
@Order_id				int = null,
@Order_date				DateTime = null,
@ShipName				nvarchar(50) = null,
@ShipCity				nvarchar(50) = null,
@ShipArea				nvarchar(50) = null,
@ShipAddress			nvarchar(50) = null,
@usernameOrder				nvarchar(30)=null
)
as
if @typeProcedure = 'i'
begin
insert into Orders (Order_date,ShipName,ShipCity,ShipArea,ShipAddress,username) 
values (@Order_date,@ShipName,@ShipCity,@ShipArea,@ShipAddress,@usernameOrder) 
end

if @typeProcedure = 'u'
begin
update Orders set Order_date = @Order_date,ShipName = @ShipName,
ShipCity = @ShipCity,ShipArea = @ShipArea,ShipAddress = @ShipAddress,username = @usernameOrder 
where Order_id = @Order_id
end

if @typeProcedure = 'd'
begin
delete from Orders where Order_id = @Order_id
end

GO
/****** Object:  StoredProcedure [dbo].[MangOrders_Detailes]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[MangOrders_Detailes]
(
@typeProcedure			nchar(1),
@Cat_id					nvarchar(50) = null,
@Product_id				int = null,
@Order_id				int = null,
@Order_detailes_id		int = null,
@Price					decimal(9,2) = null,
@Quantity				int = null,
@Discout				int = null
)
as
if @typeProcedure = 'i'
begin
insert into Orders_Detailes (Cat_id,Product_id,Order_id,Price,Quantity,Discout) 
values (@Cat_id,@Product_id,@Order_id,@Price,@Quantity,@Discout)
end

if @typeProcedure = 'u'
begin
update Orders_Detailes set Cat_id = @Cat_id,Product_id=@Product_id,
Order_id=@Order_id,Price=@Price,Quantity=@Quantity,Discout=@Discout
where @Order_detailes_id = @Order_detailes_id	
end

if @typeProcedure = 'd'
begin
delete from Orders_Detailes where @Order_detailes_id = @Order_detailes_id	
end

GO
/****** Object:  StoredProcedure [dbo].[MangProducts]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[MangProducts]
(
@typeProcedure			nchar(1),
@Cat_id					int= null,
@Product_id				int= null,
@Product_Name			nvarchar(50) = null,
@Product_Price			decimal(9,2) = null,
@Product_QTY			int = null,
@Product_Writing_Date	DateTime = null,
@Product_Description	nvarchar(MAX)=null,
@Product_Image			nvarchar(MAX)=null
)
as
if @typeProcedure = 'i'
begin
insert into Products (Cat_id,Product_Name,Product_Price,Product_QTY,Product_Writing_Date,Product_Description,Product_Image) 
values (@Cat_id,@Product_Name,@Product_Price,@Product_QTY,@Product_Writing_Date,@Product_Description,@Product_Image) 
end
if @typeProcedure = 'u'
begin
update Products set Cat_id= @Cat_id	, Product_Name=@Product_Name,Product_Price=@Product_Price,
Product_QTY=@Product_QTY,Product_Writing_Date=@Product_Writing_Date,Product_Description=@Product_Description
,Product_Image = @Product_Image where Product_id = @Product_id
end
if @typeProcedure = 'd'
begin
delete from Products where Product_id = @Product_id	
end



GO
/****** Object:  StoredProcedure [dbo].[MaxCategorie]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[MaxCategorie]
as
select isnull(max (Cat_id)+1,1)from Categories
GO
/****** Object:  StoredProcedure [dbo].[MaxOrdersID]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[MaxOrdersID]
as
select isnull(max (Order_id)+1,1)from Orders

GO
/****** Object:  StoredProcedure [dbo].[MaxProducts]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[MaxProducts]
as
select isnull(max (Product_id)+1,1)from Products
GO
/****** Object:  StoredProcedure [dbo].[resetPassword]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[resetPassword]
@username nvarchar (30)
as
declare @email nvarchar (30)
declare @resetRequestDateTime DateTime

SELECT @username= username,@email= email FROM   membre 
where username = @username
if( @email is not null)
begin
declare @Guid uniqueidentifier = newID();
INSERT INTO changePassword
                         (id, username, resetRequestDateTime)
VALUES        (@Guid,@username,Getdate())
select 1 as returncod, @Guid as uniqID, @email as Mail
end
else
begin
select 0 as returncod, null as uniqID, null as Mail
end

GO
/****** Object:  StoredProcedure [dbo].[search]    Script Date: 24-03-2019 12:56:19 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[search] 
 @fieldname nvarchar(50),
 @value nvarchar(100)
AS
SELECT username, name, email, compagny,gender FROM [dbo].[membre]
 WHERE Convert(nvarchar, @fieldname)  LIKE '%' + Convert(nvarchar,@value) + '%';
GO
USE [master]
GO
ALTER DATABASE [leader] SET  READ_WRITE 
GO
