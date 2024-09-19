CREATE TABLE SCREENING_LKP (
   SCREENING_ID         BIGINT               NOT NULL,
   SCREENING_NAME       VARCHAR(50)          NULL,
   SCREENING_TYPE       VARCHAR(50)          NULL,
   SCREENING_ACRONYM    VARCHAR(50)          NULL,
   CONSTRAINT PK_SCREENING_LKP PRIMARY KEY (SCREENING_ID)
);

/*==============================================================*/
/* Table: HIGHER_RISK_REFERRAL_REASON_LKP                       */
/*==============================================================*/
CREATE TABLE HIGHER_RISK_REFERRAL_REASON_LKP (
   HIGHER_RISK_REFERRAL_REASON_ID BIGINT               NOT NULL,
   HIGHER_RISK_REFERRAL_REASON_CODE VARCHAR(100)         NOT NULL,
   HIGHER_RISK_REFERRAL_REASON_CODE_DESCRIPTION VARCHAR(200)         NULL,
   CONSTRAINT PK_HIGHER_RISK_REFERRAL_REASON PRIMARY KEY (HIGHER_RISK_REFERRAL_REASON_ID)
);

/*==============================================================*/
/* Table: GENE_CODE_LKP                                         */
/*==============================================================*/
CREATE TABLE GENE_CODE_LKP (
   GENE_CODE_ID         BIGINT               NOT NULL,
   GENE_CODE            VARCHAR(100)         NOT NULL,
   GENE_CODE_DESCRIPTION VARCHAR(200)         NULL,
   CONSTRAINT PK_GENE_CODE_LKP PRIMARY KEY (GENE_CODE_ID)
);

/*==============================================================*/
/* Table: PARTICIPANT_DEMOGRAPHIC                               */
/*==============================================================*/
CREATE TABLE PARTICIPANT_DEMOGRAPHIC (
   PARTICIPANT_ID       BIGINT               NOT NULL,
   NHS_NUMBER           BIGINT               NULL,
   SUPERSEDED_BY_NHS_NUMBER BIGINT               NULL,
   PRIMARY_CARE_PROVIDER VARCHAR(10)          NULL,
   PRIMARY_CARE_PROVIDER_FROM_DT DATE                 NULL,
   CURRENT_POSTING      VARCHAR(10)          NULL,
   CURRENT_POSTING_FROM_DT DATE                 NULL,
   NAME_PREFIX          VARCHAR(35)          NULL,
   GIVEN_NAME           VARCHAR(100)         NULL,
   OTHER_GIVEN_NAME     VARCHAR(100)         NULL,
   FAMILY_NAME          VARCHAR(100)         NULL,
   PREVIOUS_FAMILY_NAME VARCHAR(100)         NULL,
   DATE_OF_BIRTH        DATE                 NULL,
   GENDER               SMALLINT             NULL,
   ADDRESS_LINE_1       VARCHAR(100)         NULL,
   ADDRESS_LINE_2       VARCHAR(100)         NULL,
   ADDRESS_LINE_3       VARCHAR(100)         NULL,
   ADDRESS_LINE_4       VARCHAR(100)         NULL,
   ADDRESS_LINE_5       VARCHAR(100)         NULL,
   POST_CODE            VARCHAR(10)          NULL,
   PAF_KEY              VARCHAR(10)          NULL,
   USUAL_ADDRESS_FROM_DT DATE                 NULL,
   DATE_OF_DEATH        DATE                 NULL,
   DEATH_STATUS         SMALLINT             NULL,
   TELEPHONE_NUMBER_HOME VARCHAR(35)          NULL,
   TELEPHONE_NUMBER_HOME_FROM_DT DATE                 NULL,
   TELEPHONE_NUMBER_MOB VARCHAR(35)          NULL,
   TELEPHONE_NUMBER_MOB_FROM_DT DATE                 NULL,
   EMAIL_ADDRESS_HOME   VARCHAR(100)         NULL,
   EMAIL_ADDRESS_HOME_FROM_DT DATE                 NULL,
   PREFERRED_LANGUAGE   VARCHAR(35)          NULL,
   INTERPRETER_REQUIRED BOOLEAN              NULL,
   INVALID_FLAG         BOOLEAN              NULL,
   RECORD_INSERT_DATE_TIME TIMESTAMP            NULL,
   RECORD_UPDATE_DATE_TIME TIMESTAMP            NULL,
   CONSTRAINT PK_PARTICIPANT_DEMOGRAPHIC PRIMARY KEY (PARTICIPANT_ID)
);


ALTER TABLE PARTICIPANT_MANAGEMENT
   ADD CONSTRAINT FK_PARTICIP_SCREENING_SCREENIN FOREIGN KEY (SCREENING_ID)
      REFERENCES SCREENING_LKP (SCREENING_ID);

