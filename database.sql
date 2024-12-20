USE [master]
GO
/****** Object:  Database [EquipmentRepair]    Script Date: 19.12.2024 19:36:26 ******/
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
/****** Object:  Table [dbo].[Client]    Script Date: 19.12.2024 19:36:27 ******/
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
/****** Object:  Table [dbo].[Equipment]    Script Date: 19.12.2024 19:36:27 ******/
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
/****** Object:  Table [dbo].[FaultType]    Script Date: 19.12.2024 19:36:27 ******/
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
/****** Object:  Table [dbo].[Priority]    Script Date: 19.12.2024 19:36:27 ******/
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
/****** Object:  Table [dbo].[Request]    Script Date: 19.12.2024 19:36:27 ******/
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
/****** Object:  Table [dbo].[RequestLog]    Script Date: 19.12.2024 19:36:27 ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 19.12.2024 19:36:27 ******/
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
/****** Object:  Table [dbo].[Status]    Script Date: 19.12.2024 19:36:27 ******/
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
/****** Object:  Table [dbo].[Technician]    Script Date: 19.12.2024 19:36:27 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 19.12.2024 19:36:27 ******/
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
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (1, N'Василий', N'Иванов', N'Петрович', N'+79123456789')
INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (2, N'Елизавета', N'Козлова', N'Петровна', N'+79876543210')
INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (3, N'Евгений', N'Крылаткин', N'Евгеньевич', N'+79012345678')
INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (4, N'Александр', N'Романенко', N'Владимирович', N'+79000000000')
INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (5, N'Никита', N'Кузнецов', N'Антонович', N'+79032100000')
INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (6, N'Николай', N'Иванов', N'Иванович', N'+79012345678')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (1, N'EQ12345', N'Станок', N'Токарный станок')
INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (2, N'EQ12346', N'Принтер', N'Цветной принтер')
INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (3, N'EQ12347', N'Сервер', N'Сервер DELL')
INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (4, N'EQ12348', N'Сканер', N'Сканер Phillips')
INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (5, N'EQ12349', N'Паяльник', N'Паяльник')
INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (6, N'EQ12350', N'Сканер', N'Сканер')
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
SET IDENTITY_INSERT [dbo].[FaultType] ON 

INSERT [dbo].[FaultType] ([fault_type_id], [description]) VALUES (1, N'Не включается')
INSERT [dbo].[FaultType] ([fault_type_id], [description]) VALUES (2, N'Выдает ошибку')
INSERT [dbo].[FaultType] ([fault_type_id], [description]) VALUES (3, N'Не печатает')
SET IDENTITY_INSERT [dbo].[FaultType] OFF
GO
SET IDENTITY_INSERT [dbo].[Priority] ON 

