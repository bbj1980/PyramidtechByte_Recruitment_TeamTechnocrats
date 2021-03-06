USE [master]
GO
/****** Object:  Database [JobByteDB]    Script Date: 10/23/2021 4:48:42 PM ******/
CREATE DATABASE [JobByteDB]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JobByteDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JobByteDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JobByteDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JobByteDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JobByteDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JobByteDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [JobByteDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JobByteDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JobByteDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JobByteDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JobByteDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JobByteDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JobByteDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JobByteDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JobByteDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JobByteDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JobByteDB] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [JobByteDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JobByteDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [JobByteDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JobByteDB] SET  MULTI_USER 
GO
ALTER DATABASE [JobByteDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JobByteDB] SET ENCRYPTION ON
GO
ALTER DATABASE [JobByteDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [JobByteDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 7), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 10, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO)
GO
USE [JobByteDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
USE [JobByteDB]
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 10/23/2021 4:48:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate](
	[CandidateID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateName] [varchar](100) NOT NULL,
	[CandidateEmail] [varchar](100) NOT NULL,
	[CandidateContact] [varchar](50) NOT NULL,
	[CandidateResume] [varchar](500) NULL,
	[TechSkillMaster] [varchar](100) NULL,
	[TechSkill] [varchar](max) NULL,
	[SoftSkillMaster] [varchar](100) NULL,
	[SoftSkill] [varchar](max) NULL,
	[Location] [nvarchar](100) NULL,
	[PositionAppliedFor] [varchar](50) NULL,
	[TotalExpereince] [varchar](50) NULL,
	[RelevantExpereince] [varchar](50) NULL,
	[NoticePeriod] [varchar](50) NULL,
	[Qualification] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Nationality] [varchar](50) NULL,
	[Created_By] [varchar](50) NULL,
	[Updated_By] [varchar](50) NULL,
	[Insert_Timestamp] [datetime] NULL,
	[Update_Timesatmp] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobDescription]    Script Date: 10/23/2021 4:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobDescription](
	[JobID] [int] IDENTITY(1,1) NOT NULL,
	[JDName] [varchar](100) NOT NULL,
	[Description] [varchar](max) NULL,
	[Position] [varchar](100) NOT NULL,
	[TechSkill] [varchar](max) NOT NULL,
	[SoftSkill] [varchar](max) NULL,
	[Location] [varchar](50) NULL,
	[Education] [varchar](50) NULL,
	[RequiredExpereince] [varchar](50) NULL,
	[Nationality] [varchar](50) NULL,
	[Comments] [varchar](max) NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedBy] [varchar](50) NULL,
	[InsertTimestamp] [datetime] NOT NULL,
	[UpdateTimesatmp] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 10/23/2021 4:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationId] [int] NULL,
	[LocationName] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resumeskills]    Script Date: 10/23/2021 4:49:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resumeskills](
	[resumename] [varchar](100) NULL,
	[area] [varchar](100) NULL,
	[skillset] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoftSkillDetail]    Script Date: 10/23/2021 4:49:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoftSkillDetail](
	[SoftSkillId] [int] NULL,
	[SoftSkillName] [varchar](100) NULL,
	[SoftSkillMasterId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoftSkillMaster]    Script Date: 10/23/2021 4:49:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoftSkillMaster](
	[SoftSkillMasterId] [int] NULL,
	[SoftSkillMasterName] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TECHSKILLDETAIL]    Script Date: 10/23/2021 4:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TECHSKILLDETAIL](
	[TechSkillId] [int] NOT NULL,
	[TechSkillName] [nvarchar](100) NOT NULL,
	[SkillMasterId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TechSkillMaster]    Script Date: 10/23/2021 4:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TechSkillMaster](
	[SkillMasterId] [int] NULL,
	[SkillMasterName] [varchar](100) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Candidate] ADD  CONSTRAINT [DF_Candidate_Insert_Timestamp]  DEFAULT (getdate()) FOR [Insert_Timestamp]
