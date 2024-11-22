/*==============================================================*/
/* Table: EXCEPTION_MANAGEMENT                                  */
/*==============================================================*/
CREATE TABLE EXCEPTION_MANAGEMENT (
   EXCEPTION_ID         INT                  NOT NULL,
   FILE_NAME            VARCHAR(250)         NULL,
   NHS_NUMBER           VARCHAR(50)          NULL,
   DATE_CREATED         DATETIME             NULL,
   DATE_RESOLVED        DATETIME             NULL,
   RULE_ID              INT                  NULL,
   RULE_DESCRIPTION     NVARCHAR(MAX)        NULL,
   ERROR_RECORD         NVARCHAR(MAX)        NULL,
   CATEGORY             INT                  NULL,
   SCREENING_NAME       VARCHAR(100)         NULL,
   EXCEPTION_DATE       DATE                 NULL,
   COHORT_NAME          VARCHAR(100)         NULL,
   IS_FATAL             SMALLINT             NULL,
   CONSTRAINT PK_EXCEPTION_MANAGEMENT PRIMARY KEY (EXCEPTION_ID)
);