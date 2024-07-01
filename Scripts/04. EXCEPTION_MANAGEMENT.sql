CREATE TABLE EXCEPTION_MANAGEMENT (
   EXCEPTION_ID         BIGINT,
   FILE_NAME            VARCHAR(250)         NULL,
   NHS_NUMBER           BIGINT               NULL,
   DATE_CREATED         DATETIME             NULL,
   DATE_RESOLVED        DATETIME			      NULL,
   RULE_ID              INT                  NULL,
   RULE_DESCRIPTION     VARCHAR(250)         NULL,
   RULE_CONTENT         VARCHAR(250)         NULL,
   CATEGORY             INT                  NULL,
   SCREENING_NAME       VARCHAR(100)         NULL,
   COHORT_NAME          VARCHAR(100)         NULL,
   IS_FATAL             CHAR(1)              NULL
)