INSERT [dbo].[Priority] ([priority_id], [priority_name]) VALUES (1, N'Низкий')
INSERT [dbo].[Priority] ([priority_id], [priority_name]) VALUES (2, N'Средний')
INSERT [dbo].[Priority] ([priority_id], [priority_name]) VALUES (3, N'Высокий')
INSERT [dbo].[Priority] ([priority_id], [priority_name]) VALUES (4, N'Критический')
SET IDENTITY_INSERT [dbo].[Priority] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (1, CAST(N'2024-01-12T10:00:00.000' AS DateTime), CAST(N'2024-12-18T16:02:15.023' AS DateTime), 1, 1, N'Ноутбук не включается', 1, 1, 3, 3)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (2, CAST(N'2024-02-12T12:00:00.000' AS DateTime), CAST(N'2024-12-18T00:00:00.000' AS DateTime), 2, 2, N'Смартфон перегревается при использовании камеры', 2, 2, 3, 2)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (3, CAST(N'2024-03-12T15:00:00.000' AS DateTime), CAST(N'2024-12-20T00:00:00.000' AS DateTime), 3, NULL, N'Принтер не печатает', 3, 4, 2, 1)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (4, CAST(N'2024-04-12T09:00:00.000' AS DateTime), CAST(N'2024-12-01T00:00:00.000' AS DateTime), 4, 2, N'Не работает сканер', 4, 5, 3, 3)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (5, CAST(N'2024-05-12T14:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 5, 1, N'Не работает паяльник', 5, 2, 3, 2)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (6, CAST(N'2024-06-12T16:00:00.000' AS DateTime), CAST(N'2024-12-15T00:00:00.000' AS DateTime), 2, 3, N'Не печатает цветные фотографии', 2, 3, 2, 2)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (7, CAST(N'2024-07-12T11:00:00.000' AS DateTime), CAST(N'2024-12-18T00:00:00.000' AS DateTime), 3, 1, N'Нет изображения на планшете', 4, 2, 1, 2)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (8, CAST(N'2024-12-18T14:58:21.230' AS DateTime), CAST(N'2024-12-12T00:00:00.000' AS DateTime), 2, 2, N'Не работает', 4, 2, 3, 3)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (9, CAST(N'2024-12-18T00:00:00.000' AS DateTime), CAST(N'2024-12-18T00:00:00.000' AS DateTime), 2, 2, N'не работает', 3, 1, 1, 3)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (10, CAST(N'2024-12-04T00:00:00.000' AS DateTime), CAST(N'2024-12-18T16:02:21.933' AS DateTime), 2, 2, N'Не работает', 2, 1, 3, 1)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (11, CAST(N'2024-12-11T00:00:00.000' AS DateTime), CAST(N'2024-12-18T00:00:00.000' AS DateTime), 6, NULL, N'Не работает', 3, 4, 3, 3)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (12, CAST(N'2024-12-11T00:00:00.000' AS DateTime), CAST(N'2024-12-18T00:00:00.000' AS DateTime), 2, 3, N'123', 1, 1, 2, 2)
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[RequestLog] ON 

INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (1, 1, CAST(N'2024-01-12T11:00:00.000' AS DateTime), N'Диагностика выполнена, требуется замена блока питания')
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (8, 2, CAST(N'2024-02-12T13:30:00.000' AS DateTime), N'Обновление ПО решило проблему перегрева')
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (9, 3, CAST(N'2024-12-03T20:57:40.123' AS DateTime), N'Принтер настроен, заменены картриджи')
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (10, 4, CAST(N'2024-12-18T14:31:33.510' AS DateTime), N'Клиенту отправлена инструкция по настройке роутера')
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (11, 5, CAST(N'2024-12-18T14:40:32.877' AS DateTime), N'Монитор протестирован, проблема устранена')
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (12, 6, CAST(N'2024-12-18T14:40:47.740' AS DateTime), N'Планшет восстановлен после сброса настроек')
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (13, 7, CAST(N'2024-12-18T14:40:54.447' AS DateTime), N'Проблема с ПК устранена после замены оперативной памяти')
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (14, 8, CAST(N'2024-12-18T14:41:05.913' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (15, 3, CAST(N'2024-12-18T14:47:59.063' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (16, 1, CAST(N'2024-12-18T14:50:13.437' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (17, 2, CAST(N'2024-12-18T14:50:43.267' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (18, 1, CAST(N'2024-12-18T14:57:47.520' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (19, 7, CAST(N'2024-12-18T14:58:03.460' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (20, 8, CAST(N'2024-12-18T14:58:21.230' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (21, 7, CAST(N'2024-12-18T14:58:32.903' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (22, 1, CAST(N'2024-12-18T14:58:42.533' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (23, 1, CAST(N'2024-12-18T15:05:28.943' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (24, 1, CAST(N'2024-12-18T15:24:21.093' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (25, 9, CAST(N'2024-12-18T15:24:52.677' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (26, 9, CAST(N'2024-12-18T15:26:37.883' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (27, 9, CAST(N'2024-12-18T15:27:22.620' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (28, 1, CAST(N'2024-12-18T15:28:20.750' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (29, 9, CAST(N'2024-12-18T15:28:28.707' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (30, 9, CAST(N'2024-12-18T15:31:54.587' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (31, 9, CAST(N'2024-12-18T15:34:59.700' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (32, 9, CAST(N'2024-12-18T15:35:08.270' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (33, 1, CAST(N'2024-12-18T15:35:34.067' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (34, 1, CAST(N'2024-12-18T15:50:25.323' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (35, 1, CAST(N'2024-12-18T15:50:38.220' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (36, 2, CAST(N'2024-12-18T15:51:12.613' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (37, 3, CAST(N'2024-12-18T15:52:09.580' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (38, 5, CAST(N'2024-12-18T15:52:23.833' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (39, 8, CAST(N'2024-12-18T15:52:42.067' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (40, 10, CAST(N'2024-12-18T15:53:05.340' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (41, 1, CAST(N'2024-12-18T15:58:04.083' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (42, 1, CAST(N'2024-12-18T15:58:12.040' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (43, 10, CAST(N'2024-12-18T15:58:17.763' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (44, 10, CAST(N'2024-12-18T15:58:39.197' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (45, 1, CAST(N'2024-12-18T15:58:58.433' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (46, 1, CAST(N'2024-12-18T16:00:48.990' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (47, 1, CAST(N'2024-12-18T16:02:15.023' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (48, 10, CAST(N'2024-12-18T16:02:21.933' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (49, 11, CAST(N'2024-12-18T16:03:17.220' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (50, 11, CAST(N'2024-12-18T16:05:15.727' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (51, 11, CAST(N'2024-12-18T16:07:07.233' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (52, 12, CAST(N'2024-12-18T16:08:15.773' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (53, 12, CAST(N'2024-12-18T16:08:23.103' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (54, 12, CAST(N'2024-12-18T16:08:35.053' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (55, 12, CAST(N'2024-12-18T16:08:42.057' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (56, 12, CAST(N'2024-12-18T16:09:18.673' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (57, 12, CAST(N'2024-12-18T16:09:24.667' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (58, 12, CAST(N'2024-12-18T16:12:37.027' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (59, 12, CAST(N'2024-12-18T16:13:41.350' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (60, 12, CAST(N'2024-12-18T16:13:51.310' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[RequestLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([position_id], [position_name]) VALUES (1, N'Менеджер')
INSERT [dbo].[Role] ([position_id], [position_name]) VALUES (2, N'Инженер по ремонту')
INSERT [dbo].[Role] ([position_id], [position_name]) VALUES (3, N'Системный администратор')
INSERT [dbo].[Role] ([position_id], [position_name]) VALUES (4, N'Техник по обслуживанию')
INSERT [dbo].[Role] ([position_id], [position_name]) VALUES (5, N'Инженер по безопасности')
INSERT [dbo].[Role] ([position_id], [position_name]) VALUES (6, N'Программист')
INSERT [dbo].[Role] ([position_id], [position_name]) VALUES (7, N'Руководитель отдела')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([status_id], [status_name]) VALUES (1, N'В ожидании')
INSERT [dbo].[Status] ([status_id], [status_name]) VALUES (2, N'В работе')
INSERT [dbo].[Status] ([status_id], [status_name]) VALUES (3, N'Завершено')
INSERT [dbo].[Status] ([status_id], [status_name]) VALUES (4, N'Отменено')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Technician] ON 

INSERT [dbo].[Technician] ([technician_id], [technician_surname], [technician_name], [technician_secondName], [position_id], [contact_info]) VALUES (1, N'Иванов', N'Иван', N'Петрович', 1, N'smirnov@yandex.ru')
INSERT [dbo].[Technician] ([technician_id], [technician_surname], [technician_name], [technician_secondName], [position_id], [contact_info]) VALUES (2, N'Петров', N'Петр', N'Иванович', 2, N'kuznetsov@yandex.ru')
INSERT [dbo].[Technician] ([technician_id], [technician_surname], [technician_name], [technician_secondName], [position_id], [contact_info]) VALUES (3, N'Сидоров', N'Сидор', N'Павлович', 3, N'novikov@yandex.ru')
INSERT [dbo].[Technician] ([technician_id], [technician_surname], [technician_name], [technician_secondName], [position_id], [contact_info]) VALUES (4, N'Кузнецов', N'Дмитрий', N'Александрович', 1, N'nikitin@yandex.ru')
INSERT [dbo].[Technician] ([technician_id], [technician_surname], [technician_name], [technician_secondName], [position_id], [contact_info]) VALUES (5, N'Смирнов', N'Алексей', N'Сергеевич', 3, N'loshkin@yandex.ru')
SET IDENTITY_INSERT [dbo].[Technician] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([userID], [Login], [Password], [TechnicianID]) VALUES (1, N'ivanov', N'password123', 1)
INSERT [dbo].[Users] ([userID], [Login], [Password], [TechnicianID]) VALUES (2, N'petrov', N'qwerty456', 2)
INSERT [dbo].[Users] ([userID], [Login], [Password], [TechnicianID]) VALUES (3, N'sidorov', N'pass789', 3)
INSERT [dbo].[Users] ([userID], [Login], [Password], [TechnicianID]) VALUES (4, N'kuznetsov', N'admin123', 1)
INSERT [dbo].[Users] ([userID], [Login], [Password], [TechnicianID]) VALUES (5, N'smirnov', N'secure456', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
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
