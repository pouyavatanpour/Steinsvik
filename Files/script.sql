USE [Steinsvik]
GO
/****** Object:  StoredProcedure [dbo].[UpdateFishesInTanks]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[UpdateFishesInTanks]
GO
/****** Object:  StoredProcedure [dbo].[RestrictedTanks]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[RestrictedTanks]
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Login]
GO
/****** Object:  StoredProcedure [dbo].[GetUserNames]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetUserNames]
GO
/****** Object:  StoredProcedure [dbo].[GetTanks]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetTanks]
GO
/****** Object:  StoredProcedure [dbo].[GetReport]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetReport]
GO
/****** Object:  StoredProcedure [dbo].[GetOperationCodes]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetOperationCodes]
GO
/****** Object:  StoredProcedure [dbo].[GetFishesInTanks]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetFishesInTanks]
GO
/****** Object:  StoredProcedure [dbo].[GetFishes]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetFishes]
GO
/****** Object:  StoredProcedure [dbo].[GetCurrentTankByFish]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetCurrentTankByFish]
GO
/****** Object:  StoredProcedure [dbo].[GetAcceptableTankByCurrentFishStatus]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetAcceptableTankByCurrentFishStatus]
GO
/****** Object:  StoredProcedure [dbo].[AddUser]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[AddUser]
GO
/****** Object:  StoredProcedure [dbo].[AddOperation]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[AddOperation]
GO
/****** Object:  StoredProcedure [dbo].[AddFirstAssign]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[AddFirstAssign]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Operations]') AND type in (N'U'))
ALTER TABLE [dbo].[Operations] DROP CONSTRAINT IF EXISTS [FK_Operations_Users]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Operations]') AND type in (N'U'))
ALTER TABLE [dbo].[Operations] DROP CONSTRAINT IF EXISTS [FK_Operations_TanksTo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Operations]') AND type in (N'U'))
ALTER TABLE [dbo].[Operations] DROP CONSTRAINT IF EXISTS [FK_Operations_TanksFrom]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Operations]') AND type in (N'U'))
ALTER TABLE [dbo].[Operations] DROP CONSTRAINT IF EXISTS [FK_Operations_OperationCodes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Operations]') AND type in (N'U'))
ALTER TABLE [dbo].[Operations] DROP CONSTRAINT IF EXISTS [FK_Operations_Fishes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FishesInTanks]') AND type in (N'U'))
ALTER TABLE [dbo].[FishesInTanks] DROP CONSTRAINT IF EXISTS [FK_FishesinTanks_Users]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FishesInTanks]') AND type in (N'U'))
ALTER TABLE [dbo].[FishesInTanks] DROP CONSTRAINT IF EXISTS [FK_FishesinTanks_Tanks]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FishesInTanks]') AND type in (N'U'))
ALTER TABLE [dbo].[FishesInTanks] DROP CONSTRAINT IF EXISTS [FK_FishesinTanks_Fishes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tanks]') AND type in (N'U'))
ALTER TABLE [dbo].[Tanks] DROP CONSTRAINT IF EXISTS [DF_Tanks_Createdate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Operations]') AND type in (N'U'))
ALTER TABLE [dbo].[Operations] DROP CONSTRAINT IF EXISTS [DF_Operations_Createdate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FishesInTanks]') AND type in (N'U'))
ALTER TABLE [dbo].[FishesInTanks] DROP CONSTRAINT IF EXISTS [DF_FishesinTanks_Createdate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Fishes]') AND type in (N'U'))
ALTER TABLE [dbo].[Fishes] DROP CONSTRAINT IF EXISTS [DF_Fishes_Createdate]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP TABLE IF EXISTS [dbo].[Users]
GO
/****** Object:  Table [dbo].[Tanks]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP TABLE IF EXISTS [dbo].[Tanks]
GO
/****** Object:  Table [dbo].[Operations]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP TABLE IF EXISTS [dbo].[Operations]
GO
/****** Object:  Table [dbo].[OperationCodes]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP TABLE IF EXISTS [dbo].[OperationCodes]
GO
/****** Object:  Table [dbo].[FishesInTanks]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP TABLE IF EXISTS [dbo].[FishesInTanks]
GO
/****** Object:  Table [dbo].[Fishes]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP TABLE IF EXISTS [dbo].[Fishes]
GO
/****** Object:  UserDefinedFunction [dbo].[MaximumFishPerTank]    Script Date: 12/20/2020 5:11:44 PM ******/
DROP FUNCTION IF EXISTS [dbo].[MaximumFishPerTank]
GO
USE [master]
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 12/20/2020 5:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyEventProcessingLogin##')
DROP LOGIN [##MS_PolicyEventProcessingLogin##]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 12/20/2020 5:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyTsqlExecutionLogin##')
DROP LOGIN [##MS_PolicyTsqlExecutionLogin##]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 12/20/2020 5:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
DROP LOGIN [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 12/20/2020 5:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT Service\MSSQLSERVER')
DROP LOGIN [NT Service\MSSQLSERVER]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 12/20/2020 5:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLSERVERAGENT')
DROP LOGIN [NT SERVICE\SQLSERVERAGENT]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY]    Script Date: 12/20/2020 5:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLTELEMETRY')
DROP LOGIN [NT SERVICE\SQLTELEMETRY]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 12/20/2020 5:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLWriter')
DROP LOGIN [NT SERVICE\SQLWriter]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 12/20/2020 5:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\Winmgmt')
DROP LOGIN [NT SERVICE\Winmgmt]
GO
/****** Object:  Login [POUYA-PC\Pouya]    Script Date: 12/20/2020 5:11:44 PM ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'POUYA-PC\Pouya')
DROP LOGIN [POUYA-PC\Pouya]
GO
/****** Object:  Database [Steinsvik]    Script Date: 12/20/2020 5:11:45 PM ******/
DROP DATABASE IF EXISTS [Steinsvik]
GO
/****** Object:  Database [Steinsvik]    Script Date: 12/20/2020 5:11:45 PM ******/
CREATE DATABASE [Steinsvik]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Steinsvik', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Steinsvik.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Steinsvik_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Steinsvik_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Steinsvik] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Steinsvik].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Steinsvik] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Steinsvik] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Steinsvik] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Steinsvik] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Steinsvik] SET ARITHABORT OFF 
GO
ALTER DATABASE [Steinsvik] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Steinsvik] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Steinsvik] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Steinsvik] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Steinsvik] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Steinsvik] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Steinsvik] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Steinsvik] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Steinsvik] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Steinsvik] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Steinsvik] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Steinsvik] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Steinsvik] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Steinsvik] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Steinsvik] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Steinsvik] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Steinsvik] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Steinsvik] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Steinsvik] SET  MULTI_USER 
GO
ALTER DATABASE [Steinsvik] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Steinsvik] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Steinsvik] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Steinsvik] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Steinsvik] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Steinsvik', N'ON'
GO
ALTER DATABASE [Steinsvik] SET QUERY_STORE = OFF
GO
/****** Object:  Login [POUYA-PC\Pouya]    Script Date: 12/20/2020 5:11:45 PM ******/
CREATE LOGIN [POUYA-PC\Pouya] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 12/20/2020 5:11:45 PM ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 12/20/2020 5:11:45 PM ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY]    Script Date: 12/20/2020 5:11:45 PM ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 12/20/2020 5:11:45 PM ******/
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 12/20/2020 5:11:45 PM ******/
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 12/20/2020 5:11:45 PM ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 12/20/2020 5:11:45 PM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'ZriIqSb2rhcMCN/jzOxUS9M2CFANSO77lLRQK1bPztc=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 12/20/2020 5:11:45 PM ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'/cVS7q/SFGhtsxySascSnTuuVUfdfr+hSw6wGFNjFw8=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [POUYA-PC\Pouya]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
GO
USE [Steinsvik]
GO
/****** Object:  UserDefinedFunction [dbo].[MaximumFishPerTank]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[MaximumFishPerTank]()
RETURNS INT
AS
BEGIN
    RETURN 3
END
GO
/****** Object:  Table [dbo].[Fishes]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fishes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [tinyint] NOT NULL,
	[Code] [int] NOT NULL,
	[Createdate] [datetime] NOT NULL,
 CONSTRAINT [PK_Fishes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FishesInTanks]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FishesInTanks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FishId] [int] NOT NULL,
	[TankId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Createdate] [datetime] NOT NULL,
 CONSTRAINT [PK_FishesinTanks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationCodes]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationCodes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [tinyint] NOT NULL,
	[Name] [char](15) NOT NULL,
 CONSTRAINT [PK_OperationCodes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operations]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[FishId] [int] NOT NULL,
	[FromTankId] [int] NOT NULL,
	[OperationCodeId] [int] NOT NULL,
	[ToTankId] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Createdate] [datetime] NOT NULL,
 CONSTRAINT [PK_Operations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tanks]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tanks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [tinyint] NOT NULL,
	[Code] [char](3) NOT NULL,
	[Createdate] [datetime] NOT NULL,
 CONSTRAINT [PK_Tanks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [nvarchar](40) NOT NULL,
	[PasswordHash] [binary](64) NOT NULL,
	[FirstName] [nvarchar](40) NOT NULL,
	[LastName] [nvarchar](40) NOT NULL,
	[Salt] [uniqueidentifier] NOT NULL,
	[Role] [tinyint] NOT NULL,
 CONSTRAINT [PK_User_UserID] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Fishes] ON 

INSERT [dbo].[Fishes] ([Id], [Number], [Code], [Createdate]) VALUES (1, 1, 202180, CAST(N'2020-12-19T12:06:49.493' AS DateTime))
INSERT [dbo].[Fishes] ([Id], [Number], [Code], [Createdate]) VALUES (2, 2, 202181, CAST(N'2020-12-19T12:07:09.420' AS DateTime))
INSERT [dbo].[Fishes] ([Id], [Number], [Code], [Createdate]) VALUES (3, 3, 202183, CAST(N'2020-12-19T12:07:13.717' AS DateTime))
INSERT [dbo].[Fishes] ([Id], [Number], [Code], [Createdate]) VALUES (4, 4, 202184, CAST(N'2020-12-19T12:07:17.917' AS DateTime))
INSERT [dbo].[Fishes] ([Id], [Number], [Code], [Createdate]) VALUES (5, 5, 202185, CAST(N'2020-12-19T12:07:21.523' AS DateTime))
INSERT [dbo].[Fishes] ([Id], [Number], [Code], [Createdate]) VALUES (6, 6, 202186, CAST(N'2020-12-19T12:07:29.530' AS DateTime))
INSERT [dbo].[Fishes] ([Id], [Number], [Code], [Createdate]) VALUES (7, 7, 202187, CAST(N'2020-12-19T12:07:36.440' AS DateTime))
INSERT [dbo].[Fishes] ([Id], [Number], [Code], [Createdate]) VALUES (8, 8, 202188, CAST(N'2020-12-19T12:07:39.973' AS DateTime))
INSERT [dbo].[Fishes] ([Id], [Number], [Code], [Createdate]) VALUES (9, 9, 202189, CAST(N'2020-12-19T12:07:43.193' AS DateTime))
INSERT [dbo].[Fishes] ([Id], [Number], [Code], [Createdate]) VALUES (10, 10, 202190, CAST(N'2020-12-19T12:07:47.830' AS DateTime))
SET IDENTITY_INSERT [dbo].[Fishes] OFF
SET IDENTITY_INSERT [dbo].[FishesInTanks] ON 

INSERT [dbo].[FishesInTanks] ([Id], [FishId], [TankId], [UserId], [Createdate]) VALUES (1, 1, 4, 1, CAST(N'2020-12-19T13:09:20.430' AS DateTime))
INSERT [dbo].[FishesInTanks] ([Id], [FishId], [TankId], [UserId], [Createdate]) VALUES (2, 2, 1, 1, CAST(N'2020-12-19T13:27:54.410' AS DateTime))
INSERT [dbo].[FishesInTanks] ([Id], [FishId], [TankId], [UserId], [Createdate]) VALUES (3, 3, 6, 1, CAST(N'2020-12-20T16:03:45.317' AS DateTime))
INSERT [dbo].[FishesInTanks] ([Id], [FishId], [TankId], [UserId], [Createdate]) VALUES (4, 4, 2, 1, CAST(N'2020-12-20T14:35:01.943' AS DateTime))
INSERT [dbo].[FishesInTanks] ([Id], [FishId], [TankId], [UserId], [Createdate]) VALUES (5, 5, 6, 1, CAST(N'2020-12-20T14:35:09.707' AS DateTime))
INSERT [dbo].[FishesInTanks] ([Id], [FishId], [TankId], [UserId], [Createdate]) VALUES (6, 6, 9, 2, CAST(N'2020-12-20T16:34:59.850' AS DateTime))
INSERT [dbo].[FishesInTanks] ([Id], [FishId], [TankId], [UserId], [Createdate]) VALUES (7, 7, 8, 1, CAST(N'2020-12-20T14:35:26.800' AS DateTime))
INSERT [dbo].[FishesInTanks] ([Id], [FishId], [TankId], [UserId], [Createdate]) VALUES (8, 8, 6, 1, CAST(N'2020-12-20T14:36:37.553' AS DateTime))
INSERT [dbo].[FishesInTanks] ([Id], [FishId], [TankId], [UserId], [Createdate]) VALUES (9, 9, 10, 1, CAST(N'2020-12-20T14:48:01.363' AS DateTime))
INSERT [dbo].[FishesInTanks] ([Id], [FishId], [TankId], [UserId], [Createdate]) VALUES (10, 10, 9, 1, CAST(N'2020-12-20T15:59:53.723' AS DateTime))
SET IDENTITY_INSERT [dbo].[FishesInTanks] OFF
SET IDENTITY_INSERT [dbo].[OperationCodes] ON 

INSERT [dbo].[OperationCodes] ([Id], [Code], [Name]) VALUES (1, 101, N'Lice count     ')
INSERT [dbo].[OperationCodes] ([Id], [Code], [Name]) VALUES (2, 102, N'Vaccination    ')
INSERT [dbo].[OperationCodes] ([Id], [Code], [Name]) VALUES (3, 103, N'Weighting      ')
INSERT [dbo].[OperationCodes] ([Id], [Code], [Name]) VALUES (4, 104, N'Cleaning       ')
SET IDENTITY_INSERT [dbo].[OperationCodes] OFF
SET IDENTITY_INSERT [dbo].[Operations] ON 

INSERT [dbo].[Operations] ([Id], [UserId], [FishId], [FromTankId], [OperationCodeId], [ToTankId], [Description], [Createdate]) VALUES (1, 1, 2, 1, 2, 4, N'Test', CAST(N'2020-12-20T13:05:51.390' AS DateTime))
INSERT [dbo].[Operations] ([Id], [UserId], [FishId], [FromTankId], [OperationCodeId], [ToTankId], [Description], [Createdate]) VALUES (2, 1, 5, 2, 2, 6, N'', CAST(N'2020-12-20T14:55:33.690' AS DateTime))
INSERT [dbo].[Operations] ([Id], [UserId], [FishId], [FromTankId], [OperationCodeId], [ToTankId], [Description], [Createdate]) VALUES (3, 1, 8, 9, 3, 6, N'teet', CAST(N'2020-12-20T16:00:15.703' AS DateTime))
INSERT [dbo].[Operations] ([Id], [UserId], [FishId], [FromTankId], [OperationCodeId], [ToTankId], [Description], [Createdate]) VALUES (4, 1, 3, 1, 4, 6, N'ty', CAST(N'2020-12-20T16:03:45.300' AS DateTime))
INSERT [dbo].[Operations] ([Id], [UserId], [FishId], [FromTankId], [OperationCodeId], [ToTankId], [Description], [Createdate]) VALUES (5, 2, 6, 3, 2, 9, N't', CAST(N'2020-12-20T16:34:59.833' AS DateTime))
SET IDENTITY_INSERT [dbo].[Operations] OFF
SET IDENTITY_INSERT [dbo].[Tanks] ON 

INSERT [dbo].[Tanks] ([Id], [Number], [Code], [Createdate]) VALUES (1, 1, N'T1 ', CAST(N'2020-12-19T12:09:03.793' AS DateTime))
INSERT [dbo].[Tanks] ([Id], [Number], [Code], [Createdate]) VALUES (2, 2, N'T2 ', CAST(N'2020-12-19T12:09:06.830' AS DateTime))
INSERT [dbo].[Tanks] ([Id], [Number], [Code], [Createdate]) VALUES (3, 3, N'T3 ', CAST(N'2020-12-19T12:09:09.297' AS DateTime))
INSERT [dbo].[Tanks] ([Id], [Number], [Code], [Createdate]) VALUES (4, 4, N'T4 ', CAST(N'2020-12-19T12:09:12.110' AS DateTime))
INSERT [dbo].[Tanks] ([Id], [Number], [Code], [Createdate]) VALUES (5, 5, N'T5 ', CAST(N'2020-12-19T12:09:15.707' AS DateTime))
INSERT [dbo].[Tanks] ([Id], [Number], [Code], [Createdate]) VALUES (6, 6, N'T6 ', CAST(N'2020-12-19T12:09:19.333' AS DateTime))
INSERT [dbo].[Tanks] ([Id], [Number], [Code], [Createdate]) VALUES (7, 7, N'T7 ', CAST(N'2020-12-19T12:09:23.417' AS DateTime))
INSERT [dbo].[Tanks] ([Id], [Number], [Code], [Createdate]) VALUES (8, 8, N'T8 ', CAST(N'2020-12-19T12:09:31.233' AS DateTime))
INSERT [dbo].[Tanks] ([Id], [Number], [Code], [Createdate]) VALUES (9, 9, N'T9 ', CAST(N'2020-12-19T12:09:34.400' AS DateTime))
INSERT [dbo].[Tanks] ([Id], [Number], [Code], [Createdate]) VALUES (10, 10, N'T10', CAST(N'2020-12-19T12:11:01.713' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tanks] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [LoginName], [PasswordHash], [FirstName], [LastName], [Salt], [Role]) VALUES (1, N'O1', 0x3DB4155844BC26B53E45994208C371E58A01640091508C89E72DE6D8E3D89D5CEC7378E04676AF7097EADF5F98F7CD3010C744AE7DDB6268CC8AA64C681405A3, N'Operator', N'#1', N'0c60bd52-794d-48aa-853e-cd61006b88fc', 0)
INSERT [dbo].[Users] ([UserID], [LoginName], [PasswordHash], [FirstName], [LastName], [Salt], [Role]) VALUES (2, N'O2', 0xDDF8B28B7495D7236E1DAE071760D7CF3D839DD25A19A734130EF943B7B9E4CA409FC63EF4EED9D4B0BC5700114EC6AC721A72C90A0CD93E0730F505886F1ED6, N'Operator', N'#2', N'4dfc3a0d-e66c-42be-adaa-2650629c42f4', 0)
INSERT [dbo].[Users] ([UserID], [LoginName], [PasswordHash], [FirstName], [LastName], [Salt], [Role]) VALUES (3, N'Admin', 0xC519E4674B313E9CB70AC308A318CAB2E56438F8E30C9C59A596E90E0C5E02C02C078E35B45EDD1FEFCC1AFFC0E91C80C07B1C3FF9C2CC2EB4C6C003664954D3, N'Pouya', N'Vatanpour', N'5046a7e9-4eb8-490f-bbd1-0b61d6f8a510', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Fishes] ADD  CONSTRAINT [DF_Fishes_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[FishesInTanks] ADD  CONSTRAINT [DF_FishesinTanks_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[Operations] ADD  CONSTRAINT [DF_Operations_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[Tanks] ADD  CONSTRAINT [DF_Tanks_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[FishesInTanks]  WITH CHECK ADD  CONSTRAINT [FK_FishesinTanks_Fishes] FOREIGN KEY([FishId])
REFERENCES [dbo].[Fishes] ([Id])
GO
ALTER TABLE [dbo].[FishesInTanks] CHECK CONSTRAINT [FK_FishesinTanks_Fishes]
GO
ALTER TABLE [dbo].[FishesInTanks]  WITH CHECK ADD  CONSTRAINT [FK_FishesinTanks_Tanks] FOREIGN KEY([TankId])
REFERENCES [dbo].[Tanks] ([Id])
GO
ALTER TABLE [dbo].[FishesInTanks] CHECK CONSTRAINT [FK_FishesinTanks_Tanks]
GO
ALTER TABLE [dbo].[FishesInTanks]  WITH CHECK ADD  CONSTRAINT [FK_FishesinTanks_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[FishesInTanks] CHECK CONSTRAINT [FK_FishesinTanks_Users]
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD  CONSTRAINT [FK_Operations_Fishes] FOREIGN KEY([FishId])
REFERENCES [dbo].[Fishes] ([Id])
GO
ALTER TABLE [dbo].[Operations] CHECK CONSTRAINT [FK_Operations_Fishes]
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD  CONSTRAINT [FK_Operations_OperationCodes] FOREIGN KEY([OperationCodeId])
REFERENCES [dbo].[OperationCodes] ([Id])
GO
ALTER TABLE [dbo].[Operations] CHECK CONSTRAINT [FK_Operations_OperationCodes]
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD  CONSTRAINT [FK_Operations_TanksFrom] FOREIGN KEY([FromTankId])
REFERENCES [dbo].[Tanks] ([Id])
GO
ALTER TABLE [dbo].[Operations] CHECK CONSTRAINT [FK_Operations_TanksFrom]
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD  CONSTRAINT [FK_Operations_TanksTo] FOREIGN KEY([ToTankId])
REFERENCES [dbo].[Tanks] ([Id])
GO
ALTER TABLE [dbo].[Operations] CHECK CONSTRAINT [FK_Operations_TanksTo]
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD  CONSTRAINT [FK_Operations_Users] FOREIGN KEY([FishId])
REFERENCES [dbo].[Fishes] ([Id])
GO
ALTER TABLE [dbo].[Operations] CHECK CONSTRAINT [FK_Operations_Users]
GO
/****** Object:  StoredProcedure [dbo].[AddFirstAssign]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddFirstAssign] 
		   (@FishId int
           ,@TankId int
           ,@UserId int
		   ,@responseMessage INT OUTPUT)
AS
BEGIN
	
	SET NOCOUNT ON;

	BEGIN TRY

       INSERT INTO [dbo].[FishesInTanks]
           ([FishId]
           ,[TankId]
           ,[UserId])
		VALUES
           (@FishId 
           ,@TankId 
           ,@UserId)

        SET @responseMessage = 1

    END TRY
    BEGIN CATCH
        SET @responseMessage = 0
    END CATCH

	

END
GO
/****** Object:  StoredProcedure [dbo].[AddOperation]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddOperation] 
		   (@UserId int
           ,@FishId int
           ,@FromTankId int
           ,@OperationCodeId int
           ,@ToTankId int
           ,@Description nvarchar(50)
		   ,@responseMessage INT OUTPUT)
AS
BEGIN
	
	SET NOCOUNT ON;

	BEGIN TRY

       INSERT INTO [dbo].[Operations]
           ([UserId]
           ,[FishId]
           ,[FromTankId]
           ,[OperationCodeId]
           ,[ToTankId]
           ,[Description])
		VALUES
           (@UserId 
           ,@FishId 
           ,@FromTankId 
           ,@OperationCodeId 
           ,@ToTankId 
           ,@Description)

        SET @responseMessage = 1

    END TRY
    BEGIN CATCH
        SET @responseMessage = 0
    END CATCH

	

END
GO
/****** Object:  StoredProcedure [dbo].[AddUser]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddUser]
    @pLogin				NVARCHAR(50), 
    @pPassword			NVARCHAR(50),
    @pFirstName			NVARCHAR(40) = NULL, 
    @pLastName			NVARCHAR(40) = NULL,
	@pRole				TINYINT,
    @responseMessage	NVARCHAR(250) OUTPUT
AS
BEGIN
    SET NOCOUNT ON

    DECLARE @salt UNIQUEIDENTIFIER=NEWID()
    BEGIN TRY

        INSERT INTO dbo.[Users] (LoginName, PasswordHash, Salt, FirstName, LastName,Role)
        VALUES(@pLogin, HASHBYTES('SHA2_512', @pPassword + CAST (@salt AS NVARCHAR(36))), @salt, @pFirstName, @pLastName, @pRole)

        SET @responseMessage='Success'

    END TRY
    BEGIN CATCH
        SET @responseMessage= ERROR_MESSAGE() 
    END CATCH

END
	
GO
/****** Object:  StoredProcedure [dbo].[GetAcceptableTankByCurrentFishStatus]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAcceptableTankByCurrentFishStatus] (@FishId INT)
AS
BEGIN

	SET NOCOUNT ON;


	--After an operation, a fish must be placed inside a different tank.
	DECLARE @unallowableId AS INT;
    SET @unallowableId = (SELECT TOP 1 FT.TankId FROM FishesInTanks FT WHERE FT.FishId = @FishId)
	IF @unallowableId IS NULL SET @unallowableId = -1

	--Maximum 3 fish per tanks are allowed according to government restrictions.
	DECLARE @unallowableList TABLE (Id INT)
	INSERT INTO @unallowableList
	SELECT FT.TankId FROM FishesInTanks FT 
			GROUP BY FT.TankId
			HAVING COUNT(FT.TankId) >= dbo.MaximumFishPerTank()
	IF (SELECT TOP 1 1 FROM @unallowableList) IS NULL INSERT INTO @unallowableList VALUES (-1)
	
	SELECT T.Id TankId, T.Code TankCode FROM Tanks T 
		WHERE T.Id <> @unallowableId AND T.Id NOT IN (SELECT Id FROM @unallowableList) 
		ORDER BY T.Number


END
GO
/****** Object:  StoredProcedure [dbo].[GetCurrentTankByFish]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCurrentTankByFish] (@FishId INT)
AS
BEGIN

	SET NOCOUNT ON;

    SELECT TOP 1 T.Id , T.Code , T.Number FROM FishesInTanks FT 
		
		INNER JOIN Tanks T ON T.Id = FT.TankId 
		
		WHERE FT.FishId = @FishId
END
GO
/****** Object:  StoredProcedure [dbo].[GetFishes]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetFishes]
AS
BEGIN

	SET NOCOUNT ON;

	SELECT F.Id FishId, F.Number FishNumber FROM Fishes F ORDER BY F.Number

END
GO
/****** Object:  StoredProcedure [dbo].[GetFishesInTanks]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFishesInTanks]
AS
BEGIN

	SET NOCOUNT ON;

	SELECT 
		
		F.Number [Fish],
		F.Code [Fish Code],
		T.Code [Tank Code],
		U.LoginName [By Operator],
		FT.Createdate [DateTime]

	FROM FishesInTanks FT 
		
		INNER JOIN Fishes	F ON FT.FishId = F.Id
		INNER JOIN Tanks	T ON FT.TankId = T.Id
		INNER JOIN Users	U ON FT.UserId = U.UserID

		ORDER BY FT.Createdate DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetOperationCodes]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetOperationCodes]
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT O.Id, O.[Name] FROM OperationCodes O ORDER BY O.Code
END
GO
/****** Object:  StoredProcedure [dbo].[GetReport]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetReport] (@ReportDate DATE)
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT 
		
		U.LoginName		[By Operator],
		F.Code			[Fish Code],
		T_FROM.Code		[From Tank],
		T_TO.Code		[To Tank],
		OC.[Name]		[Treatment],
		O.[Description]	[Comment],
		O.Createdate	[Datetime]
		
		
		FROM Operations O 
	
		INNER JOIN Fishes F				ON O.FishId = F.Id
		INNER JOIN Tanks T_FROM			ON O.FromTankId = T_FROM.Id
		INNER JOIN Tanks T_TO			ON O.ToTankId	= T_TO.Id
		INNER JOIN OperationCodes OC	ON O.OperationCodeId = OC.Id
		INNER JOIN Users U				ON O.UserId = U.UserID

	WHERE CAST(O.Createdate AS DATE) IN (@ReportDate)

	ORDER BY O.Createdate DESC

END
GO
/****** Object:  StoredProcedure [dbo].[GetTanks]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetTanks]
AS
BEGIN

	SET NOCOUNT ON;

	SELECT T.Id , T.Number , T.Code , T.Createdate FROM Tanks T ORDER BY T.Number

END
GO
/****** Object:  StoredProcedure [dbo].[GetUserNames]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetUserNames]
AS
BEGIN
	Select UserID, LoginName from Users ORDER BY UserID
END
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Login]

    @pLoginName NVARCHAR(254),
    @pPassword NVARCHAR(50),
    @responseMessage INT OUTPUT

AS
BEGIN

    SET NOCOUNT ON

    DECLARE @userID INT

    IF EXISTS (SELECT TOP 1 UserID FROM [dbo].[Users] WHERE LoginName=@pLoginName)

    BEGIN
       SET @userID=(SELECT UserID FROM [dbo].[Users] WHERE LoginName=@pLoginName AND PasswordHash=HASHBYTES('SHA2_512', @pPassword+CAST(Salt AS NVARCHAR(36))))

       IF(@userID IS NULL)
			SET @responseMessage	= -1			--'Incorrect password'
       ELSE 
			SET @responseMessage	= @userID	--'User successfully logged in'
	END
    ELSE
			SET @responseMessage	= -2			-- 'Invalid login'

END
GO
/****** Object:  StoredProcedure [dbo].[RestrictedTanks]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RestrictedTanks]
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT T.Code
	FROM [Steinsvik].[dbo].[FishesInTanks] FT INNER JOIN Tanks T ON T.Id = FT.TankId
	GROUP BY T.Code
	HAVING COUNT(T.Code) = dbo.MaximumFishPerTank()
  
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateFishesInTanks]    Script Date: 12/20/2020 5:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateFishesInTanks] 

	(@TankId INT, 
		@FishId INT,
			@UserId INT,
				@responseMessage INT OUTPUT)

AS
BEGIN

BEGIN TRY

		UPDATE [dbo].[FishesInTanks]
		SET 
		TankId			= @TankId,
		UserId			= @UserId,
		[Createdate]	= GetDate()

		WHERE FishId = @FishId

        SET @responseMessage = 1

    END TRY
    BEGIN CATCH
        SET @responseMessage = 0
    END CATCH
	
	

END
GO
USE [master]
GO
ALTER DATABASE [Steinsvik] SET  READ_WRITE 
GO
