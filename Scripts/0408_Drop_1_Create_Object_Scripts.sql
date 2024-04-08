/*==============================================================*/
/* Table: ADDRESS                                               */
/*==============================================================*/
create table dbo.ADDRESS (
   ADDRESS_ID           INT                  not null,
   PARTICIPANT_ID       INT                  not null,
   ADDRESS_TYPE         VARCHAR(50)          null,
   ADDRESS_LINE_1       VARCHAR(200)         null,
   ADDRESS_LINE_2       VARCHAR(200)         null,
   CITY                 VARCHAR(100)         null,
   COUNTY               VARCHAR(100)         null,
   POST_CODE            VARCHAR(50)          null,
   LSOA                 VARCHAR(100)         null,
   RECORD_START_DATE    DATE                 null,
   RECORD_END_DATE      DATE                 null,
   ACTIVE_FLAG          CHAR                 null,
   LOAD_DATE            DATE                 not null,
   constraint PK_ADDRESS primary key (ADDRESS_ID)
);

/*==============================================================*/
/* Table: COHORT                                                */
/*==============================================================*/
create table dbo.COHORT (
   COHORT_ID            INT                  not null,
   PROGRAM_ID           INT                  not null,
   COHORT_NAME          VARCHAR(100)         null,
   COHORT_CREATE_DATE   DATE                 null,
   LOAD_DATE            DATE                 null,
   constraint PK_COHORT primary key (COHORT_ID)
);

/*==============================================================*/
/* Table: CONTACT_PREFERENCE                                    */
/*==============================================================*/
create table dbo.CONTACT_PREFERENCE (
   CONTACT_PREFERENCE_ID INT                  not null,
   PARTICIPANT_ID       INT                  not null,
   CONTACT_METHOD       VARCHAR(100)         null,
   PREFERRED_LANGUAGE   VARCHAR(100)         null,
   IS_INTERPRETER_REQUIRD CHAR                 null,
   TELEPHONE_NUMBER     INT                  null,
   MOBILE_NUMBER        INT                  null,
   EMAIL_ADDRESS        VARCHAR(100)         null,
   RECORD_START_DATE    DATE                 not null,
   RECORD_END_DATE      DATE                 null,
   ACTIVE_FLAG          CHAR                 null,
   LOAD_DATE            DATE                 not null,
   constraint PK_CONTACT_PREFERENCE primary key (CONTACT_PREFERENCE_ID)
);

/*==============================================================*/
/* Table: GENDER_MASTER                                         */
/*==============================================================*/
create table GENDER_MASTER (
   GENDER_CD            varchar(2)           not null,
   GENDER_DESC          varchar(10)          null,
   constraint PK_GENDER_MASTER primary key (GENDER_CD)
);

create table dbo.PARTICIPANT (
   PARTICIPANT_ID       INT                  not null,
   COHORT_ID            INT                  not null,
   GENDER_CD            varchar(2)           null,
   NHS_NUMBER           INT                  not null 
      constraint CKC_NHS_NUMBER_PARTICIP check (Len(convert(varchar,NHS_NUMBER)) = 10),
   SUPERSEDED_BY_NHS_NUMBER INT                  null,
   PARTICIPANT_BIRTH_DATE DATE                 not null,
   PARTICIPANT_DEATH_DATE DATE                 null,
   PARTICIPANT_PREFIX   VARCHAR(20)          null,
   PARTICIPANT_FIRST_NAME VARCHAR(100)         null,
   PARTICIPANT_LAST_NAME VARCHAR(100)         null,
   OTHER_NAME           VARCHAR(100)         null,
   PARTICIPANT_MARITAL_STATUS VARCHAR(100)         null,
   PARTICIPANT_GENDER   VARCHAR(2)           null,
   PARTICIPANT_BIRTH_PLACE VARCHAR(100)         null,
   PARTICIPANT_ETHNICITY VARCHAR(100)         null,
   PARTICIPANT_RELIGION VARCHAR(100)         null,
   PARTICIPANT_DECEASED VARCHAR(5)           null,
   PARTICIPANT_REGISTERED_GP VARCHAR(200)         null,
   GP_CONNECT           VARCHAR(200)         null,
   PRIMARY_CARE_PROVIDER VARCHAR(10)          null,
   REASON_FOR_REMOVAL_CD VARCHAR(50)          null,
   REMOVAL_DATE         DATE                 null,
   RECORD_START_DATE    DATE                 null,
   RECORD_END_DATE      DATE                 null,
   ACTIVE_FLAG          CHAR                 not null,
   LOAD_DATE            DATE                 null,
   constraint PK_PARTICIPANT primary key (PARTICIPANT_ID)
);

/*==============================================================*/
/* Table: SCREENING_PROGRAMS                                    */
/*==============================================================*/
create table SCREENING_PROGRAMS (
   SCREENING_PROGRAM_ID INT                  not null,
   SCREENING_PROGRAM_NAME VARCHAR(50)          null,
   PROGRAM_DESC         VARCHAR(200)         null,
   constraint PK_SCREENING_PROGRAMS primary key (SCREENING_PROGRAM_ID)
);

alter table dbo.ADDRESS
   add constraint FK_ADDRESS_PARTICIPANT foreign key (PARTICIPANT_ID)
      references dbo.PARTICIPANT (PARTICIPANT_ID);

alter table dbo.CONTACT_PREFERENCE
   add constraint FK_CONTACT_PARTICIPANT foreign key (PARTICIPANT_ID)
      references dbo.PARTICIPANT (PARTICIPANT_ID);

alter table dbo.PARTICIPANT
   add constraint FK_PARTICIPANT_COHORT foreign key (COHORT_ID)
      references dbo.COHORT (COHORT_ID);

alter table dbo.PARTICIPANT
   add constraint FK_PARTICIP_GENDER_FK_GENDER_M foreign key (GENDER_CD)
      references GENDER_MASTER (GENDER_CD);

alter table dbo.COHORT
   add constraint FK_COHORT_PROGRAM_FK_PROGRAM foreign key (PROGRAM_ID)
      references SCREENING_PROGRAMS (PROGRAM_ID);