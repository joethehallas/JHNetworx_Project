USE [master]
GO
/****** Object:  Database [MembersDB]    Script Date: 07/07/2019 19:31:43 ******/
CREATE DATABASE [MembersDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MembersDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\MembersDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MembersDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\MembersDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MembersDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MembersDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MembersDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MembersDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MembersDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MembersDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MembersDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MembersDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MembersDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MembersDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MembersDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MembersDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MembersDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MembersDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MembersDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MembersDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MembersDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MembersDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MembersDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MembersDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MembersDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MembersDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MembersDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MembersDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MembersDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MembersDB] SET  MULTI_USER 
GO
ALTER DATABASE [MembersDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MembersDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MembersDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MembersDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MembersDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MembersDB] SET QUERY_STORE = OFF
GO
USE [MembersDB]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 07/07/2019 19:31:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Mobile] [nchar](11) NULL,
	[JoinDate] [datetime2](2) NOT NULL,
	[Age] [tinyint] NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Members] ON 

INSERT [dbo].[Members] ([MemberID], [FirstName], [Surname], [Email], [Mobile], [JoinDate], [Age]) VALUES (1007, N'Helena', N'James', N'helena.james@btinternet.com', N'07866399648', CAST(N'2019-07-02T15:13:35.8900000' AS DateTime2), 53)
INSERT [dbo].[Members] ([MemberID], [FirstName], [Surname], [Email], [Mobile], [JoinDate], [Age]) VALUES (1008, N'Somebody', N'Else', N'someone@else.com', N'07654223178', CAST(N'2019-07-02T20:28:06.7300000' AS DateTime2), 35)
INSERT [dbo].[Members] ([MemberID], [FirstName], [Surname], [Email], [Mobile], [JoinDate], [Age]) VALUES (1009, N'Bob', N'Smith', N'bob@bob.com', N'07866399648', CAST(N'2019-07-04T10:42:49.4500000' AS DateTime2), 91)
INSERT [dbo].[Members] ([MemberID], [FirstName], [Surname], [Email], [Mobile], [JoinDate], [Age]) VALUES (2002, N'Barbara             ', N'McFadden                      ', N'bamcfad@aol.com                                   ', N'07678243112', CAST(N'2019-07-07T12:16:19.5400000' AS DateTime2), 41)
INSERT [dbo].[Members] ([MemberID], [FirstName], [Surname], [Email], [Mobile], [JoinDate], [Age]) VALUES (2003, N'New                 ', N'Member                        ', N'new.member@members.co.uk                          ', N'07123456789', CAST(N'2019-07-07T12:28:04.4000000' AS DateTime2), 33)
SET IDENTITY_INSERT [dbo].[Members] OFF
USE [master]
GO
ALTER DATABASE [MembersDB] SET  READ_WRITE 
GO
