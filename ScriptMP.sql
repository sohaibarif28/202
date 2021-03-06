USE [ProjectB]
GO
/****** Object:  Schema [jev]    Script Date: 03/05/2019 00:53:32 ******/
CREATE SCHEMA [jev]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 03/05/2019 00:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[TotalMarks] [int] NOT NULL,
	[TotalWeightage] [int] NOT NULL,
 CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AssessmentComponent]    Script Date: 03/05/2019 00:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssessmentComponent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[RubricId] [int] NOT NULL,
	[TotalMarks] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateUpdated] [datetime] NOT NULL,
	[AssessmentId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentRubric] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClassAttendance]    Script Date: 03/05/2019 00:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassAttendance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AttendanceDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ClassAttendance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clo]    Script Date: 03/05/2019 00:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_Clo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lookup]    Script Date: 03/05/2019 00:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lookup](
	[LookupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Lookup] PRIMARY KEY CLUSTERED 
(
	[LookupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rubric]    Script Date: 03/05/2019 00:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rubric](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Details] [nvarchar](max) NOT NULL,
	[CloId] [int] NOT NULL,
 CONSTRAINT [PK_Rubric] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RubricLevel]    Script Date: 03/05/2019 00:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RubricLevel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RubricId] [int] NOT NULL,
	[Details] [nvarchar](max) NOT NULL,
	[MeasurementLevel] [int] NOT NULL,
 CONSTRAINT [PK_RubricLevel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 03/05/2019 00:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[Contact] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[RegistrationNumber] [nvarchar](20) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentAttendance]    Script Date: 03/05/2019 00:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAttendance](
	[AttendanceId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[AttendanceStatus] [int] NOT NULL,
 CONSTRAINT [PK_StudentAttendance] PRIMARY KEY CLUSTERED 
(
	[AttendanceId] ASC,
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentResult]    Script Date: 03/05/2019 00:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentResult](
	[StudentId] [int] NOT NULL,
	[AssessmentComponentId] [int] NOT NULL,
	[RubricMeasurementId] [int] NOT NULL,
	[EvaluationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_StudentResult] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC,
	[AssessmentComponentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Assessment] ON 

INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (2002, N'A1', CAST(0x0000AA2100000000 AS DateTime), 100, 100)
SET IDENTITY_INSERT [dbo].[Assessment] OFF
SET IDENTITY_INSERT [dbo].[AssessmentComponent] ON 

INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (3002, N'AC1', 10002, 100, CAST(0x0000AA3A00000000 AS DateTime), CAST(0x0000AA3A00000000 AS DateTime), 2002)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (3003, N'AC2', 10002, 100, CAST(0x0000AA3A00000000 AS DateTime), CAST(0x0000AA3A00000000 AS DateTime), 2002)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (4002, N'AC1', 10002, 20, CAST(0x0000AA4200000000 AS DateTime), CAST(0x0000AA4200000000 AS DateTime), 2002)
SET IDENTITY_INSERT [dbo].[AssessmentComponent] OFF
SET IDENTITY_INSERT [dbo].[ClassAttendance] ON 

INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (2, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (3, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (4, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (5, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (6, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (7, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (8, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (9, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (10, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (11, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (12, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (13, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (14, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (15, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (16, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (17, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (18, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (19, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (20, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (21, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (22, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (23, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (24, CAST(0x0000AA0300000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (25, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (26, CAST(0x0000AA0300000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (27, CAST(0x0000AA0300000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (28, CAST(0x0000AA1A00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (29, CAST(0x0000AA0300000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (30, CAST(0x0000AA0400000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (31, CAST(0x0000AA1C00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1030, CAST(0x0000AA1D00000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (2030, CAST(0x0000AA0300000000 AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (3030, CAST(0x0000AA4400000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[ClassAttendance] OFF
SET IDENTITY_INSERT [dbo].[Clo] ON 

INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (9006, N'CLO2', CAST(0x0000AA3200000000 AS DateTime), CAST(0x0000AA3200000000 AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (10006, N'CLO3', CAST(0x0000AA4200000000 AS DateTime), CAST(0x0000AA4200000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Clo] OFF
SET IDENTITY_INSERT [dbo].[Lookup] ON 

INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (1, N'Present', N'ATTENDANCE_STATUS')
INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (2, N'Absent', N'ATTENDANCE_STATUS')
INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (3, N'Leave', N'ATTENDANCE_STATUS')
INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (4, N'Late', N'ATTENDANCE_STATUS')
INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (5, N'Active', N'STUDENT_STATUS')
INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (6, N'InActive', N'STUDENT_STATUS')
SET IDENTITY_INSERT [dbo].[Lookup] OFF
SET IDENTITY_INSERT [dbo].[Rubric] ON 

INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (10002, N'Testing', 9006)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (11002, N'Check', 10006)
SET IDENTITY_INSERT [dbo].[Rubric] OFF
SET IDENTITY_INSERT [dbo].[RubricLevel] ON 

INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (8002, 10002, N'All Godd', 4)
SET IDENTITY_INSERT [dbo].[RubricLevel] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (2002, N'juanid', N'Khan', N'1243', N'junaid@gmail.com', N'123', 6)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (2003, N'ali', N'ahmed', N'1', N'ju@gmail.com', N'12345', 6)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (2004, N'Rafay', N'Ashraf', N'123', N'alia@yahoo.com', N'12222', 6)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (3002, N'junaid', N'ali', N'12818', N'juniad@gmail.com', N'2016CS211', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (4002, N'bilal', N'zahid', N'12', N'bilal@gmail.com', N'2016cs204', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (5002, N'a', N's', N'112', N'ass@gmail.com', N'12345678', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (6002, N'junaid', N'ali', N'03216964902', N'johhny424@gmail.com', N'2016CS212', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (7002, N'junaid', N'ali', N'123', N'johhny424@gmail.com', N'2016cs231', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (7004, N'rafay', N'ashraf', N'123123', N'rafay@gmail.com', N'2016cs220', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (8002, N'junaid', N'ali', N'12345678', N'johhny424@gmail.com', N'211', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (9002, N'junaid', N'ali', N'03216964902', N'junaid@gmail.com', N'2106CS211', 5)
SET IDENTITY_INSERT [dbo].[Student] OFF
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1, 2002, 3)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1, 2003, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1, 2004, 3)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1, 3002, 3)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (24, 2002, 3)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (24, 2003, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (24, 2004, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (24, 3002, 4)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (24, 4002, 4)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (24, 5002, 2)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (30, 2002, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (30, 2003, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (30, 2004, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (30, 3002, 2)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (30, 4002, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1030, 2002, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1030, 2003, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1030, 2004, 3)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1030, 3002, 4)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1030, 4002, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (3030, 3002, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (3030, 4002, 2)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (3030, 5002, 3)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (3030, 6002, 2)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (3030, 7002, 2)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (3030, 7004, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (3030, 8002, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (3030, 9002, 2)
INSERT [dbo].[StudentResult] ([StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (2002, 3002, 8002, CAST(0x0000AA3A00000000 AS DateTime))
ALTER TABLE [dbo].[AssessmentComponent]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentComponent_Assessment] FOREIGN KEY([AssessmentId])
REFERENCES [dbo].[Assessment] ([Id])
GO
ALTER TABLE [dbo].[AssessmentComponent] CHECK CONSTRAINT [FK_AssessmentComponent_Assessment]
GO
ALTER TABLE [dbo].[AssessmentComponent]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentComponent_Rubric] FOREIGN KEY([RubricId])
REFERENCES [dbo].[Rubric] ([Id])
GO
ALTER TABLE [dbo].[AssessmentComponent] CHECK CONSTRAINT [FK_AssessmentComponent_Rubric]
GO
ALTER TABLE [dbo].[Rubric]  WITH CHECK ADD  CONSTRAINT [FK_Rubric_Clo] FOREIGN KEY([CloId])
REFERENCES [dbo].[Clo] ([Id])
GO
ALTER TABLE [dbo].[Rubric] CHECK CONSTRAINT [FK_Rubric_Clo]
GO
ALTER TABLE [dbo].[RubricLevel]  WITH CHECK ADD  CONSTRAINT [FK_RubricLevel_Rubric] FOREIGN KEY([RubricId])
REFERENCES [dbo].[Rubric] ([Id])
GO
ALTER TABLE [dbo].[RubricLevel] CHECK CONSTRAINT [FK_RubricLevel_Rubric]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Lookup] FOREIGN KEY([Status])
REFERENCES [dbo].[Lookup] ([LookupId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Lookup]
GO
ALTER TABLE [dbo].[StudentAttendance]  WITH CHECK ADD  CONSTRAINT [FK_StudentAttendance_ClassAttendance] FOREIGN KEY([AttendanceId])
REFERENCES [dbo].[ClassAttendance] ([Id])
GO
ALTER TABLE [dbo].[StudentAttendance] CHECK CONSTRAINT [FK_StudentAttendance_ClassAttendance]
GO
ALTER TABLE [dbo].[StudentAttendance]  WITH CHECK ADD  CONSTRAINT [FK_StudentAttendance_Lookup] FOREIGN KEY([AttendanceStatus])
REFERENCES [dbo].[Lookup] ([LookupId])
GO
ALTER TABLE [dbo].[StudentAttendance] CHECK CONSTRAINT [FK_StudentAttendance_Lookup]
GO
ALTER TABLE [dbo].[StudentAttendance]  WITH CHECK ADD  CONSTRAINT [FK_StudentAttendance_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[StudentAttendance] CHECK CONSTRAINT [FK_StudentAttendance_Student]
GO
ALTER TABLE [dbo].[StudentResult]  WITH CHECK ADD  CONSTRAINT [FK_StudentResult_AssessmentComponent] FOREIGN KEY([AssessmentComponentId])
REFERENCES [dbo].[AssessmentComponent] ([Id])
GO
ALTER TABLE [dbo].[StudentResult] CHECK CONSTRAINT [FK_StudentResult_AssessmentComponent]
GO
ALTER TABLE [dbo].[StudentResult]  WITH CHECK ADD  CONSTRAINT [FK_StudentResult_RubricLevel] FOREIGN KEY([RubricMeasurementId])
REFERENCES [dbo].[RubricLevel] ([Id])
GO
ALTER TABLE [dbo].[StudentResult] CHECK CONSTRAINT [FK_StudentResult_RubricLevel]
GO
ALTER TABLE [dbo].[StudentResult]  WITH CHECK ADD  CONSTRAINT [FK_StudentResult_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[StudentResult] CHECK CONSTRAINT [FK_StudentResult_Student]
GO
