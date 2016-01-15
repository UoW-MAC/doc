--------------------------------------------------------
--  File created - Thursday-January-14-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table COMPANY
--------------------------------------------------------

  CREATE TABLE "IMIS"."COMPANY" 
   (	"COMPANY_ID" NUMBER(*,0), 
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
	"EMPLOYER_EMPLOYER_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
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
	"STUDENT_STUDENT_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
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
--  DDL for Table POSITION
--------------------------------------------------------

  CREATE TABLE "IMIS"."POSITION" 
   (	"POSITION_ID" NUMBER(*,0), 
	"TYPE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "IMIS"."STUDENT" 
   (	"STUDENT_ID" NUMBER(*,0), 
	"FIRST_TIME" VARCHAR2(50 BYTE), 
	"MIDDLE_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"TELEPHONE" VARCHAR2(20 BYTE), 
	"STATUS" NUMBER(*,0), 
	"GENDER" VARCHAR2(50 BYTE), 
	"SEMESTER_REGISTERED" VARCHAR2(6 BYTE), 
	"REGISTERED_YEAR" VARCHAR2(4 BYTE), 
	"COMPANY_ID" NUMBER(*,0), 
	"COMPANY_COMPANY_ID" NUMBER(*,0), 
	"POSITION_ID" NUMBER(*,0), 
	"POSITION_POSITION_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
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
	"STUDENT_STUDENT_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into IMIS.COMPANY
SET DEFINE OFF;
REM INSERTING into IMIS.EDUCATION
SET DEFINE OFF;
REM INSERTING into IMIS.EMPLOYER
SET DEFINE OFF;
REM INSERTING into IMIS.POSITION
SET DEFINE OFF;
REM INSERTING into IMIS.STUDENT
SET DEFINE OFF;
REM INSERTING into IMIS.WORK
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index WORK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMIS"."WORK_PK" ON "IMIS"."WORK" ("WORK_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STUDENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMIS"."STUDENT_PK" ON "IMIS"."STUDENT" ("STUDENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index POSITION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMIS"."POSITION_PK" ON "IMIS"."POSITION" ("POSITION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMPLOYER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMIS"."EMPLOYER_PK" ON "IMIS"."EMPLOYER" ("EMPLOYER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EDUCATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMIS"."EDUCATION_PK" ON "IMIS"."EDUCATION" ("EDUCATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index COMPANY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMIS"."COMPANY_PK" ON "IMIS"."COMPANY" ("COMPANY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table WORK
--------------------------------------------------------

  ALTER TABLE "IMIS"."WORK" ADD CONSTRAINT "WORK_PK" PRIMARY KEY ("WORK_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IMIS"."WORK" MODIFY ("STUDENT_STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."WORK" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."WORK" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."WORK" MODIFY ("DATES" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."WORK" MODIFY ("WORK_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMPANY
--------------------------------------------------------

  ALTER TABLE "IMIS"."COMPANY" ADD CONSTRAINT "COMPANY_PK" PRIMARY KEY ("COMPANY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IMIS"."COMPANY" MODIFY ("EMPLOYER_EMPLOYER_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."COMPANY" MODIFY ("EMIAL" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."COMPANY" MODIFY ("TELEPHONE" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."COMPANY" MODIFY ("CONTACTOR_POSITION" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."COMPANY" MODIFY ("CONTACTOR_LAST_TIME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."COMPANY" MODIFY ("CONTACTOR_FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."COMPANY" MODIFY ("COUNTRY" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."COMPANY" MODIFY ("POST_CODE" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."COMPANY" MODIFY ("CITY" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."COMPANY" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."COMPANY" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."COMPANY" MODIFY ("COMPANY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POSITION
--------------------------------------------------------

  ALTER TABLE "IMIS"."POSITION" ADD CONSTRAINT "POSITION_PK" PRIMARY KEY ("POSITION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IMIS"."POSITION" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."POSITION" MODIFY ("POSITION_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "IMIS"."STUDENT" ADD CONSTRAINT "STUDENT_PK" PRIMARY KEY ("STUDENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("POSITION_POSITION_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("COMPANY_COMPANY_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("REGISTERED_YEAR" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("SEMESTER_REGISTERED" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("TELEPHONE" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("MIDDLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("FIRST_TIME" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."STUDENT" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EDUCATION
--------------------------------------------------------

  ALTER TABLE "IMIS"."EDUCATION" ADD CONSTRAINT "EDUCATION_PK" PRIMARY KEY ("EDUCATION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("STUDENT_STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("COUNTRY" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("INSTITUATION" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("GPA" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("MAJOR" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("DEGREE" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EDUCATION" MODIFY ("EDUCATION_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYER
--------------------------------------------------------

  ALTER TABLE "IMIS"."EMPLOYER" ADD CONSTRAINT "EMPLOYER_PK" PRIMARY KEY ("EMPLOYER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IMIS"."EMPLOYER" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "IMIS"."EMPLOYER" MODIFY ("EMPLOYER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table COMPANY
--------------------------------------------------------

  ALTER TABLE "IMIS"."COMPANY" ADD CONSTRAINT "COMPANY_EMPLOYER_FK" FOREIGN KEY ("EMPLOYER_EMPLOYER_ID")
	  REFERENCES "IMIS"."EMPLOYER" ("EMPLOYER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EDUCATION
--------------------------------------------------------

  ALTER TABLE "IMIS"."EDUCATION" ADD CONSTRAINT "EDUCATION_STUDENT_FK" FOREIGN KEY ("STUDENT_STUDENT_ID")
	  REFERENCES "IMIS"."STUDENT" ("STUDENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "IMIS"."STUDENT" ADD CONSTRAINT "STUDENT_COMPANY_FK" FOREIGN KEY ("COMPANY_COMPANY_ID")
	  REFERENCES "IMIS"."COMPANY" ("COMPANY_ID") ENABLE;
  ALTER TABLE "IMIS"."STUDENT" ADD CONSTRAINT "STUDENT_POSITION_FK" FOREIGN KEY ("POSITION_POSITION_ID")
	  REFERENCES "IMIS"."POSITION" ("POSITION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WORK
--------------------------------------------------------

  ALTER TABLE "IMIS"."WORK" ADD CONSTRAINT "WORK_STUDENT_FK" FOREIGN KEY ("STUDENT_STUDENT_ID")
	  REFERENCES "IMIS"."STUDENT" ("STUDENT_ID") ENABLE;
