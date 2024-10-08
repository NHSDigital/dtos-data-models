CREATE TABLE BS_SELECT_GP_PRACTICE_LKP
    (
      GP_PRACTICE_CODE  		VARCHAR(8) ,
      BSO				VARCHAR(4),
      COUNTRY_CATEGORY  		VARCHAR(15) ,
      AUDIT_ID                      	NUMERIC(38),
      AUDIT_CREATED_TIMESTAMP       	DATETIME,
      AUDIT_LAST_MODIFIED_TIMESTAMP 	DATETIME,
      AUDIT_TEXT                    	VARCHAR(50)  
    );

CREATE TABLE BS_SELECT_OUTCODE_MAPPING_LKP
    (
      OUTCODE  				VARCHAR(4) ,
      BSO				VARCHAR(4),
      AUDIT_ID                      	NUMERIC(38),
      AUDIT_CREATED_TIMESTAMP       	DATETIME,
      AUDIT_LAST_MODIFIED_TIMESTAMP 	DATETIME,
      AUDIT_TEXT                    	VARCHAR(50)  
    );

   CREATE TABLE EXCLUDED_SMU_LKP
    (
      GP_PRACTICE_CODE  		VARCHAR(8)
    );

CREATE TABLE LANGUAGE_CODE_LKP
    (
      LANGUAGE_CODE  		VARCHAR(2),
      LANGUAGE_DESCRIPTION VARCHAR(20)
    );

    CREATE TABLE CURRENT_POSTING_LKP
    (
      POSTING VARCHAR(4),
      IN_USE  VARCHAR(1)
      INCLUDED_IN_COHORT VARCHAR(1)
      POSTING_CATEGORY VARCHAR(10)
    );
