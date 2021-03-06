--------------------------------------------------------
--  だ橾檜 儅撩脾 - 旎蹂橾-2錯-23-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BLOG
--------------------------------------------------------

  CREATE TABLE "JBLOG"."BLOG" 
   (	"USERNO" NUMBER, 
	"BLOGTITLE" VARCHAR2(200 BYTE), 
	"LOGOFILE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "JBLOG"."CATEGORY" 
   (	"CATENO" NUMBER, 
	"USERNO" NUMBER, 
	"CATENAME" VARCHAR2(200 BYTE), 
	"DESCRIPTION" VARCHAR2(500 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "JBLOG"."COMMENTS" 
   (	"CMTNO" NUMBER, 
	"POSTNO" NUMBER, 
	"USERNO" NUMBER, 
	"CMTCONTENT" VARCHAR2(1000 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FILEUPLOAD
--------------------------------------------------------

  CREATE TABLE "JBLOG"."FILEUPLOAD" 
   (	"no" NUMBER(10,0), 
	"orgName" VARCHAR2(500 BYTE), 
	"saveName" VARCHAR2(500 BYTE), 
	"exName" VARCHAR2(500 BYTE), 
	"filePath" VARCHAR2(1000 BYTE), 
	"fileSize" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table POST
--------------------------------------------------------

  CREATE TABLE "JBLOG"."POST" 
   (	"POSTNO" NUMBER, 
	"CATENO" NUMBER, 
	"POSTTITLE" VARCHAR2(300 BYTE), 
	"POSTCONTENT" VARCHAR2(4000 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "JBLOG"."USERS" 
   (	"USERNO" NUMBER, 
	"ID" VARCHAR2(50 BYTE), 
	"USERNAME" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(50 BYTE), 
	"JOINDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CATEGORY_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_CATEGORY_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_COMMENTS_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_COMMENTS_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_FILEUPLOAD_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_FILEUPLOAD_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_POST_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_POST_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_USERS_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_USERS_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 181 CACHE 20 NOORDER  NOCYCLE ;
REM INSERTING into JBLOG.BLOG
SET DEFINE OFF;
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (24,'123','15190190569396a6bdb3a-b1b0-49c6-a61d-b3485a0ce902.jpg');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (55,'sry','15190159852975dc48a27-c884-4d2f-a175-9599495e8f06.jpg');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (69,'4646椒曖 綰煎斜','spring-logo.jpg');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (70,'789椒曖 綰煎斜','spring-logo.jpg');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (71,'1234椒曖 綰煎斜','spring-logo.jpg');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (95,'dddd','15190292016828eb46fec-c958-496d-99cc-2b11b5dd98ad.jpg');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (110,'asf','151902985830382f94be0-3f6b-4467-b6a8-425222a25bb5.jpg');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (121,'蝶じ纂','1519123871036ad6f4486-c005-4d2a-894c-83e9b958bb08.png');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (122,'2椒曖 綰煎斜','spring-logo.jpg');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (141,'ж��椒曖 綰煎斜','1519345954499aeea70ba-939d-4f39-b280-41b2e242098a.jpg');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (142,'檜艙�ㄣ埬� 綰煎斜','1519174282079e977e19b-bb25-4f09-9817-62bc3e5eb642.jpg');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (143,'檜遽艙椒曖 綰煎斜','1519174765891fe901fe2-9703-4d73-ac9a-a0ededdcd2a6.jpg');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (144,'515151椒曖 綰煎斜','spring-logo.jpg');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (163,'11椒曖 綰煎斜','spring-logo.jpg');
REM INSERTING into JBLOG.CATEGORY
SET DEFINE OFF;
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (2,95,'嘐碟盟','蘋纔堅葬蒂 雖薑ж雖 彊擎 唳辦',to_date('18/02/19','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (48,141,'ж釭 渦','謠嬴辨',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (31,110,'螢塭陛釭懈?','躁躁躁躁躁',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (32,110,'嬪煎 試盪 蹺陛...','腎賊 寰腎蹂?',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (33,110,'dn;lkwajf','酈酈酈酈',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (34,110,'冗冗','冗冗',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (35,110,'!!��','1',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (36,110,'alfnkawe','aeksfhA>',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (37,121,'嘐碟盟','蘋纔堅葬蒂 雖薑ж雖 彊擎 唳辦',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (38,122,'嘐碟盟','蘋纔堅葬蒂 雖薑ж雖 彊擎 唳辦',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (39,122,'anjaf','afrewgvf',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (42,142,'嘐碟盟','蘋纔堅葬蒂 雖薑ж雖 彊擎 唳辦',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (43,143,'嘐碟盟','蘋纔堅葬蒂 雖薑ж雖 彊擎 唳辦',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (44,143,'檜遽艙','遽檜Ⅵ',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (45,143,'ж��團','棲陛 霤 謠嬴(礎礎礎)',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (46,143,'蕨際棻','螃楚 爾嬴撿 蕨際棻',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (47,141,'蘋纔堅葬殮棲棻.','謠嬴蹂',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (49,141,'Girls On Top','爾嬴 喻楚殮棲棻.',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (50,144,'嘐碟盟','蘋纔堅葬蒂 雖薑ж雖 彊擎 唳辦',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (61,163,'嘐碟盟','蘋纔堅葬蒂 雖薑ж雖 彊擎 唳辦',to_date('18/02/22','RR/MM/DD'));
REM INSERTING into JBLOG.COMMENTS
SET DEFINE OFF;
REM INSERTING into JBLOG.FILEUPLOAD
SET DEFINE OFF;
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (1,'檜蝓晦.jpg','1519007800762776218ed-eb51-48b0-9601-1715aef647de.jpg','.jpg','D:\javaStudy\jblogupload\1519007800762776218ed-eb51-48b0-9601-1715aef647de.jpg','38960');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (2,'檜蝓晦.jpg','151900791354086a48aac-547c-419f-a2ff-039d84531b31.jpg','.jpg','D:\javaStudy\jblogupload\151900791354086a48aac-547c-419f-a2ff-039d84531b31.jpg','38960');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (3,'profile.jpg','1519008070105735ea1c8-145b-44a0-8aa8-6dee24e0fea3.jpg','.jpg','D:\javaStudy\jblogupload\1519008070105735ea1c8-145b-44a0-8aa8-6dee24e0fea3.jpg','357614');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (4,'profile.jpg','151900808159228da9924-efe1-4871-ac8a-94a22a0d81ad.jpg','.jpg','D:\javaStudy\jblogupload\151900808159228da9924-efe1-4871-ac8a-94a22a0d81ad.jpg','357614');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (5,'profile.png','1519008102663ed536fe3-44eb-4b8c-84dc-2ede6254f187.png','.png','D:\javaStudy\jblogupload\1519008102663ed536fe3-44eb-4b8c-84dc-2ede6254f187.png','247786');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (6,'檜蝓晦.jpg','15190083432991c5884c0-5cf9-4df7-bf4a-ca509b8051bf.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\15190083432991c5884c0-5cf9-4df7-bf4a-ca509b8051bf.jpg','38960');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (7,'檜蝓晦.jpg','151900835373907f8b5f9-d762-45db-b9ae-9441f6ddf13d.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\151900835373907f8b5f9-d762-45db-b9ae-9441f6ddf13d.jpg','38960');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (8,'檜蝓晦.jpg','15190120419389ed0a4ab-79c7-43a2-a1f4-ecadb0b59f2b.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\15190120419389ed0a4ab-79c7-43a2-a1f4-ecadb0b59f2b.jpg','38960');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (9,'檜蝓晦.jpg','1519013543666ae0aaa76-372a-4c32-8522-6861f12c95f8.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\1519013543666ae0aaa76-372a-4c32-8522-6861f12c95f8.jpg','38960');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (10,'profile.jpg','15190144926147f9d8ba7-daf1-4764-a750-a85ee5d5f23c.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\15190144926147f9d8ba7-daf1-4764-a750-a85ee5d5f23c.jpg','357614');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (11,'mybatis掘褻.jpg','15190145213498b7468f3-6e3c-4475-955d-fa819c7de7d8.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\15190145213498b7468f3-6e3c-4475-955d-fa819c7de7d8.jpg','118925');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (12,'檜蝓晦.jpg','15190146439071b3c418f-8dcb-49c1-a72d-bdc537c9344c.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\15190146439071b3c418f-8dcb-49c1-a72d-bdc537c9344c.jpg','38960');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (13,'檜蝓晦.jpg','1519015192603bba0c447-8d4d-4773-a197-9c7b8b148fb9.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\1519015192603bba0c447-8d4d-4773-a197-9c7b8b148fb9.jpg','38960');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (14,'mybatis掘褻.jpg','1519015793875c60cf09c-7c73-4dcd-87ec-bbf6e79922bf.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\1519015793875c60cf09c-7c73-4dcd-87ec-bbf6e79922bf.jpg','118925');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (15,'mybatis掘褻.jpg','1519015820379e2b30b60-7aa8-4c83-88d6-dd93377ada3a.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\1519015820379e2b30b60-7aa8-4c83-88d6-dd93377ada3a.jpg','118925');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (16,'檜蝓晦.jpg','15190159852975dc48a27-c884-4d2f-a175-9599495e8f06.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\15190159852975dc48a27-c884-4d2f-a175-9599495e8f06.jpg','38960');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (17,'檜蝓晦.jpg','15190188261120cb8de9c-acfd-423d-b2aa-7f1e4803ba7a.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\15190188261120cb8de9c-acfd-423d-b2aa-7f1e4803ba7a.jpg','38960');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (18,'檜蝓晦.jpg','151901885181065aaff44-1da7-43ff-8bff-b5e18d296d8b.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\151901885181065aaff44-1da7-43ff-8bff-b5e18d296d8b.jpg','38960');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (19,'profile.jpg','15190188618517c868149-0545-4729-8790-6fd60bf37173.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\15190188618517c868149-0545-4729-8790-6fd60bf37173.jpg','357614');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (20,'檜蝓晦.jpg','15190190569396a6bdb3a-b1b0-49c6-a61d-b3485a0ce902.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\15190190569396a6bdb3a-b1b0-49c6-a61d-b3485a0ce902.jpg','38960');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (21,'profile.png','1519028809803e991fd59-3ac6-48b6-865c-9a73cfa401c0.png','.png','D:\javaStudy\workspace\jblog\jblogupload\1519028809803e991fd59-3ac6-48b6-865c-9a73cfa401c0.png','247786');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (22,'檜蝓晦.jpg','15190292016828eb46fec-c958-496d-99cc-2b11b5dd98ad.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\15190292016828eb46fec-c958-496d-99cc-2b11b5dd98ad.jpg','38960');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (23,'profile.jpg','151902985830382f94be0-3f6b-4467-b6a8-425222a25bb5.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\151902985830382f94be0-3f6b-4467-b6a8-425222a25bb5.jpg','357614');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (41,'profile.png','1519123871036ad6f4486-c005-4d2a-894c-83e9b958bb08.png','.png','D:\javaStudy\workspace\jblog\jblogupload\1519123871036ad6f4486-c005-4d2a-894c-83e9b958bb08.png','247786');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (61,'檜蝓晦.jpg','1519174282079e977e19b-bb25-4f09-9817-62bc3e5eb642.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\1519174282079e977e19b-bb25-4f09-9817-62bc3e5eb642.jpg','38960');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (62,'遽.jpg','151917444670758eeea13-79b0-4096-a466-589521982860.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\151917444670758eeea13-79b0-4096-a466-589521982860.jpg','142647');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (63,'遽.jpg','1519174765891fe901fe2-9703-4d73-ac9a-a0ededdcd2a6.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\1519174765891fe901fe2-9703-4d73-ac9a-a0ededdcd2a6.jpg','512381');
Insert into JBLOG.FILEUPLOAD ("no","orgName","saveName","exName","filePath","fileSize") values (81,'遽.jpg','1519345954499aeea70ba-939d-4f39-b280-41b2e242098a.jpg','.jpg','D:\javaStudy\workspace\jblog\jblogupload\1519345954499aeea70ba-939d-4f39-b280-41b2e242098a.jpg','512381');
REM INSERTING into JBLOG.POST
SET DEFINE OFF;
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (2,2,'莖嬴嬴懈','"說葬 部陬戲賊 謠啊棻."',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (3,2,'釧釧釧','ヰжжжжжж',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (4,2,'觼жжжж','檜剪 霞瞼 橫滑棻懈',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (5,2,'樽陛 謁檜楝梱懈','薑褐離溥 雞誕',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (6,32,'旋濛撩腆痊?','營團檜陛 蜓ц棻',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (7,31,'仃.塭勻太仃援.','檜太檜太冗予鼠檜��',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (8,33,'夥爾','營⑷',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (9,33,'жжж','路塭',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (10,39,'旋擊','賦撿п',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (11,38,'仃.中`','太仄元僭;',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (21,44,'遽遽遽','剩釭 謠擠',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (22,44,'嶸酈蝶ZZANG','六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六六',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (23,45,'遽檜陛 睡落棲棻','棲陛 霤 謠嬴',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (24,45,'觼嬴嬴嬴懈','酈酈酈酈酈',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (25,45,'莢錠','橫溥錄橫溥錄',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (26,46,'餌嫌п','餌嫌п ',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (27,46,'嘐錶ж雖葆','蕨輓п輿撮蹂',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (29,46,'謠嬴蹂','謠嬴蹂 揚楝輿撮蹂',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (30,46,'�黰黰黰黰黰黰�','躁',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (31,47,'蘋纔堅葬檜轄','п爾朝匏棲棻',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (32,48,'賅萇啪 釭縑啪','罹濠陛 罹濠棻遴 匙擊 鬼蹂п',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (33,49,'嬴輿 醒晦衛啻','綰塭綰塭綰塭',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (34,49,'渡渡ж啪','擅擊 щп 勘橫陞楚',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (35,49,'頂 賅蝗 斜渠煎','渡渡ж堅 談橫',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (36,49,'檜啪 集撿 ж朝等','寰嗑啻蹂...',to_date('18/02/21','RR/MM/DD'));
REM INSERTING into JBLOG.USERS
SET DEFINE OFF;
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (121,'1','蝶じ纂','1',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (122,'2','檜蝓晦','2',to_date('18/02/20','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (141,'sky00gpals','��','1',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (142,'3','檜艙��','3',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (143,'5','檜遽艙','5',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (24,'1616','11616','1',to_date('18/02/14','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (144,'515151','asdf','1',to_date('18/02/21','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (163,'11','六六','1',to_date('18/02/22','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (55,'17','17','17',to_date('18/02/19','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (95,'5656','4646','1',to_date('18/02/19','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (70,'789','789','789',to_date('18/02/19','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (71,'1234','1234','1234',to_date('18/02/19','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (69,'4646','4646','4646',to_date('18/02/19','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (110,'11111','111111','11111',to_date('18/02/19','RR/MM/DD'));
--------------------------------------------------------
--  Constraints for Table FILEUPLOAD
--------------------------------------------------------

  ALTER TABLE "JBLOG"."FILEUPLOAD" ADD PRIMARY KEY ("no")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."FILEUPLOAD" MODIFY ("filePath" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "JBLOG"."USERS" ADD UNIQUE ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."USERS" ADD PRIMARY KEY ("USERNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."USERS" MODIFY ("JOINDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BLOG
--------------------------------------------------------

  ALTER TABLE "JBLOG"."BLOG" ADD PRIMARY KEY ("USERNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."BLOG" MODIFY ("BLOGTITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "JBLOG"."COMMENTS" ADD PRIMARY KEY ("CMTNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."COMMENTS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."COMMENTS" MODIFY ("CMTCONTENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "JBLOG"."CATEGORY" ADD PRIMARY KEY ("CATENO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."CATEGORY" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."CATEGORY" MODIFY ("CATENAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "JBLOG"."POST" ADD PRIMARY KEY ("POSTNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."POST" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."POST" MODIFY ("POSTTITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BLOG
--------------------------------------------------------

  ALTER TABLE "JBLOG"."BLOG" ADD CONSTRAINT "C_BLOG_FK" FOREIGN KEY ("USERNO")
	  REFERENCES "JBLOG"."USERS" ("USERNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "JBLOG"."CATEGORY" ADD CONSTRAINT "C_CATEGORY_FK" FOREIGN KEY ("USERNO")
	  REFERENCES "JBLOG"."BLOG" ("USERNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "JBLOG"."COMMENTS" ADD CONSTRAINT "C_COMMENTS_FK1" FOREIGN KEY ("POSTNO")
	  REFERENCES "JBLOG"."POST" ("POSTNO") ENABLE;
  ALTER TABLE "JBLOG"."COMMENTS" ADD CONSTRAINT "C_COMMENTS_FK2" FOREIGN KEY ("USERNO")
	  REFERENCES "JBLOG"."USERS" ("USERNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "JBLOG"."POST" ADD CONSTRAINT "C_POST_FK" FOREIGN KEY ("CATENO")
	  REFERENCES "JBLOG"."CATEGORY" ("CATENO") ENABLE;
