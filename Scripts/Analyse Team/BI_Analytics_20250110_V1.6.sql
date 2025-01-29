/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2017                    */
/* Created on:     05/11/2024 04:01:02                          */
/*==============================================================*/




/*==============================================================*/
/* Table: PARTICIPANT_SCREENING_EPISODE                         */
/*==============================================================*/
create table PARTICIPANT_SCREENING_EPISODE (
   EPISODE_ID           BIGINT               not null,
   NHS_NUMBER         BIGINT               not null,
   SCREENING_NAME     VARCHAR(200)         null,
   EPISODE_TYPE         VARCHAR(50)          null,
   EPISODE_TYPE_DESCRIPTION VARCHAR(300)         null,
   EPISODE_OPEN_DATE    DATE                 null,
   APPOINTMENT_MADE_FLAG SMALLINT             null,
   FIRST_OFFERED_APPOINTMENT_DATE DATE                 null,
   ACTUAL_SCREENING_DATE DATE                 null,
   EARLY_RECALL_DATE    DATE                 null,
   CALL_RECALL_STATUS_AUTHORISED_BY VARCHAR(200)         null,
   END_CODE             VARCHAR(50)          null,
   END_CODE_DESCRIPTION VARCHAR(300)         null,
   END_CODE_LAST_UPDATED DATE                 null,
   REASON_CLOSED_CODE   VARCHAR(50)          null,
   REASON_CLOSED_CODE_DESCRIPTION VARCHAR(300)         null,
   FINAL_ACTION_CODE    VARCHAR(50)          null,
   FINAL_ACTION_CODE_DESCRIPTION VARCHAR(300)         null,
   END_POINT            VARCHAR(200)         null,
   ORGANISATION_CODE    VARCHAR(50)          null,
   ORGANISATION_NAME    VARCHAR(300)         null,
   BATCH_ID             VARCHAR(100)         null,
   EXCEPTION_FLAG       SMALLINT             null,
   SRC_SYS_PROCESSED_DATETIME DATETIME             null,
   RECORD_INSERT_DATETIME DATETIME             null,
   RECORD_UPDATE_DATETIME DATETIME             null
)


/*==============================================================*/
/* Table: PARTICIPANT_SCREENING_PROFILE                         */
/*==============================================================*/
create table PARTICIPANT_SCREENING_PROFILE (
   NHS_NUMBER           BIGINT               not null,
   SCREENING_NAME       VARCHAR(200)         null,
   PRIMARY_CARE_PROVIDER VARCHAR(50)          null,
   PREFERRED_LANGUAGE   VARCHAR(50)          null,
   REASON_FOR_REMOVAL   VARCHAR(50)          null,
   REASON_FOR_REMOVAL_DT DATE                 null,
   NEXT_TEST_DUE_DATE   DATE                 null,
   NEXT_TEST_DUE_DATE_CALC_METHOD VARCHAR(100)         null,
   PARTICIPANT_SCREENING_STATUS VARCHAR(100)         null,
   SCREENING_CEASED_REASON VARCHAR(100)         null,
   IS_HIGHER_RISK       SMALLINT             null,
   IS_HIGHER_RISK_ACTIVE SMALLINT             null,
   HIGHER_RISK_NEXT_TEST_DUE_DATE DATE                 null,
   HIGHER_RISK_REFERRAL_REASON_CODE VARCHAR(100)         null,
   HR_REASON_CODE_DESCRIPTION VARCHAR(200)         null,
   DATE_IRRADIATED      DATE                 null,
   GENE_CODE            VARCHAR(100)         null,
   GENE_CODE_DESCRIPTION VARCHAR(200)         null,
   EXCEPTION_FLAG       SMALLINT             null,
   SRC_SYS_PROCESSED_DATETIME DATETIME             null,
   RECORD_INSERT_DATETIME DATETIME             null,
   RECORD_UPDATE_DATETIME DATETIME             null
)

