USE [master]
GO
/****** Object:  Database [onlinebanking]    Script Date: 23-11-2021 11:51:07 ******/
CREATE DATABASE [onlinebanking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'onlinebanking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\onlinebanking.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'onlinebanking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\onlinebanking_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [onlinebanking] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [onlinebanking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [onlinebanking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [onlinebanking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [onlinebanking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [onlinebanking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [onlinebanking] SET ARITHABORT OFF 
GO
ALTER DATABASE [onlinebanking] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [onlinebanking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [onlinebanking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [onlinebanking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [onlinebanking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [onlinebanking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [onlinebanking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [onlinebanking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [onlinebanking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [onlinebanking] SET  ENABLE_BROKER 
GO
ALTER DATABASE [onlinebanking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [onlinebanking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [onlinebanking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [onlinebanking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [onlinebanking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [onlinebanking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [onlinebanking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [onlinebanking] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [onlinebanking] SET  MULTI_USER 
GO
ALTER DATABASE [onlinebanking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [onlinebanking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [onlinebanking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [onlinebanking] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [onlinebanking] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [onlinebanking] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [onlinebanking] SET QUERY_STORE = OFF
GO
USE [onlinebanking]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 23-11-2021 11:51:08 ******/
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
/****** Object:  Table [dbo].[Account_Details]    Script Date: 23-11-2021 11:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Details](
	[Acc_Number] [bigint] IDENTITY(1234567890123456,1) NOT NULL,
	[password] [nvarchar](max) NULL,
	[userid] [varchar](20) NOT NULL,
	[Acc_Type] [varchar](20) NOT NULL,
	[First_Name] [varchar](20) NOT NULL,
	[Last_name] [varchar](20) NOT NULL,
	[DOB] [date] NOT NULL,
	[Aadhar_Number] [bigint] NOT NULL,
	[PanCard_Number] [varchar](10) NOT NULL,
	[Nominee_Name] [varchar](20) NOT NULL,
	[Mobile_Number] [char](10) NOT NULL,
	[Email_Id] [varchar](20) NOT NULL,
	[Temp_Address] [varchar](100) NOT NULL,
	[Permt_Address] [varchar](100) NOT NULL,
	[Occupation] [varchar](20) NOT NULL,
	[Annual_income] [float] NOT NULL,
	[Balance] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_status]    Script Date: 23-11-2021 11:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_status](
	[Acc_Number] [bigint] NOT NULL,
	[Acc_Status] [bit] NULL,
	[userid] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Acc_Number] ASC,
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin_Login]    Script Date: 23-11-2021 11:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin_Login](
	[Admin_Id] [varchar](20) NOT NULL,
	[Admin_Password] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Admin_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transfer_Details]    Script Date: 23-11-2021 11:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transfer_Details](
	[userid] [varchar](20) NOT NULL,
	[Transaction_Number] [bigint] IDENTITY(100000,1) NOT NULL,
	[From_Acc_Number] [bigint] NOT NULL,
	[To_Acc_Number] [bigint] NOT NULL,
	[Deposit_Amount] [money] NOT NULL,
	[Withdraw_Amount] [money] NOT NULL,
	[Transfer_Amount] [money] NOT NULL,
	[Transaction_Date] [datetime] NOT NULL,
	[Type_Of_Transaction] [varchar](20) NOT NULL,
	[Mode_Of_Transaction] [varchar](20) NOT NULL,
	[Balance] [money] NULL,
	[current_balance] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[Transaction_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account_status]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[Account_Details] ([userid])
GO
ALTER TABLE [dbo].[Transfer_Details]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[Account_Details] ([userid])
GO
ALTER TABLE [dbo].[Account_Details]  WITH CHECK ADD  CONSTRAINT [chk_phone] CHECK  (([Mobile_Number] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Account_Details] CHECK CONSTRAINT [chk_phone]
GO
/****** Object:  StoredProcedure [dbo].[Accstatement]    Script Date: 23-11-2021 11:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Accstatement]  
@Acc_Num bigint  
as   
begin  
select userid,Transaction_Number, From_Acc_Number,To_Acc_Number, Transfer_Amount,Transaction_Date,Type_Of_Transaction
From Transfer_Details
Where From_Acc_Number=@Acc_Num or To_Acc_Number = @Acc_Num
order by Transaction_Number
end  ;
GO
USE [master]
GO
ALTER DATABASE [onlinebanking] SET  READ_WRITE 
GO
