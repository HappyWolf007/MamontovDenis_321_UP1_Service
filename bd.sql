USE [master]
GO
/****** Object:  Database [EquipmentRepair]    Script Date: 19.12.2024 19:35:52 ******/
CREATE DATABASE [EquipmentRepair]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EquipmentRepair', FILENAME = N'E:\Games\MSSQL15.MSSQLSERVER\MSSQL\DATA\EquipmentRepair.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EquipmentRepair_log', FILENAME = N'E:\Games\MSSQL15.MSSQLSERVER\MSSQL\DATA\EquipmentRepair_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EquipmentRepair] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EquipmentRepair].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EquipmentRepair] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EquipmentRepair] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EquipmentRepair] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EquipmentRepair] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EquipmentRepair] SET ARITHABORT OFF 
GO
ALTER DATABASE [EquipmentRepair] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EquipmentRepair] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EquipmentRepair] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EquipmentRepair] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EquipmentRepair] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EquipmentRepair] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EquipmentRepair] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EquipmentRepair] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EquipmentRepair] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EquipmentRepair] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EquipmentRepair] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EquipmentRepair] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EquipmentRepair] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EquipmentRepair] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EquipmentRepair] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EquipmentRepair] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EquipmentRepair] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EquipmentRepair] SET RECOVERY FULL 
GO
ALTER DATABASE [EquipmentRepair] SET  MULTI_USER 
GO
ALTER DATABASE [EquipmentRepair] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EquipmentRepair] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EquipmentRepair] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EquipmentRepair] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EquipmentRepair] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EquipmentRepair] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'EquipmentRepair', N'ON'
GO
ALTER DATABASE [EquipmentRepair] SET QUERY_STORE = ON
GO
ALTER DATABASE [EquipmentRepair] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [EquipmentRepair]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 19.12.2024 19:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[client_id] [int] IDENTITY(1,1) NOT NULL,
	[client_name] [nvarchar](100) NULL,
	[client_surname] [nvarchar](100) NULL,
	[client_secondName] [nvarchar](100) NULL,
	[contact_info] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 19.12.2024 19:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[equipment_id] [int] IDENTITY(1,1) NOT NULL,
	[serial_number] [nvarchar](50) NULL,
	[type] [nvarchar](100) NULL,
	[description] [nvarchar](255) NULL,
 CONSTRAINT [PK__Equipmen__197068AF003BDF99] PRIMARY KEY CLUSTERED 
(
	[equipment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FaultType]    Script Date: 19.12.2024 19:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaultType](
	[fault_type_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[fault_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priority]    Script Date: 19.12.2024 19:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority](
	[priority_id] [int] IDENTITY(1,1) NOT NULL,
	[priority_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[priority_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 19.12.2024 19:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[request_id] [int] IDENTITY(1,1) NOT NULL,
	[date_created] [datetime] NULL,
	[date_ended] [datetime] NULL,
	[equipment_id] [int] NULL,
	[fault_type_id] [int] NULL,
	[problem_description] [nvarchar](255) NULL,
	[client_id] [int] NULL,
	[technician_id] [int] NULL,
	[status_id] [int] NULL,
	[priority_id] [int] NULL,
 CONSTRAINT [PK__Request__18D3B90FF3D72648] PRIMARY KEY CLUSTERED 
(
	[request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestLog]    Script Date: 19.12.2024 19:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestLog](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[request_id] [int] NULL,
	[date_changed] [datetime] NULL,
	[comment] [nvarchar](max) NULL,
 CONSTRAINT [PK__RequestL__9E2397E021172037] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 19.12.2024 19:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[position_id] [int] IDENTITY(1,1) NOT NULL,
	[position_name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[position_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 19.12.2024 19:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[status_id] [int] IDENTITY(1,1) NOT NULL,
	[status_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technician]    Script Date: 19.12.2024 19:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technician](
	[technician_id] [int] IDENTITY(1,1) NOT NULL,
	[technician_surname] [nvarchar](100) NULL,
	[technician_name] [nvarchar](100) NULL,
	[technician_secondName] [nvarchar](100) NULL,
	[position_id] [int] NULL,
	[contact_info] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[technician_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19.12.2024 19:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[TechnicianID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Request] ADD  CONSTRAINT [DF__Request__date_cr__45F365D3]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[RequestLog] ADD  CONSTRAINT [DF__RequestLo__date___4E88ABD4]  DEFAULT (getdate()) FOR [date_changed]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__client___48CFD27E] FOREIGN KEY([client_id])
REFERENCES [dbo].[Client] ([client_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__client___48CFD27E]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__equipme__46E78A0C] FOREIGN KEY([equipment_id])
REFERENCES [dbo].[Equipment] ([equipment_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__equipme__46E78A0C]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__fault_t__47DBAE45] FOREIGN KEY([fault_type_id])
REFERENCES [dbo].[FaultType] ([fault_type_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__fault_t__47DBAE45]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__priorit__4BAC3F29] FOREIGN KEY([priority_id])
REFERENCES [dbo].[Priority] ([priority_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__priorit__4BAC3F29]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__status___4AB81AF0] FOREIGN KEY([status_id])
REFERENCES [dbo].[Status] ([status_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__status___4AB81AF0]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__technic__49C3F6B7] FOREIGN KEY([technician_id])
REFERENCES [dbo].[Technician] ([technician_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__technic__49C3F6B7]
GO
ALTER TABLE [dbo].[RequestLog]  WITH CHECK ADD  CONSTRAINT [FK__RequestLo__reque__4F7CD00D] FOREIGN KEY([request_id])
REFERENCES [dbo].[Request] ([request_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RequestLog] CHECK CONSTRAINT [FK__RequestLo__reque__4F7CD00D]
GO
ALTER TABLE [dbo].[Technician]  WITH CHECK ADD FOREIGN KEY([position_id])
REFERENCES [dbo].[Role] ([position_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([TechnicianID])
REFERENCES [dbo].[Technician] ([technician_id])
GO
USE [master]
GO
ALTER DATABASE [EquipmentRepair] SET  READ_WRITE 
GO
