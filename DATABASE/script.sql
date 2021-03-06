USE [master]
GO
/****** Object:  Database [universal]    Script Date: 5/20/2020 7:31:08 PM ******/
CREATE DATABASE [universal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'techit', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\techit.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'techit_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\techit_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [universal] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [universal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [universal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [universal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [universal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [universal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [universal] SET ARITHABORT OFF 
GO
ALTER DATABASE [universal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [universal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [universal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [universal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [universal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [universal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [universal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [universal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [universal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [universal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [universal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [universal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [universal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [universal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [universal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [universal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [universal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [universal] SET RECOVERY FULL 
GO
ALTER DATABASE [universal] SET  MULTI_USER 
GO
ALTER DATABASE [universal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [universal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [universal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [universal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [universal] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'universal', N'ON'
GO
ALTER DATABASE [universal] SET QUERY_STORE = OFF
GO
USE [universal]
GO
/****** Object:  Table [dbo].[AllFinancialInformation]    Script Date: 5/20/2020 7:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllFinancialInformation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[monthName] [nvarchar](20) NULL,
	[totalRevenue] [int] NULL,
	[totalExpense] [int] NULL,
	[profit] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[depertment]    Script Date: 5/20/2020 7:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[depertment](
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_depertment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 5/20/2020 7:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[job] [nvarchar](50) NOT NULL,
	[salary] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[hiredate] [date] NULL,
	[experience] [int] NOT NULL,
	[gender] [nvarchar](20) NOT NULL,
	[depertmentid] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[status] [nvarchar](20) NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[leaveStatus]    Script Date: 5/20/2020 7:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[leaveStatus](
	[applicationNo] [int] IDENTITY(1,1) NOT NULL,
	[id] [nvarchar](50) NOT NULL,
	[causes] [nvarchar](30) NOT NULL,
	[deptStatus] [nvarchar](20) NOT NULL,
	[hrStatus] [nvarchar](20) NOT NULL,
	[employeeStatus] [nvarchar](20) NOT NULL,
	[fromDate] [date] NOT NULL,
	[toDate] [date] NOT NULL,
	[duration] [int] NOT NULL,
	[depertment] [nvarchar](10) NOT NULL,
	[finalStatus] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[applicationNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monthlyPresence]    Script Date: 5/20/2020 7:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monthlyPresence](
	[id] [nvarchar](50) NOT NULL,
	[_monthName] [nvarchar](20) NOT NULL,
	[totalPresence] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monthlySalary]    Script Date: 5/20/2020 7:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monthlySalary](
	[id] [nvarchar](50) NOT NULL,
	[_monthName] [nvarchar](20) NOT NULL,
	[monthlysalary] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 5/20/2020 7:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[id] [nvarchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[_notification] [nvarchar](100) NOT NULL,
	[status] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presence]    Script Date: 5/20/2020 7:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presence](
	[id] [nvarchar](50) NOT NULL,
	[currentMonth] [nvarchar](15) NOT NULL,
	[currentDate] [date] NOT NULL,
	[totalPresence] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[projectRevenue]    Script Date: 5/20/2020 7:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[projectRevenue](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projectname] [nvarchar](50) NULL,
	[month] [nvarchar](20) NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_projectRevenue] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salary]    Script Date: 5/20/2020 7:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salary](
	[job] [nvarchar](20) NOT NULL,
	[salary] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[synchronize]    Script Date: 5/20/2020 7:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[synchronize](
	[synchronizeMonth] [nvarchar](20) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AllFinancialInformation] ON 

INSERT [dbo].[AllFinancialInformation] ([id], [monthName], [totalRevenue], [totalExpense], [profit]) VALUES (1017, N'May', 101200, 18829, 82371)
INSERT [dbo].[AllFinancialInformation] ([id], [monthName], [totalRevenue], [totalExpense], [profit]) VALUES (1018, N'May', 101200, 37652, 63548)
INSERT [dbo].[AllFinancialInformation] ([id], [monthName], [totalRevenue], [totalExpense], [profit]) VALUES (1019, N'May', 101200, 56475, 44725)
SET IDENTITY_INSERT [dbo].[AllFinancialInformation] OFF
INSERT [dbo].[depertment] ([id], [name]) VALUES (N'hr-01', N'HR')
INSERT [dbo].[depertment] ([id], [name]) VALUES (N'it-01', N'IT')
INSERT [dbo].[employee] ([id], [name], [job], [salary], [password], [hiredate], [experience], [gender], [depertmentid], [email], [status]) VALUES (N'un-0001', N'Mr. Bruce ', N'hr', N'2005', N'12345', CAST(N'2020-05-12' AS Date), 0, N'male', N'hr-01', N'badhon1512@gmail.com', N'active')
INSERT [dbo].[employee] ([id], [name], [job], [salary], [password], [hiredate], [experience], [gender], [depertmentid], [email], [status]) VALUES (N'un-0002', N'mr. Robert', N'depertment head', N'1500', N'43734', CAST(N'2020-05-13' AS Date), 0, N'male', N'it-01', N'badhon1512@gmail.com', N'resigned')
INSERT [dbo].[employee] ([id], [name], [job], [salary], [password], [hiredate], [experience], [gender], [depertmentid], [email], [status]) VALUES (N'un-0003', N'mr.cherk', N'depertment head', N'1000', N'13084', CAST(N'2020-05-14' AS Date), 0, N'male', N'it-01', N'badhon1512@gmail.com', N'resigned')
INSERT [dbo].[employee] ([id], [name], [job], [salary], [password], [hiredate], [experience], [gender], [depertmentid], [email], [status]) VALUES (N'un-0004', N'badhon', N'manager', N'1000', N'69928', CAST(N'2020-05-14' AS Date), 0, N'male', N'hr-01', N'badhon1512@gmail.com', N'resigned')
INSERT [dbo].[employee] ([id], [name], [job], [salary], [password], [hiredate], [experience], [gender], [depertmentid], [email], [status]) VALUES (N'un-0005', N'badhon staff', N'staff', N'1000', N'12345', CAST(N'2020-05-14' AS Date), 0, N'male', N'hr-01', N'badhon1512@gmail.com', N'active')
INSERT [dbo].[employee] ([id], [name], [job], [salary], [password], [hiredate], [experience], [gender], [depertmentid], [email], [status]) VALUES (N'un-0006', N'khkbkbk', N'se', N'1000', N'98034', CAST(N'2020-05-14' AS Date), 0, N'male', N'it-01', N'badhon1512@gmail.com', N'resigned')
INSERT [dbo].[employee] ([id], [name], [job], [salary], [password], [hiredate], [experience], [gender], [depertmentid], [email], [status]) VALUES (N'un-0007', N'mr. A', N'se', N'1000', N'26622', CAST(N'2020-05-14' AS Date), 0, N'male', N'it-01', N'badhon1512@gmail.com', N'active')
INSERT [dbo].[employee] ([id], [name], [job], [salary], [password], [hiredate], [experience], [gender], [depertmentid], [email], [status]) VALUES (N'un-0008', N'Mr.B', N'se', N'1000', N'72065', CAST(N'2020-05-14' AS Date), 0, N'male', N'it-01', N'badhon1512@gmail', N'active')
INSERT [dbo].[employee] ([id], [name], [job], [salary], [password], [hiredate], [experience], [gender], [depertmentid], [email], [status]) VALUES (N'un-0009', N'Mr. D', N'se', N'10000', N'12132', CAST(N'2020-05-14' AS Date), 0, N'male', N'it-01', N'badhonkdshkhh@gmail', N'active')
INSERT [dbo].[employee] ([id], [name], [job], [salary], [password], [hiredate], [experience], [gender], [depertmentid], [email], [status]) VALUES (N'un-0010', N'Mr. C', N'se', N'1000', N'12345', CAST(N'2020-05-14' AS Date), 0, N'male', N'it-01', N'badhon1512@gmail.com', N'active')
INSERT [dbo].[employee] ([id], [name], [job], [salary], [password], [hiredate], [experience], [gender], [depertmentid], [email], [status]) VALUES (N'un-0011', N'Mr. clerk', N'depertment head', N'1000', N'12345', CAST(N'2020-05-14' AS Date), 0, N'male', N'it-01', N'badhon1512@gmail.com', N'active')
INSERT [dbo].[employee] ([id], [name], [job], [salary], [password], [hiredate], [experience], [gender], [depertmentid], [email], [status]) VALUES (N'un-0012', N'Mr. John', N'manager', N'1000', N'12345', CAST(N'2020-05-14' AS Date), 0, N'male', N'hr-01', N'badhon1512@gmail.com', N'active')
INSERT [dbo].[employee] ([id], [name], [job], [salary], [password], [hiredate], [experience], [gender], [depertmentid], [email], [status]) VALUES (N'un-0013', N'Mr. E', N'se', N'1000', N'12345', CAST(N'2020-05-18' AS Date), 0, N'male', N'it-01', N'badhon1512@gmail.com', N'active')
INSERT [dbo].[employee] ([id], [name], [job], [salary], [password], [hiredate], [experience], [gender], [depertmentid], [email], [status]) VALUES (N'un-0014', N'mr.x', N'se', N'1000', N'71140', CAST(N'2020-05-20' AS Date), 0, N'male', N'it-01', N'badhon1512@gmail.com', N'active')
SET IDENTITY_INSERT [dbo].[leaveStatus] ON 

INSERT [dbo].[leaveStatus] ([applicationNo], [id], [causes], [deptStatus], [hrStatus], [employeeStatus], [fromDate], [toDate], [duration], [depertment], [finalStatus]) VALUES (1018, N'un-0010', N'Personal issue', N'accept', N'pending', N'unseen', CAST(N'2020-05-19' AS Date), CAST(N'2020-05-21' AS Date), 3, N'it-01', N'accept')
SET IDENTITY_INSERT [dbo].[leaveStatus] OFF
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 9)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 2)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 2)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 2)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0002', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0002', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0002', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0002', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0002', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 4)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 2)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 3)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 1)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 2)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 2)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 2)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 1)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0013', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
GO
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 2)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 2)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0002', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0002', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0002', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0002', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0013', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0013', N'May', 1)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0013', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0013', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 1)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0013', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0013', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0001', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0005', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0006', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0007', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0008', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0009', N'May', 0)
GO
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0010', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0011', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0012', N'May', 0)
INSERT [dbo].[monthlyPresence] ([id], [_monthName], [totalPresence]) VALUES (N'un-0013', N'May', 0)
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0001', N'May', 1891, N'Mr. Bruce hr')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0005', N'May', 880, N'badhon staff')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0006', N'May', 880, N'khkbkbk')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0007', N'May', 880, N'kkfdbvk')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0008', N'May', 880, N'kewkb')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0009', N'May', 9880, N'lhkfnvkdnkf')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0010', N'May', 898, N'lsnfvldnblvnbldn')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0011', N'May', 880, N'badhon')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0012', N'May', 880, N'badhon manager')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0013', N'May', 880, N'mr. jse 1')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0001', N'May', 1885, N'Mr. Bruce hr')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0005', N'May', 880, N'badhon staff')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0006', N'May', 880, N'khkbkbk')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0007', N'May', 880, N'kkfdbvk')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0008', N'May', 880, N'kewkb')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0009', N'May', 9880, N'lhkfnvkdnkf')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0010', N'May', 898, N'lsnfvldnblvnbldn')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0011', N'May', 880, N'badhon')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0012', N'May', 880, N'badhon manager')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0013', N'May', 880, N'mr. jse 1')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0001', N'May', 1885, N'Mr. Bruce hr')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0005', N'May', 880, N'badhon staff')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0006', N'May', 880, N'khkbkbk')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0007', N'May', 880, N'kkfdbvk')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0008', N'May', 880, N'kewkb')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0009', N'May', 9880, N'lhkfnvkdnkf')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0010', N'May', 898, N'lsnfvldnblvnbldn')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0011', N'May', 880, N'badhon')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0012', N'May', 880, N'badhon manager')
INSERT [dbo].[monthlySalary] ([id], [_monthName], [monthlysalary], [name]) VALUES (N'un-0013', N'May', 880, N'mr. jse 1')
INSERT [dbo].[Notification] ([id], [date], [_notification], [status]) VALUES (N'un-0005', CAST(N'2020-05-05' AS Date), N'Leave application rejected', N'seen')
INSERT [dbo].[Notification] ([id], [date], [_notification], [status]) VALUES (N'un-0010', CAST(N'2020-05-16' AS Date), N'Leave application rejected', N'seen')
INSERT [dbo].[Notification] ([id], [date], [_notification], [status]) VALUES (N'un-0005', CAST(N'2020-05-16' AS Date), N'Leave application accepted', N'seen')
INSERT [dbo].[Notification] ([id], [date], [_notification], [status]) VALUES (N'un-0010', CAST(N'2020-05-18' AS Date), N'Leave application rejected', N'seen')
INSERT [dbo].[Notification] ([id], [date], [_notification], [status]) VALUES (N'un-0010', CAST(N'2020-05-18' AS Date), N'Leave application accepted', N'seen')
INSERT [dbo].[Notification] ([id], [date], [_notification], [status]) VALUES (N'un-0001', CAST(N'2020-01-01' AS Date), N'got promotion', N'unseen')
INSERT [dbo].[Notification] ([id], [date], [_notification], [status]) VALUES (N'un-0013', CAST(N'2020-05-19' AS Date), N'got promotion', N'seen')
INSERT [dbo].[Notification] ([id], [date], [_notification], [status]) VALUES (N'un-0010', CAST(N'2020-05-20' AS Date), N'Leave application accepted', N'seen')
INSERT [dbo].[Presence] ([id], [currentMonth], [currentDate], [totalPresence]) VALUES (N'un-0001', N'Current', CAST(N'2020-05-20' AS Date), 0)
INSERT [dbo].[Presence] ([id], [currentMonth], [currentDate], [totalPresence]) VALUES (N'un-0002', N'Current', CAST(N'2020-01-01' AS Date), 0)
INSERT [dbo].[Presence] ([id], [currentMonth], [currentDate], [totalPresence]) VALUES (N'un-0003', N'Current', CAST(N'2020-01-01' AS Date), 0)
INSERT [dbo].[Presence] ([id], [currentMonth], [currentDate], [totalPresence]) VALUES (N'un-0004', N'Current', CAST(N'2020-01-01' AS Date), 0)
INSERT [dbo].[Presence] ([id], [currentMonth], [currentDate], [totalPresence]) VALUES (N'un-0005', N'Current', CAST(N'2020-01-01' AS Date), 0)
INSERT [dbo].[Presence] ([id], [currentMonth], [currentDate], [totalPresence]) VALUES (N'un-0006', N'Current', CAST(N'2020-01-01' AS Date), 0)
INSERT [dbo].[Presence] ([id], [currentMonth], [currentDate], [totalPresence]) VALUES (N'un-0007', N'Current', CAST(N'2020-01-01' AS Date), 0)
INSERT [dbo].[Presence] ([id], [currentMonth], [currentDate], [totalPresence]) VALUES (N'un-0008', N'Current', CAST(N'2020-01-01' AS Date), 0)
INSERT [dbo].[Presence] ([id], [currentMonth], [currentDate], [totalPresence]) VALUES (N'un-0009', N'Current', CAST(N'2020-01-01' AS Date), 0)
INSERT [dbo].[Presence] ([id], [currentMonth], [currentDate], [totalPresence]) VALUES (N'un-0010', N'Current', CAST(N'2020-05-20' AS Date), 1)
INSERT [dbo].[Presence] ([id], [currentMonth], [currentDate], [totalPresence]) VALUES (N'un-0011', N'Current', CAST(N'2020-05-20' AS Date), 0)
INSERT [dbo].[Presence] ([id], [currentMonth], [currentDate], [totalPresence]) VALUES (N'un-0012', N'Current', CAST(N'2020-05-20' AS Date), 0)
INSERT [dbo].[Presence] ([id], [currentMonth], [currentDate], [totalPresence]) VALUES (N'un-0014', N'Current', CAST(N'2020-05-20' AS Date), 0)
SET IDENTITY_INSERT [dbo].[projectRevenue] ON 

INSERT [dbo].[projectRevenue] ([id], [projectname], [month], [price]) VALUES (1004, N'int-0002', N'May', 200)
INSERT [dbo].[projectRevenue] ([id], [projectname], [month], [price]) VALUES (1005, N'it-00001', N'May', 100000)
INSERT [dbo].[projectRevenue] ([id], [projectname], [month], [price]) VALUES (1006, N'int-01-3i', N'May', 1000)
SET IDENTITY_INSERT [dbo].[projectRevenue] OFF
INSERT [dbo].[salary] ([job], [salary]) VALUES (N'hr', 2005)
INSERT [dbo].[salary] ([job], [salary]) VALUES (N'manager', 1500)
INSERT [dbo].[salary] ([job], [salary]) VALUES (N'depertment head', 1500)
INSERT [dbo].[salary] ([job], [salary]) VALUES (N'se', 1000)
INSERT [dbo].[salary] ([job], [salary]) VALUES (N'jse', 700)
INSERT [dbo].[salary] ([job], [salary]) VALUES (N'staff', 600)
INSERT [dbo].[synchronize] ([synchronizeMonth]) VALUES (N'May')
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([depertmentid])
REFERENCES [dbo].[depertment] ([id])
GO
ALTER TABLE [dbo].[leaveStatus]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[monthlyPresence]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[monthlySalary]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[Presence]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[employee] ([id])
GO
USE [master]
GO
ALTER DATABASE [universal] SET  READ_WRITE 
GO
