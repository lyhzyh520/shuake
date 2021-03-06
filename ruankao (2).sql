USE [master]
GO
/****** Object:  Database [ruankao]    Script Date: 2017/12/6 20:51:29 ******/
CREATE DATABASE [ruankao]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ruankao', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.CHH\MSSQL\DATA\ruankao.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ruankao_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.CHH\MSSQL\DATA\ruankao_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ruankao] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ruankao].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ruankao] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ruankao] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ruankao] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ruankao] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ruankao] SET ARITHABORT OFF 
GO
ALTER DATABASE [ruankao] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ruankao] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ruankao] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ruankao] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ruankao] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ruankao] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ruankao] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ruankao] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ruankao] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ruankao] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ruankao] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ruankao] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ruankao] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ruankao] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ruankao] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ruankao] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ruankao] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ruankao] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ruankao] SET RECOVERY FULL 
GO
ALTER DATABASE [ruankao] SET  MULTI_USER 
GO
ALTER DATABASE [ruankao] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ruankao] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ruankao] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ruankao] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ruankao', N'ON'
GO
USE [ruankao]
GO
/****** Object:  Table [dbo].[AdminInfo]    Script Date: 2017/12/6 20:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminInfo](
	[AdminID] [int] IDENTITY(1001,1) NOT NULL,
	[AdminName] [nvarchar](50) NOT NULL,
	[Password] [char](20) NOT NULL,
 CONSTRAINT [PK_AdminInfo] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Collect]    Script Date: 2017/12/6 20:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collect](
	[CtID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ObID] [int] NOT NULL,
	[SubID] [int] NOT NULL,
	[CtTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Collect] PRIMARY KEY CLUSTERED 
(
	[CtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 2017/12/6 20:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[ComID] [int] IDENTITY(5001,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ThemeID] [int] NOT NULL,
	[ComContent] [nvarchar](140) NOT NULL,
	[ComTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[ComID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 2017/12/6 20:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](50) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Interest]    Script Date: 2017/12/6 20:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interest](
	[ISID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ISName] [nvarchar](50) NOT NULL,
	[ISBrief] [nvarchar](max) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Interest] PRIMARY KEY CLUSTERED 
(
	[ISID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mistakes]    Script Date: 2017/12/6 20:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mistakes](
	[MisID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ObID] [int] NOT NULL,
	[MisTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Mistakes] PRIMARY KEY CLUSTERED 
(
	[MisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NewsInfo]    Script Date: 2017/12/6 20:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsInfo](
	[NewsID] [int] IDENTITY(1,1) NOT NULL,
	[NewsTitle] [nvarchar](max) NOT NULL,
	[NewsContent] [text] NOT NULL,
	[NewsTime] [datetime] NOT NULL,
 CONSTRAINT [PK_NewsInfo] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ObQuestion]    Script Date: 2017/12/6 20:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ObQuestion](
	[ObID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[AnswerA] [nvarchar](50) NOT NULL,
	[AnswerB] [nvarchar](50) NOT NULL,
	[AnswerC] [nvarchar](50) NOT NULL,
	[AnswerD] [nvarchar](50) NOT NULL,
	[Answer] [char](4) NOT NULL,
 CONSTRAINT [PK_ObQuestion] PRIMARY KEY CLUSTERED 
(
	[ObID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReplyComments]    Script Date: 2017/12/6 20:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReplyComments](
	[ReplyComID] [int] IDENTITY(6001,1) NOT NULL,
	[ComID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[ReplyComcontent] [nvarchar](max) NOT NULL,
	[ReplyComTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ReplyComments] PRIMARY KEY CLUSTERED 
(
	[ReplyComID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubQuestion]    Script Date: 2017/12/6 20:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubQuestion](
	[CourseID] [int] NOT NULL,
	[SubID] [int] IDENTITY(3001,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Answer] [nvarchar](max) NULL,
 CONSTRAINT [PK_SubQuestion] PRIMARY KEY CLUSTERED 
(
	[SubID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Text]    Script Date: 2017/12/6 20:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Text](
	[TextID] [int] IDENTITY(4001,1) NOT NULL,
	[TextName] [nvarchar](50) NOT NULL,
	[TextUrl] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Text] PRIMARY KEY CLUSTERED 
(
	[TextID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Theme]    Script Date: 2017/12/6 20:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theme](
	[ThemeID] [int] IDENTITY(2001,1) NOT NULL,
	[ISID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[ThemeName] [nvarchar](max) NOT NULL,
	[ThemeTime] [datetime] NOT NULL,
	[ThemeContent] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Theme] PRIMARY KEY CLUSTERED 
(
	[ThemeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2017/12/6 20:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nchar](10) NOT NULL,
	[Password] [char](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Video]    Script Date: 2017/12/6 20:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[VideoID] [int] IDENTITY(1,1) NOT NULL,
	[VideoName] [nvarchar](50) NOT NULL,
	[VideoBrief] [nvarchar](max) NOT NULL,
	[CreatTime] [datetime] NOT NULL,
	[VideoUrl] [nvarchar](50) NOT NULL,
	[Images] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED 
(
	[VideoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Collect]  WITH CHECK ADD  CONSTRAINT [FK_Collect_ObQuestion] FOREIGN KEY([ObID])
REFERENCES [dbo].[ObQuestion] ([ObID])
GO
ALTER TABLE [dbo].[Collect] CHECK CONSTRAINT [FK_Collect_ObQuestion]
GO
ALTER TABLE [dbo].[Collect]  WITH CHECK ADD  CONSTRAINT [FK_Collect_SubQuestion] FOREIGN KEY([SubID])
REFERENCES [dbo].[SubQuestion] ([SubID])
GO
ALTER TABLE [dbo].[Collect] CHECK CONSTRAINT [FK_Collect_SubQuestion]
GO
ALTER TABLE [dbo].[Collect]  WITH CHECK ADD  CONSTRAINT [FK_Collect_UserInfo] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[Collect] CHECK CONSTRAINT [FK_Collect_UserInfo]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Theme] FOREIGN KEY([ThemeID])
REFERENCES [dbo].[Theme] ([ThemeID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Theme]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_UserInfo] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_UserInfo]
GO
ALTER TABLE [dbo].[Interest]  WITH CHECK ADD  CONSTRAINT [FK_Interest_UserInfo] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[Interest] CHECK CONSTRAINT [FK_Interest_UserInfo]
GO
ALTER TABLE [dbo].[Mistakes]  WITH CHECK ADD  CONSTRAINT [FK_Mistakes_ObQuestion] FOREIGN KEY([ObID])
REFERENCES [dbo].[ObQuestion] ([ObID])
GO
ALTER TABLE [dbo].[Mistakes] CHECK CONSTRAINT [FK_Mistakes_ObQuestion]
GO
ALTER TABLE [dbo].[Mistakes]  WITH CHECK ADD  CONSTRAINT [FK_Mistakes_UserInfo] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[Mistakes] CHECK CONSTRAINT [FK_Mistakes_UserInfo]
GO
ALTER TABLE [dbo].[ObQuestion]  WITH CHECK ADD  CONSTRAINT [FK_ObQuestion_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[ObQuestion] CHECK CONSTRAINT [FK_ObQuestion_Course]
GO
ALTER TABLE [dbo].[ReplyComments]  WITH CHECK ADD  CONSTRAINT [FK_ReplyComments_Comments] FOREIGN KEY([ComID])
REFERENCES [dbo].[Comments] ([ComID])
GO
ALTER TABLE [dbo].[ReplyComments] CHECK CONSTRAINT [FK_ReplyComments_Comments]
GO
ALTER TABLE [dbo].[ReplyComments]  WITH CHECK ADD  CONSTRAINT [FK_ReplyComments_UserInfo] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[ReplyComments] CHECK CONSTRAINT [FK_ReplyComments_UserInfo]
GO
ALTER TABLE [dbo].[SubQuestion]  WITH CHECK ADD  CONSTRAINT [FK_SubQuestion_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[SubQuestion] CHECK CONSTRAINT [FK_SubQuestion_Course]
GO
ALTER TABLE [dbo].[Theme]  WITH CHECK ADD  CONSTRAINT [FK_Theme_Interest] FOREIGN KEY([ISID])
REFERENCES [dbo].[Interest] ([ISID])
GO
ALTER TABLE [dbo].[Theme] CHECK CONSTRAINT [FK_Theme_Interest]
GO
ALTER TABLE [dbo].[Theme]  WITH CHECK ADD  CONSTRAINT [FK_Theme_UserInfo] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[Theme] CHECK CONSTRAINT [FK_Theme_UserInfo]
GO
USE [master]
GO
ALTER DATABASE [ruankao] SET  READ_WRITE 
GO
