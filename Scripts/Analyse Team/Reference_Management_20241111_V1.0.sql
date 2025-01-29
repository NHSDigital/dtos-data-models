


/*==============================================================*/
/* Table: GP_ORGANISATION_MAPPING_LKP                           */
/*==============================================================*/
create table GP_ORGANISATION_MAPPING_LKP (
   GP_ORG_MAPPING_ID    BIGINT               not null,
   GP_PRACTICE_CODE     VARCHAR(100)         not null,
   ORGANISATION_ID      BIGINT               not null,
   RECORD_INSERT_DATETIME DATETIME             null,
   RECORD_UPDATE_DATETIME DATETIME             null,
   constraint PK_GP_ORGANISATION_MAPPING_LKP primary key (GP_ORG_MAPPING_ID)
)


/*==============================================================*/
/* Table: LANGUAGE_CODE_LKP                                     */
/*==============================================================*/
create table LANGUAGE_CODE_LKP (
   LANGUAGE_CODE_ID     BIGINT               not null,
   LANGUAGE_CODE        VARCHAR(100)         not null,
   LANGUAGE_DESCRIPTION VARCHAR(100)         null,
   RECORD_INSERT_DATETIME DATETIME             null,
   RECORD_UPDATE_DATETIME DATETIME             null,
   constraint PK_LANGUAGE_CODE_LKP primary key (LANGUAGE_CODE_ID)
)


/*==============================================================*/
/* Table: ORGANISATION_LKP                                      */
/*==============================================================*/
create table ORGANISATION_LKP (
   ORGANISATION_ID      BIGINT               not null,
   ORGANISATION_CODE    VARCHAR(100)         not null,
   ORGANISATION_NAME    VARCHAR(100)         null,
   IS_ACTIVE            SMALLINT             null,
   RECORD_INSERT_DATETIME DATETIME             null,
   RECORD_UPDATE_DATETIME DATETIME             null,
   constraint PK_ORGANISATION_LKP primary key (ORGANISATION_ID)
)



/*==============================================================*/
/* Table: ORGANISATION_OUTCODE_MAPPING_LKP                      */
/*==============================================================*/
create table ORGANISATION_OUTCODE_MAPPING_LKP (
   ORG_OUTCODE_MAPPING_ID BIGINT               not null,
   ORGANISATION_ID      BIGINT               not null,
   OUTCODE              VARCHAR(20)          not null,
   RECORD_INSERT_DATETIME DATETIME             null,
   RECORD_UPDATE_DATETIME DATETIME             null,
   constraint PK_ORGANISATION_OUTCODE_MAPPIN primary key (ORG_OUTCODE_MAPPING_ID)
)


/*==============================================================*/
/* Table: SCREENING_LKP                                         */
/*==============================================================*/
create table SCREENING_LKP (
   SCREENING_ID         BIGINT               not null,
   SCREENING_NAME       VARCHAR(100)         not null,
   SCREENING_TYPE       VARCHAR(100)         null,
   SCREENING_ACRONYM    VARCHAR(100)         null,
   SCREENING_WORKFLOW_ID VARCHAR(100)         null,
   constraint PK_SCREENING_LKP primary key (SCREENING_ID)
)



alter table GP_ORGANISATION_MAPPING_LKP
   add constraint FK_ORGANISATION_GP_MAPPING foreign key (ORGANISATION_ID)
      references ORGANISATION_LKP (ORGANISATION_ID)


alter table ORGANISATION_OUTCODE_MAPPING_LKP
   add constraint FK_ORGANISATION_OUTCODE_MAPPING foreign key (ORGANISATION_ID)
      references ORGANISATION_LKP (ORGANISATION_ID)
