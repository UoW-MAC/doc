--------------------------------------------------------
--  File created - Sunday-January-24-2016   
--------------------------------------------------------
DROP TABLE "IMIS"."EDUCATION";
DROP TABLE "IMIS"."EMPLOY";
DROP TABLE "IMIS"."EMPLOYER";
DROP TABLE "IMIS"."ORGANIZATION";
DROP TABLE "IMIS"."POSITION";
DROP TABLE "IMIS"."POSITON_GROUP";
DROP TABLE "IMIS"."STUDENT";
DROP TABLE "IMIS"."USERS";
DROP TABLE "IMIS"."WORK";
DROP SEQUENCE "IMIS"."SEQ_EDUCATION";
DROP SEQUENCE "IMIS"."SEQ_EMPLOY";
DROP SEQUENCE "IMIS"."SEQ_EMPLOYER";
DROP SEQUENCE "IMIS"."SEQ_ORGANIZATION";
DROP SEQUENCE "IMIS"."SEQ_POSITION";
DROP SEQUENCE "IMIS"."SEQ_POSITION_GROUP";
DROP SEQUENCE "IMIS"."SEQ_STUDENT";
DROP SEQUENCE "IMIS"."SEQ_USERS";
DROP SEQUENCE "IMIS"."SEQ_WORK";
--------------------------------------------------------
--  DDL for Sequence SEQ_EDUCATION
--------------------------------------------------------

   CREATE SEQUENCE  "IMIS"."SEQ_EDUCATION"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 10 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_EMPLOY
--------------------------------------------------------

   CREATE SEQUENCE  "IMIS"."SEQ_EMPLOY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 10 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_EMPLOYER
--------------------------------------------------------

   CREATE SEQUENCE  "IMIS"."SEQ_EMPLOYER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 10 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ORGANIZATION
--------------------------------------------------------

   CREATE SEQUENCE  "IMIS"."SEQ_ORGANIZATION"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 10 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_POSITION
--------------------------------------------------------

   CREATE SEQUENCE  "IMIS"."SEQ_POSITION"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 10 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_POSITION_GROUP
--------------------------------------------------------

   CREATE SEQUENCE  "IMIS"."SEQ_POSITION_GROUP"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 10 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_STUDENT
--------------------------------------------------------

   CREATE SEQUENCE  "IMIS"."SEQ_STUDENT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 10 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_USERS
--------------------------------------------------------

   CREATE SEQUENCE  "IMIS"."SEQ_USERS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 10 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_WORK
--------------------------------------------------------

   CREATE SEQUENCE  "IMIS"."SEQ_WORK"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 10 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Table EDUCATION
