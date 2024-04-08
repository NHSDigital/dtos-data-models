INSERT INTO [dbo].[SCREENING_PROGRAMS]
           ([SCREENING_PROGRAM_ID]
           ,[SCREENING_PROGRAM_NAME]
           ,[PROGRAM_DESC])
     VALUES
           (1
           ,'Breast Screening'
           ,'Breast Screening Program');

INSERT INTO [dbo].[COHORT]
           ([COHORT_ID]
           ,[PROGRAM_ID]
           ,[COHORT_NAME]
           ,[COHORT_CREATE_DATE]
           ,[LOAD_DATE])
     VALUES
           (1
           ,1
           ,'Cohort for Breast screening'
           ,'2024-03-27'
           ,'2024-03-27');

INSERT INTO [dbo].[COHORT]
           ([COHORT_ID]
           ,[PROGRAM_ID]
           ,[COHORT_NAME]
           ,[COHORT_CREATE_DATE]
           ,[LOAD_DATE])
     VALUES
           (2
           ,1
           ,'Cohort for Breast screening Research'
           ,'2024-03-27'
           ,'2024-03-27');

INSERT INTO [dbo].[GENDER_MASTER]
           ([GENDER_CD]
           ,[GENDER_DESC])
     VALUES
           ('1','Male');

INSERT INTO [dbo].[GENDER_MASTER]
           ([GENDER_CD]
           ,[GENDER_DESC])
     VALUES
           ('2','Female');