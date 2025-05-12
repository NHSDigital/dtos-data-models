/*==============================================================*/
/* Table: NEMS_SUBSCRIPTION                                     */
/*==============================================================*/
CREATE TABLE NEMS_SUBSCRIPTION (
   SUBSCRIPTION_ID      UNIQUEIDENTIFIER     NOT NULL,
   NHS_NUMBER           BIGINT               NOT NULL,
   RECORD_INSERT_DATETIME DATETIME             NULL,
   RECORD_UPDATE_DATETIME DATETIME             NULL,
   CONSTRAINT PK_NEMS_SUBSCRIPTION PRIMARY KEY (SUBSCRIPTION_ID)
);
