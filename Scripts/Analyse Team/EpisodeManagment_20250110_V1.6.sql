/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2017                    */
/* Created on:     04/11/2024 13:25:21                          */
/*==============================================================*/



/*==============================================================*/
/* Table: END_CODE_LKP                                          */
/*==============================================================*/
create table END_CODE_LKP (
   END_CODE_ID          BIGINT               not null,
   LEGACY_END_CODE      VARCHAR(10)          null,
   END_CODE             VARCHAR(50)          null,
   END_CODE_DESCRIPTION VARCHAR(300)         null,
   constraint PK_END_CODE_LKP primary key (END_CODE_ID)
)


/*==============================================================*/
/* Table: EPISODE                                               */
/*==============================================================*/
create table EPISODE (
   EPISODE_ID           BIGINT               not null,
   SCREENING_ID         BIGINT               not null,
   NHS_NUMBER           BIGINT               not null,
   EPISODE_TYPE_ID      BIGINT               null,
   EPISODE_OPEN_DATE    DATE                 null,
   APPOINTMENT_MADE_FLAG SMALLINT             null,
   FIRST_OFFERED_APPOINTMENT_DATE DATE                 null,
   ACTUAL_SCREENING_DATE DATE                 null,
   EARLY_RECALL_DATE    DATE                 null,
   CALL_RECALL_STATUS_AUTHORISED_BY VARCHAR(200)         null,
   END_CODE_ID          BIGINT               null,
   END_CODE_LAST_UPDATED DATETIME             null,
   REASON_CLOSED_CODE_ID BIGINT               null,
   FINAL_ACTION_CODE_ID BIGINT               null,
   END_POINT            VARCHAR(200)         null,
   ORGANISATION_ID      BIGINT               null,
   BATCH_ID             VARCHAR(100)         null,
   EXCEPTION_FLAG       SMALLINT             null,
   SRC_SYS_PROCESSED_DATETIME  DATETIME             null,
   RECORD_INSERT_DATETIME DATETIME             null,
   RECORD_UPDATE_DATETIME DATETIME             null,
   constraint PK_EPISODE primary key (EPISODE_ID)
)



/*==============================================================*/
/* Table: EPISODE_TYPE_LKP                                      */
/*==============================================================*/
create table EPISODE_TYPE_LKP (
   EPISODE_TYPE_ID      BIGINT               not null,
   EPISODE_TYPE         VARCHAR(10)          not null,
   EPISODE_DESCRIPTION  VARCHAR(300)         null,
   constraint PK_EPISODE_TYPE_LKP primary key (EPISODE_TYPE_ID)
)


/*==============================================================*/
/* Table: FINAL_ACTION_CODE_LKP                                 */
/*==============================================================*/
create table FINAL_ACTION_CODE_LKP (
   FINAL_ACTION_CODE_ID BIGINT               not null,
   FINAL_ACTION_CODE    VARCHAR(50)          not null,
   FINAL_ACTION_CODE_DESCRIPTION VARCHAR(300)         null,
   constraint PK_FINAL_ACTION_CODE_LKP primary key (FINAL_ACTION_CODE_ID)
)


/*==============================================================*/
/* Table: REASON_CLOSED_CODE_LKP                                */
/*==============================================================*/
create table REASON_CLOSED_CODE_LKP (
   REASON_CLOSED_CODE_ID BIGINT               not null,
   REASON_CLOSED_CODE   VARCHAR(50)          not null,
   REASON_CLOSED_CODE_DESCRIPTION VARCHAR(300)         null,
   constraint PK_REASON_CLOSED_CODE_LKP primary key (REASON_CLOSED_CODE_ID)
)


alter table EPISODE
   add constraint FK_EPISODE_FINAL_ACTION_CODE_LKP foreign key (FINAL_ACTION_CODE_ID)
      references FINAL_ACTION_CODE_LKP (FINAL_ACTION_CODE_ID)


alter table EPISODE
   add constraint FK_EPISODE_REASON_CLOSED_CODE_LKP foreign key (REASON_CLOSED_CODE_ID)
      references REASON_CLOSED_CODE_LKP (REASON_CLOSED_CODE_ID)


alter table EPISODE
   add constraint FK_EPISODE_END_CODE_LKP foreign key (END_CODE_ID)
      references END_CODE_LKP (END_CODE_ID)


alter table EPISODE
   add constraint FK_EPISODE_EPISODE_TYPE_LKP foreign key (EPISODE_TYPE_ID)
      references EPISODE_TYPE_LKP (EPISODE_TYPE_ID)


