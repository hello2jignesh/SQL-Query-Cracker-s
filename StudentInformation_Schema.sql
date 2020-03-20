USE [SQLQueryCrackers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[StudentInfo].[student_topic]') AND type in (N'U'))
ALTER TABLE [StudentInfo].[student_topic] DROP CONSTRAINT IF EXISTS [FK__student_t__Topic__4222D4EF]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[StudentInfo].[student_topic]') AND type in (N'U'))
ALTER TABLE [StudentInfo].[student_topic] DROP CONSTRAINT IF EXISTS [FK__student_t__stude__412EB0B6]
GO
/****** Object:  Table [StudentInfo].[topic_topic]    Script Date: 19-03-2020 22:17:28 ******/
DROP TABLE IF EXISTS [StudentInfo].[topic_topic]
GO
/****** Object:  Table [StudentInfo].[student_topic]    Script Date: 19-03-2020 22:17:28 ******/
DROP TABLE IF EXISTS [StudentInfo].[student_topic]
GO
/****** Object:  Table [StudentInfo].[student_student]    Script Date: 19-03-2020 22:17:28 ******/
DROP TABLE IF EXISTS [StudentInfo].[student_student]
GO
/****** Object:  Table [StudentInfo].[date_date]    Script Date: 19-03-2020 22:17:28 ******/
DROP TABLE IF EXISTS [StudentInfo].[date_date]
GO
/****** Object:  Table [StudentInfo].[city_region]    Script Date: 19-03-2020 22:17:28 ******/
DROP TABLE IF EXISTS [StudentInfo].[city_region]
GO
/****** Object:  Schema [StudentInfo]    Script Date: 19-03-2020 22:17:28 ******/
DROP SCHEMA IF EXISTS [StudentInfo]
GO
/****** Object:  Schema [StudentInfo]    Script Date: 19-03-2020 22:17:28 ******/
CREATE SCHEMA [StudentInfo]
GO
/****** Object:  Table [StudentInfo].[city_region]    Script Date: 19-03-2020 22:17:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [StudentInfo].[city_region](
	[city_id] [uniqueidentifier] NOT NULL,
	[city] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[State] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [StudentInfo].[date_date]    Script Date: 19-03-2020 22:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [StudentInfo].[date_date](
	[Date] [date] NOT NULL,
	[Year] [int] NULL,
	[Quarter] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Month] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
PRIMARY KEY CLUSTERED 
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [StudentInfo].[student_student]    Script Date: 19-03-2020 22:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [StudentInfo].[student_student](
	[student_id] [uniqueidentifier] NOT NULL,
	[teacher_id] [uniqueidentifier] NULL,
	[student_name] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[grade] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[class_start_date] [date] NULL,
	[city_id] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [StudentInfo].[student_topic]    Script Date: 19-03-2020 22:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [StudentInfo].[student_topic](
	[student_id] [uniqueidentifier] NOT NULL,
	[Topic_Id] [uniqueidentifier] NULL,
	[test_cleared] [bit] NULL,
	[percentage_mark] [bigint] NULL,
	[test_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [StudentInfo].[topic_topic]    Script Date: 19-03-2020 22:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [StudentInfo].[topic_topic](
	[grade] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Topic_Id] [uniqueidentifier] NOT NULL,
	[topic_name] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
PRIMARY KEY CLUSTERED 
(
	[Topic_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [StudentInfo].[city_region] ([city_id], [city], [State]) VALUES (N'4a059b60-ab87-4c02-b299-3cf9fc6964d1', N'Mumbai', N'Maharashtra')
GO
INSERT [StudentInfo].[city_region] ([city_id], [city], [State]) VALUES (N'970b61a6-e07b-49a9-a112-5c6da0f4cb29', N'Pune', N'Maharashtra')
GO
INSERT [StudentInfo].[city_region] ([city_id], [city], [State]) VALUES (N'87584efd-32de-45be-bdd0-d250880a3b88', N'Bangalore', N'Karnataka')
GO
INSERT [StudentInfo].[date_date] ([Date], [Year], [Quarter], [Month]) VALUES (CAST(N'2019-07-03' AS Date), 2019, N'Third', N'7')
GO
INSERT [StudentInfo].[date_date] ([Date], [Year], [Quarter], [Month]) VALUES (CAST(N'2019-10-12' AS Date), 2019, N'Fourth', N'10')
GO
INSERT [StudentInfo].[date_date] ([Date], [Year], [Quarter], [Month]) VALUES (CAST(N'2019-11-08' AS Date), 2019, N'Fourth', N'11')
GO
INSERT [StudentInfo].[date_date] ([Date], [Year], [Quarter], [Month]) VALUES (CAST(N'2020-01-01' AS Date), 2020, N'First', N'1')
GO
INSERT [StudentInfo].[date_date] ([Date], [Year], [Quarter], [Month]) VALUES (CAST(N'2020-01-17' AS Date), 2020, N'First', N'1')
GO
INSERT [StudentInfo].[date_date] ([Date], [Year], [Quarter], [Month]) VALUES (CAST(N'2020-02-25' AS Date), 2020, N'First', N'2')
GO
INSERT [StudentInfo].[student_student] ([student_id], [teacher_id], [student_name], [grade], [class_start_date], [city_id]) VALUES (N'b528be1c-3b1e-45f6-a7e0-124687fa82f0', N'970b61a6-e07b-49a9-a112-5c6da0f4cb29', N'D', N'4', CAST(N'2014-01-23' AS Date), N'970b61a6-e07b-49a9-a112-5c6da0f4cb29')
GO
INSERT [StudentInfo].[student_student] ([student_id], [teacher_id], [student_name], [grade], [class_start_date], [city_id]) VALUES (N'c586cf29-ec64-4599-be98-1578e48dda18', N'0f2bd0c5-f59a-4bc9-b066-11ec1c920024', N'B', N'3', CAST(N'2017-05-25' AS Date), N'87584efd-32de-45be-bdd0-d250880a3b88')
GO
INSERT [StudentInfo].[student_student] ([student_id], [teacher_id], [student_name], [grade], [class_start_date], [city_id]) VALUES (N'30a6820e-76fd-47fe-b4ea-21f068272849', N'16255db6-74b1-4ffe-ba85-9d386130ee89', N'C', N'3', CAST(N'2012-01-01' AS Date), N'4a059b60-ab87-4c02-b299-3cf9fc6964d1')
GO
INSERT [StudentInfo].[student_student] ([student_id], [teacher_id], [student_name], [grade], [class_start_date], [city_id]) VALUES (N'4fd4db2b-e004-4fb1-a17e-a4b4aedcb7fd', N'3f232b95-509c-471e-8946-8ddf50a45268', N'A', N'2', CAST(N'2015-01-01' AS Date), N'87584efd-32de-45be-bdd0-d250880a3b88')
GO
INSERT [StudentInfo].[student_topic] ([student_id], [Topic_Id], [test_cleared], [percentage_mark], [test_date]) VALUES (N'b528be1c-3b1e-45f6-a7e0-124687fa82f0', N'7ab4cffd-1201-4f16-80c6-25f6364c16ff', 1, 82, CAST(N'2020-01-01' AS Date))
GO
INSERT [StudentInfo].[student_topic] ([student_id], [Topic_Id], [test_cleared], [percentage_mark], [test_date]) VALUES (N'c586cf29-ec64-4599-be98-1578e48dda18', N'd45c2702-dd1a-4fde-a4c2-3439f13c5043', 0, 34, CAST(N'2020-01-17' AS Date))
GO
INSERT [StudentInfo].[student_topic] ([student_id], [Topic_Id], [test_cleared], [percentage_mark], [test_date]) VALUES (N'30a6820e-76fd-47fe-b4ea-21f068272849', N'5b7d9df0-613b-4e9e-afdc-354e4d0cae39', 1, 65, CAST(N'2020-02-01' AS Date))
GO
INSERT [StudentInfo].[student_topic] ([student_id], [Topic_Id], [test_cleared], [percentage_mark], [test_date]) VALUES (N'4fd4db2b-e004-4fb1-a17e-a4b4aedcb7fd', N'40f084fb-54cb-421c-ba57-60b5728e83e6', 1, 72, CAST(N'2020-03-15' AS Date))
GO
INSERT [StudentInfo].[topic_topic] ([grade], [Topic_Id], [topic_name]) VALUES (N'3', N'7ab4cffd-1201-4f16-80c6-25f6364c16ff', N'Grade3_Topic2')
GO
INSERT [StudentInfo].[topic_topic] ([grade], [Topic_Id], [topic_name]) VALUES (N'3', N'd45c2702-dd1a-4fde-a4c2-3439f13c5043', N'Grade3_Topic3')
GO
INSERT [StudentInfo].[topic_topic] ([grade], [Topic_Id], [topic_name]) VALUES (N'3', N'5b7d9df0-613b-4e9e-afdc-354e4d0cae39', N'Grade3_Topic1')
GO
INSERT [StudentInfo].[topic_topic] ([grade], [Topic_Id], [topic_name]) VALUES (N'2', N'c5256154-c5e8-46e2-bed2-59510c6d2ca2', N'Grade2_Topic2')
GO
INSERT [StudentInfo].[topic_topic] ([grade], [Topic_Id], [topic_name]) VALUES (N'4', N'40f084fb-54cb-421c-ba57-60b5728e83e6', N'Grade4_Topic1')
GO
INSERT [StudentInfo].[topic_topic] ([grade], [Topic_Id], [topic_name]) VALUES (N'4', N'14c79cb8-fffd-4cd0-96b6-6bc158522bf7', N'Grade4_Topic2')
GO
INSERT [StudentInfo].[topic_topic] ([grade], [Topic_Id], [topic_name]) VALUES (N'2', N'9f9605cb-20a3-44b1-acc4-f4cd10054192', N'Grade2_Topic1')
GO
ALTER TABLE [StudentInfo].[student_topic]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [StudentInfo].[student_student] ([student_id])
GO
ALTER TABLE [StudentInfo].[student_topic]  WITH CHECK ADD FOREIGN KEY([Topic_Id])
REFERENCES [StudentInfo].[topic_topic] ([Topic_Id])
GO
