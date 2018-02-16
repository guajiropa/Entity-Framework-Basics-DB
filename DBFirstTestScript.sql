/*
	Run this T-SQL script in Microsoft SQL Server Management Studio to create the database
	used in the early videos in the Treehouse Entity Framework Basics Model First video. 
*/
USE [Master];
GO
CREATE DATABASE DatabaseFirstTestDB ON ( NAME = DBFirstData, 
										FILENAME = 'D:\MSSQL Server Data\DBFirstTest.mdf',
										SIZE = 10MB,
										MAXSIZE = 500MB,
										FILEGROWTH = 5MB )
									LOG ON ( NAME = DBFirstLog,
											FILENAME = 'D:\MSSQL Server Data\DBFirstLog.ldf',
											SIZE = 5MB,
											MAXSIZE = 250MB,
											FILEGROWTH = 5MB);
GO
USE [DatabaseFirstTestDB];
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nchar](30) NULL,
	[Nickname] [nchar](30) NULL,
	[Age] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactAddress](
	[Id] [uniqueidentifier] NOT NULL,
	[ContactId] [nvarchar](50) NOT NULL,
	[AddressLine1] [nchar](20) NULL,
	[AddressLine2] [nchar](20) NULL,
	[City] [nchar](20) NULL,
	[StateProvince] [nchar](10) NULL,
	[PostalCode] [nchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactEmail](
	[Id] [uniqueidentifier] NOT NULL,
	[ContactId] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NULL
) ON [PRIMARY]
GO
