USE [master]
GO
/****** Object:  Database [QuanLyGiaDung]    Script Date: 6/18/2021 10:54:15 PM ******/
CREATE DATABASE [QuanLyGiaDung]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyGiaDung', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\QuanLyGiaDung.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyGiaDung_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\QuanLyGiaDung_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyGiaDung] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyGiaDung].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyGiaDung] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyGiaDung] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyGiaDung] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyGiaDung] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyGiaDung] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyGiaDung] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyGiaDung] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyGiaDung] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyGiaDung] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyGiaDung] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyGiaDung] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QuanLyGiaDung]
GO
/****** Object:  Table [dbo].[DMSP]    Script Date: 6/18/2021 10:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMSP](
	[MaDMSP] [int] NOT NULL,
	[TenDMSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_DMSP] PRIMARY KEY CLUSTERED 
(
	[MaDMSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DMTinTuc]    Script Date: 6/18/2021 10:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMTinTuc](
	[MaDMTT] [int] NOT NULL,
	[TenDMTT] [nvarchar](50) NULL,
 CONSTRAINT [PK_DMTinTuc] PRIMARY KEY CLUSTERED 
(
	[MaDMTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/18/2021 10:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/18/2021 10:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] NOT NULL,
	[AnhNV] [nvarchar](200) NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[TaiKhoan] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/18/2021 10:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] NOT NULL,
	[MaDMSP] [int] NULL,
	[AnhSP] [nvarchar](200) NULL,
	[TenSP] [nvarchar](50) NULL,
	[Mota] [nvarchar](200) NULL,
	[Gia] [int] NULL,
	[Sale] [int] NULL,
	[Hot] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/18/2021 10:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[idUser] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 6/18/2021 10:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTinTuc] [int] NOT NULL,
	[MaDMTT] [int] NULL,
	[AnhTinTuc] [nvarchar](200) NULL,
	[TenTinTuc] [nvarchar](200) NULL,
	[Mota] [nvarchar](500) NULL,
	[Chitiet] [nvarchar](500) NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DMSP] FOREIGN KEY([MaDMSP])
REFERENCES [dbo].[DMSP] ([MaDMSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DMSP]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_DMTinTuc] FOREIGN KEY([MaDMTT])
REFERENCES [dbo].[DMTinTuc] ([MaDMTT])
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_DMTinTuc]
GO
USE [master]
GO
ALTER DATABASE [QuanLyGiaDung] SET  READ_WRITE 
GO