GO
ALTER TABLE [dbo].[JobDescription] ADD  CONSTRAINT [DF_JobDescription_InsertTimestamp]  DEFAULT (getdate()) FOR [InsertTimestamp]
GO
/****** Object:  StoredProcedure [dbo].[sCandidateAddDetails]    Script Date: 10/23/2021 4:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[sCandidateAddDetails] (
						    @CandidateName VARCHAR(100),
                            @CandidateEmail VARCHAR(100),
                            @CandidateContact VARCHAR(100),
                            @CandidateResume VARCHAR(500),
                            @TechSkillMaster VARCHAR(500),
                            @TechSkill VARCHAR(max),
                            @SoftSkillMaster VARCHAR(500),
                            @SoftSkill VARCHAR(max),
                            @Location VARCHAR(500),
                            @PositionAppliedFor VARCHAR(100),
                            @TotalExpereince VARCHAR(100),
                            @RelevantExpereince VARCHAR(100),
                            @NoticePeriod VARCHAR(100),
                            @Qualification VARCHAR(100),
                            @Gender VARCHAR(100),
                            @Nationality VARCHAR(100),
                            @Created_By VARCHAR(100)
							)
AS
    SET nocount ON;

    /* begin variable declaration */
    DECLARE @ErrCode INT = 0;
    DECLARE @ErrMsg VARCHAR(500);


  /* inserts data to final table */
  BEGIN try
      BEGIN TRAN;

      INSERT INTO dbo.Candidate
             (
CandidateName,
CandidateEmail,
CandidateContact,
CandidateResume,
TechSkillMaster,
TechSkill,
SoftSkillMaster,
SoftSkill,
Location,
PositionAppliedFor,
TotalExpereince,
RelevantExpereince,
NoticePeriod,
Qualification,
Gender,
Nationality,
Created_By)
      VALUES 
(
@CandidateName,
@CandidateEmail ,
@CandidateContact ,
@CandidateResume ,
@TechSkillMaster ,               
@TechSkill ,               
@SoftSkillMaster,               
@SoftSkill ,               
@Location ,               
@PositionAppliedFor ,               
@TotalExpereince,               
@RelevantExpereince ,               
@NoticePeriod ,               
@Qualification ,               
@Gender ,
@Nationality ,      
@Created_By );
COMMIT TRAN;
      SET @ErrCode = 0;
  END try

  BEGIN catch
      IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRAN;

            SET @ErrMsg = Error_message();
            SET @ErrCode=1;
        END;
  END catch;

    SELECT @ErrMsg  AS ErrMsg,
           @ErrCode AS ErrCode; 
GO
/****** Object:  StoredProcedure [dbo].[sJDAddDetails]    Script Date: 10/23/2021 4:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sJDAddDetails] (@JDName        VARCHAR(100),
                                  @JDDescription VARCHAR(max),
                                  @Position      VARCHAR(100),
                                  @TechSkill     VARCHAR(max) = NULL,
                                  @SoftSkill     VARCHAR(max) = NULL,
                                  @Location      VARCHAR(100) = NULL,
                                  @Education     VARCHAR(100) = NULL,
                                  @Experience    VARCHAR(100) = NULL,
                                  @Nationality   VARCHAR(100) = NULL,
                                  @Comments      VARCHAR(100) = NULL,
                                  @EnteredBy     VARCHAR(100) = NULL)
AS
    SET nocount ON;

    /* begin variable declaration */
    DECLARE @ErrCode INT = 0;
    DECLARE @ErrMsg VARCHAR(500);


      INSERT INTO dbo.jobdescription
             (jdname,
              [description],
              position,
              techskill,
              softskill,
              [location],
              education,
              requiredexpereince,
              nationality,
              comments,
              createdby)
      VALUES ( @JDName,
               @JDDescription,
               @Position,
               @TechSkill,
               @SoftSkill,
               @Location,
               @Education,
               @Experience,
               @Nationality,
               @Comments,
               @EnteredBy );
GO
USE [master]
GO
ALTER DATABASE [JobByteDB] SET  READ_WRITE 
GO