--------------------------------------------------------

  CREATE TABLE "IMIS"."EDUCATION" 
   (	"EDUCATION_ID" NUMBER(*,0), 
	"DEGREE" VARCHAR2(500 BYTE), 
	"MAJOR" VARCHAR2(200 BYTE), 
	"GPA" FLOAT(126), 
	"INSTITUATION" VARCHAR2(200 BYTE), 
	"COUNTRY" VARCHAR2(100 BYTE), 
	"DATE" VARCHAR2(5 BYTE), 
	"STUDENT_ID" NUMBER(*,0), 
	"CREATE_TIME" DATE, 
	"UPDATE_TIME" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPLOY
--------------------------------------------------------

  CREATE TABLE "IMIS"."EMPLOY" 
   (	"EMPLOY_ID" NUMBER, 
	"STUDENT_ID" NUMBER, 
	"POSITION_ID" NUMBER, 
	"STATUS" CHAR(1 BYTE) DEFAULT 0, 
	"CREATE_TIME" DATE, 
	"UPDATE_TIME" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "IMIS"."EMPLOY"."STATUS" IS '0:request;1:confirm;
2:reject';
--------------------------------------------------------
--  DDL for Table EMPLOYER
--------------------------------------------------------

  CREATE TABLE "IMIS"."EMPLOYER" 
   (	"EMPLOYER_ID" NUMBER(*,0), 
	"TYPE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ORGANIZATION
--------------------------------------------------------

  CREATE TABLE "IMIS"."ORGANIZATION" 
   (	"ORGANIZATION_ID" NUMBER(*,0), 
	"NAME" VARCHAR2(500 BYTE), 
	"ADDRESS" VARCHAR2(1000 BYTE), 
	"CITY" VARCHAR2(100 BYTE), 
	"POST_CODE" VARCHAR2(10 BYTE), 
	"COUNTRY" VARCHAR2(100 BYTE), 
	"CONTACTOR_FIRST_NAME" VARCHAR2(50 BYTE), 
	"CONTACTOR_LAST_TIME" VARCHAR2(50 BYTE), 
	"CONTACTOR_POSITION" VARCHAR2(100 BYTE), 
	"TELEPHONE" VARCHAR2(20 BYTE), 
	"EMIAL" VARCHAR2(50 BYTE), 
	"WEBSITE" VARCHAR2(100 BYTE), 
	"NOTES" VARCHAR2(1000 BYTE), 
	"EMPLOYER_ID" NUMBER(*,0), 
	"USER_ID" NUMBER, 
	"CREATE_TIME" DATE, 
	"UPDATE_TIME" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table POSITION
--------------------------------------------------------

  CREATE TABLE "IMIS"."POSITION" 
   (	"POSITION_ID" NUMBER(*,0), 
	"NAME" VARCHAR2(500 BYTE), 
	"GROUP_ID" NUMBER, 
	"ORGANIZATION_ID" NUMBER, 
	"UPDATE_TIME" DATE, 
	"CREATE_TIME" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table POSITON_GROUP
--------------------------------------------------------

  CREATE TABLE "IMIS"."POSITON_GROUP" 
   (	"GROUP_ID" NUMBER, 
	"NAME" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "IMIS"."STUDENT" 
   (	"STUDENT_ID" NUMBER(*,0), 
	"FIRST_NAME" VARCHAR2(50 BYTE), 
	"MIDDLE_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"TELEPHONE" VARCHAR2(20 BYTE), 
	"STATUS" NUMBER(*,0), 
	"GENDER" VARCHAR2(50 BYTE), 
	"SEMESTER_REGISTERED" VARCHAR2(6 BYTE), 
	"REGISTERED_YEAR" VARCHAR2(4 BYTE), 
	"COMPANY_ID" NUMBER(*,0), 
	"POSITION_ID" NUMBER(*,0), 
	"STUDENT_NO" NUMBER, 
	"USER_ID" NUMBER, 
	"CREATE_TIME" DATE, 
	"UPDATE_TIME" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "IMIS"."USERS" 
   (	"USER_ID" NUMBER, 
	"USER_NAME" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"ROLE" CHAR(1 BYTE), 
	"CREATE_TIME" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "IMIS"."USERS"."ROLE" IS '0:admin;1:student;2:company';
--------------------------------------------------------
--  DDL for Table WORK
--------------------------------------------------------

  CREATE TABLE "IMIS"."WORK" 
   (	"WORK_ID" NUMBER(*,0), 
	"COMPANY" VARCHAR2(500 BYTE), 
	"DATES" VARCHAR2(11 BYTE), 
	"TITLE" VARCHAR2(100 BYTE), 
	"DUTIES" VARCHAR2(500 BYTE), 
	"STUDENT_ID" NUMBER(*,0), 
	"CREATE_TIME" DATE, 
	"UPDATE_TIME" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into IMIS.EDUCATION
SET DEFINE OFF;
REM INSERTING into IMIS.EMPLOY
SET DEFINE OFF;
REM INSERTING into IMIS.EMPLOYER
SET DEFINE OFF;
REM INSERTING into IMIS.ORGANIZATION
SET DEFINE OFF;
REM INSERTING into IMIS.POSITION
SET DEFINE OFF;
REM INSERTING into IMIS.POSITON_GROUP
SET DEFINE OFF;
REM INSERTING into IMIS.STUDENT
SET DEFINE OFF;
REM INSERTING into IMIS.USERS
SET DEFINE OFF;
REM INSERTING into IMIS.WORK
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMIS"."TABLE1_PK" ON "IMIS"."POSITON_GROUP" ("GROUP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_COMPANY
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMIS"."IDX_COMPANY" ON "IMIS"."ORGANIZATION" ("ORGANIZATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMPLOY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMIS"."EMPLOY_PK" ON "IMIS"."EMPLOY" ("EMPLOY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_EDUCATION_EDUCATION_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMIS"."IDX_EDUCATION_EDUCATION_ID" ON "IMIS"."EDUCATION" ("EDUCATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_WORK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMIS"."IDX_WORK" ON "IMIS"."WORK" ("WORK_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_USERS
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMIS"."IDX_USERS" ON "IMIS"."USERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_EMPLOYER
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMIS"."IDX_EMPLOYER" ON "IMIS"."EMPLOYER" ("EMPLOYER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_POSITION
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMIS"."IDX_POSITION" ON "IMIS"."POSITION" ("POSITION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_STUDENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMIS"."IDX_STUDENT" ON "IMIS"."STUDENT" ("STUDENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table POSITION
--------------------------------------------------------

  ALTER TABLE "IMIS"."POSITION" MODIFY ("CREATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."POSITION" MODIFY ("UPDATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."POSITION" MODIFY ("ORGANIZATION_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."POSITION" MODIFY ("GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."POSITION" ADD CONSTRAINT "PK_POSITION" PRIMARY KEY ("POSITION_ID")
  USING INDEX (CREATE UNIQUE INDEX "IMIS"."IDX_POSITION" ON "IMIS"."POSITION" ("POSITION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "IMIS"."POSITION" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."POSITION" MODIFY ("POSITION_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "IMIS"."STUDENT" MODIFY ("UPDATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("CREATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("STUDENT_NO" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" ADD CONSTRAINT "PK_STUDENT" PRIMARY KEY ("STUDENT_ID")
  USING INDEX (CREATE UNIQUE INDEX "IMIS"."IDX_STUDENT" ON "IMIS"."STUDENT" ("STUDENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("REGISTERED_YEAR" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("SEMESTER_REGISTERED" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("TELEPHONE" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("MIDDLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EDUCATION
--------------------------------------------------------

  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("UPDATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("CREATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EDUCATION" ADD CONSTRAINT "PK_EDUCATION" PRIMARY KEY ("EDUCATION_ID")
  USING INDEX (CREATE UNIQUE INDEX "IMIS"."IDX_EDUCATION_EDUCATION_ID" ON "IMIS"."EDUCATION" ("EDUCATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("COUNTRY" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("INSTITUATION" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("GPA" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("MAJOR" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("DEGREE" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("EDUCATION_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WORK
--------------------------------------------------------

  ALTER TABLE "IMIS"."WORK" MODIFY ("UPDATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."WORK" MODIFY ("CREATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."WORK" MODIFY ("DUTIES" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."WORK" MODIFY ("COMPANY" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."WORK" ADD CONSTRAINT "PK_WORK" PRIMARY KEY ("WORK_ID")
  USING INDEX (CREATE UNIQUE INDEX "IMIS"."IDX_WORK" ON "IMIS"."WORK" ("WORK_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "IMIS"."WORK" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."WORK" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."WORK" MODIFY ("DATES" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."WORK" MODIFY ("WORK_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOY
--------------------------------------------------------

  ALTER TABLE "IMIS"."EMPLOY" ADD CONSTRAINT "PK_EMPLOY" PRIMARY KEY ("EMPLOY_ID")
  USING INDEX (CREATE UNIQUE INDEX "IMIS"."EMPLOY_PK" ON "IMIS"."EMPLOY" ("EMPLOY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "IMIS"."EMPLOY" MODIFY ("UPDATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EMPLOY" MODIFY ("CREATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EMPLOY" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EMPLOY" MODIFY ("POSITION_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EMPLOY" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EMPLOY" MODIFY ("EMPLOY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POSITON_GROUP
--------------------------------------------------------

  ALTER TABLE "IMIS"."POSITON_GROUP" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("GROUP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IMIS"."POSITON_GROUP" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."POSITON_GROUP" MODIFY ("GROUP_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORGANIZATION
--------------------------------------------------------

  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("UPDATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("CREATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("EMPLOYER_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("WEBSITE" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."ORGANIZATION" ADD CONSTRAINT "PK_COMPANY" PRIMARY KEY ("ORGANIZATION_ID")
  USING INDEX (CREATE UNIQUE INDEX "IMIS"."IDX_COMPANY" ON "IMIS"."ORGANIZATION" ("ORGANIZATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("EMIAL" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("TELEPHONE" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("CONTACTOR_POSITION" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("CONTACTOR_LAST_TIME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("CONTACTOR_FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("COUNTRY" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("POST_CODE" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("CITY" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."ORGANIZATION" MODIFY ("ORGANIZATION_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYER
--------------------------------------------------------

  ALTER TABLE "IMIS"."EMPLOYER" ADD CONSTRAINT "PK_EMPLOYER" PRIMARY KEY ("EMPLOYER_ID")
  USING INDEX (CREATE UNIQUE INDEX "IMIS"."IDX_EMPLOYER" ON "IMIS"."EMPLOYER" ("EMPLOYER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "IMIS"."EMPLOYER" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EMPLOYER" MODIFY ("EMPLOYER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "IMIS"."USERS" ADD CONSTRAINT "PK_USERS" PRIMARY KEY ("USER_ID")
  USING INDEX (CREATE UNIQUE INDEX "IMIS"."IDX_USERS" ON "IMIS"."USERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "IMIS"."USERS" MODIFY ("ROLE" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."USERS" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table EDUCATION
--------------------------------------------------------

  ALTER TABLE "IMIS"."EDUCATION" ADD CONSTRAINT "FK_EDUCATION_STUDENT" FOREIGN KEY ("STUDENT_ID")
	  REFERENCES "IMIS"."STUDENT" ("STUDENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOY
--------------------------------------------------------

  ALTER TABLE "IMIS"."EMPLOY" ADD CONSTRAINT "FK_EMPLOY_POSITION" FOREIGN KEY ("POSITION_ID")
	  REFERENCES "IMIS"."POSITION" ("POSITION_ID") ENABLE;
  ALTER TABLE "IMIS"."EMPLOY" ADD CONSTRAINT "FK_EMPLOY_STUDENT" FOREIGN KEY ("STUDENT_ID")
	  REFERENCES "IMIS"."STUDENT" ("STUDENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORGANIZATION
--------------------------------------------------------

  ALTER TABLE "IMIS"."ORGANIZATION" ADD CONSTRAINT "FK_COMPANY_EMPLOYER" FOREIGN KEY ("EMPLOYER_ID")
	  REFERENCES "IMIS"."EMPLOYER" ("EMPLOYER_ID") ENABLE;
  ALTER TABLE "IMIS"."ORGANIZATION" ADD CONSTRAINT "PK_ORGANIZATION_USERS" FOREIGN KEY ("USER_ID")
	  REFERENCES "IMIS"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POSITION
--------------------------------------------------------

  ALTER TABLE "IMIS"."POSITION" ADD CONSTRAINT "FK_POSITION_GROUP" FOREIGN KEY ("GROUP_ID")
	  REFERENCES "IMIS"."POSITON_GROUP" ("GROUP_ID") ENABLE;
  ALTER TABLE "IMIS"."POSITION" ADD CONSTRAINT "FK_POSITION_ORGANIZATION" FOREIGN KEY ("ORGANIZATION_ID")
	  REFERENCES "IMIS"."ORGANIZATION" ("ORGANIZATION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "IMIS"."STUDENT" ADD CONSTRAINT "FK_STUDENT_COMPANY" FOREIGN KEY ("COMPANY_ID")
	  REFERENCES "IMIS"."ORGANIZATION" ("ORGANIZATION_ID") ENABLE;
  ALTER TABLE "IMIS"."STUDENT" ADD CONSTRAINT "FK_STUDENT_POSITION" FOREIGN KEY ("POSITION_ID")
	  REFERENCES "IMIS"."POSITION" ("POSITION_ID") ENABLE;
  ALTER TABLE "IMIS"."STUDENT" ADD CONSTRAINT "FK_STUDENT_USERS" FOREIGN KEY ("USER_ID")
	  REFERENCES "IMIS"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WORK
--------------------------------------------------------

  ALTER TABLE "IMIS"."WORK" ADD CONSTRAINT "FK_WORK_STUDENT" FOREIGN KEY ("STUDENT_ID")
	  REFERENCES "IMIS"."STUDENT" ("STUDENT_ID") ENABLE;
