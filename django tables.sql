ALTER TABLE DIENTES.AUTH_GROUP
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIENTES.AUTH_GROUP CASCADE CONSTRAINTS;

CREATE TABLE DIENTES.AUTH_GROUP
(
  ID    NUMBER(11)                              NOT NULL,
  NAME  NVARCHAR2(80)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE DIENTES.AUTH_USER
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIENTES.AUTH_USER CASCADE CONSTRAINTS;

CREATE TABLE DIENTES.AUTH_USER
(
  ID            NUMBER(11)                      NOT NULL,
  PASSWORD      NVARCHAR2(128),
  LAST_LOGIN    TIMESTAMP(6),
  IS_SUPERUSER  NUMBER(1)                       NOT NULL,
  USERNAME      NVARCHAR2(150),
  FIRST_NAME    NVARCHAR2(30),
  LAST_NAME     NVARCHAR2(30),
  EMAIL         NVARCHAR2(254),
  IS_STAFF      NUMBER(1)                       NOT NULL,
  IS_ACTIVE     NUMBER(1)                       NOT NULL,
  DATE_JOINED   TIMESTAMP(6)                    NOT NULL
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE DIENTES.AUTH_USER_GROUPS
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIENTES.AUTH_USER_GROUPS CASCADE CONSTRAINTS;

CREATE TABLE DIENTES.AUTH_USER_GROUPS
(
  ID        NUMBER(11)                          NOT NULL,
  USER_ID   NUMBER(11)                          NOT NULL,
  GROUP_ID  NUMBER(11)                          NOT NULL
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE DIENTES.DJANGO_CONTENT_TYPE
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIENTES.DJANGO_CONTENT_TYPE CASCADE CONSTRAINTS;

CREATE TABLE DIENTES.DJANGO_CONTENT_TYPE
(
  ID         NUMBER(11)                         NOT NULL,
  APP_LABEL  NVARCHAR2(100),
  MODEL      NVARCHAR2(100)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE DIENTES.DJANGO_MIGRATIONS
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIENTES.DJANGO_MIGRATIONS CASCADE CONSTRAINTS;

CREATE TABLE DIENTES.DJANGO_MIGRATIONS
(
  ID       NUMBER(11)                           NOT NULL,
  APP      NVARCHAR2(255),
  NAME     NVARCHAR2(255),
  APPLIED  TIMESTAMP(6)                         NOT NULL
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE DIENTES.DJANGO_SESSION
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIENTES.DJANGO_SESSION CASCADE CONSTRAINTS;

CREATE TABLE DIENTES.DJANGO_SESSION
(
  SESSION_KEY   NVARCHAR2(40)                   NOT NULL,
  SESSION_DATA  NCLOB,
  EXPIRE_DATE   TIMESTAMP(6)                    NOT NULL
)
LOB (SESSION_DATA) STORE AS BASICFILE (
  TABLESPACE  SYSTEM
  ENABLE      STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  FREELISTS        1
                  FREELIST GROUPS  1
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


CREATE UNIQUE INDEX DIENTES.AUTH_USER_USER_ID_G_94350C0C_U ON DIENTES.AUTH_USER_GROUPS
(USER_ID, GROUP_ID)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX DIENTES.AUTH_USER__GROUP_ID_97559544 ON DIENTES.AUTH_USER_GROUPS
(GROUP_ID)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX DIENTES.AUTH_USER__USER_ID_6A12ED8B ON DIENTES.AUTH_USER_GROUPS
(USER_ID)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX DIENTES.DJANGO_CO_APP_LABEL_76BD3D3B_U ON DIENTES.DJANGO_CONTENT_TYPE
(APP_LABEL, MODEL)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX DIENTES.DJANGO_SES_EXPIRE_DAT_A5C62663 ON DIENTES.DJANGO_SESSION
(EXPIRE_DATE)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

--  There is no statement for index DIENTES.SYS_C007740.
--  The object is created when the parent object is created.

--  There is no statement for index DIENTES.SYS_C007742.
--  The object is created when the parent object is created.

--  There is no statement for index DIENTES.SYS_C007748.
--  The object is created when the parent object is created.

--  There is no statement for index DIENTES.SYS_C007749.
--  The object is created when the parent object is created.

--  There is no statement for index DIENTES.SYS_C007763.
--  The object is created when the parent object is created.

--  There is no statement for index DIENTES.SYS_C007764.
--  The object is created when the parent object is created.

--  There is no statement for index DIENTES.SYS_C007768.
--  The object is created when the parent object is created.

--  There is no statement for index DIENTES.SYS_C007794.
--  The object is created when the parent object is created.

CREATE OR REPLACE TRIGGER DIENTES."AUTH_GROUP_TR"
BEFORE INSERT ON DIENTES.AUTH_GROUP
FOR EACH ROW
WHEN (
new."ID" IS NULL
      )
BEGIN
        SELECT "AUTH_GROUP_SQ".nextval
        INTO :new."ID" FROM dual;
    END;
/


CREATE OR REPLACE TRIGGER DIENTES."AUTH_USER_GROUPS_TR"
BEFORE INSERT ON DIENTES.AUTH_USER_GROUPS
FOR EACH ROW
WHEN (
new."ID" IS NULL
      )
BEGIN
        SELECT "AUTH_USER_GROUPS_SQ".nextval
        INTO :new."ID" FROM dual;
    END;
/


CREATE OR REPLACE TRIGGER DIENTES."AUTH_USER_TR"
BEFORE INSERT ON DIENTES.AUTH_USER
FOR EACH ROW
WHEN (
new."ID" IS NULL
      )
BEGIN
        SELECT "AUTH_USER_SQ".nextval
        INTO :new."ID" FROM dual;
    END;
/


CREATE OR REPLACE TRIGGER DIENTES."DJANGO_CONTENT_TYPE_TR"
BEFORE INSERT ON DIENTES.DJANGO_CONTENT_TYPE
FOR EACH ROW
WHEN (
new."ID" IS NULL
      )
BEGIN
        SELECT "DJANGO_CONTENT_TYPE_SQ".nextval
        INTO :new."ID" FROM dual;
    END;
/


CREATE OR REPLACE TRIGGER DIENTES."DJANGO_MIGRATIONS_TR"
BEFORE INSERT ON DIENTES.DJANGO_MIGRATIONS
FOR EACH ROW
WHEN (
new."ID" IS NULL
      )
BEGIN
        SELECT "DJANGO_MIGRATIONS_SQ".nextval
        INTO :new."ID" FROM dual;
    END;
/


ALTER TABLE DIENTES.AUTH_PERMISSION
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIENTES.AUTH_PERMISSION CASCADE CONSTRAINTS;

CREATE TABLE DIENTES.AUTH_PERMISSION
(
  ID               NUMBER(11)                   NOT NULL,
  NAME             NVARCHAR2(255),
  CONTENT_TYPE_ID  NUMBER(11)                   NOT NULL,
  CODENAME         NVARCHAR2(100)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE DIENTES.AUTH_USER_USER_PERMISSIONS
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIENTES.AUTH_USER_USER_PERMISSIONS CASCADE CONSTRAINTS;

CREATE TABLE DIENTES.AUTH_USER_USER_PERMISSIONS
(
  ID             NUMBER(11)                     NOT NULL,
  USER_ID        NUMBER(11)                     NOT NULL,
  PERMISSION_ID  NUMBER(11)                     NOT NULL
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE DIENTES.DJANGO_ADMIN_LOG
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIENTES.DJANGO_ADMIN_LOG CASCADE CONSTRAINTS;

CREATE TABLE DIENTES.DJANGO_ADMIN_LOG
(
  ID               NUMBER(11)                   NOT NULL,
  ACTION_TIME      TIMESTAMP(6)                 NOT NULL,
  OBJECT_ID        NCLOB,
  OBJECT_REPR      NVARCHAR2(200),
  ACTION_FLAG      NUMBER(11)                   NOT NULL,
  CHANGE_MESSAGE   NCLOB,
  CONTENT_TYPE_ID  NUMBER(11),
  USER_ID          NUMBER(11)                   NOT NULL
)
LOB (OBJECT_ID) STORE AS BASICFILE (
  TABLESPACE  SYSTEM
  ENABLE      STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  FREELISTS        1
                  FREELIST GROUPS  1
                  BUFFER_POOL      DEFAULT
                 ))
LOB (CHANGE_MESSAGE) STORE AS BASICFILE (
  TABLESPACE  SYSTEM
  ENABLE      STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  FREELISTS        1
                  FREELIST GROUPS  1
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


CREATE INDEX DIENTES.AUTH_PERMI_CONTENT_TY_2F476E4B ON DIENTES.AUTH_PERMISSION
(CONTENT_TYPE_ID)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX DIENTES.AUTH_PERM_CONTENT_T_01AB375A_U ON DIENTES.AUTH_PERMISSION
(CONTENT_TYPE_ID, CODENAME)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX DIENTES.AUTH_USER_USER_ID_P_14A6B632_U ON DIENTES.AUTH_USER_USER_PERMISSIONS
(USER_ID, PERMISSION_ID)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX DIENTES.AUTH_USER__PERMISSION_1FBB5F2C ON DIENTES.AUTH_USER_USER_PERMISSIONS
(PERMISSION_ID)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX DIENTES.AUTH_USER__USER_ID_A95EAD1B ON DIENTES.AUTH_USER_USER_PERMISSIONS
(USER_ID)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX DIENTES.DJANGO_ADM_CONTENT_TY_C4BCE8EB ON DIENTES.DJANGO_ADMIN_LOG
(CONTENT_TYPE_ID)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX DIENTES.DJANGO_ADM_USER_ID_C564EBA6 ON DIENTES.DJANGO_ADMIN_LOG
(USER_ID)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

--  There is no statement for index DIENTES.SYS_C007746.
--  The object is created when the parent object is created.

--  There is no statement for index DIENTES.SYS_C007772.
--  The object is created when the parent object is created.

--  There is no statement for index DIENTES.SYS_C007789.
--  The object is created when the parent object is created.

CREATE OR REPLACE TRIGGER DIENTES."AUTH_PERMISSION_TR"
BEFORE INSERT ON DIENTES.AUTH_PERMISSION
FOR EACH ROW
WHEN (
new."ID" IS NULL
      )
BEGIN
        SELECT "AUTH_PERMISSION_SQ".nextval
        INTO :new."ID" FROM dual;
    END;
/


CREATE OR REPLACE TRIGGER DIENTES."AUTH_USER_USER_PERMISSI17F3"
BEFORE INSERT ON DIENTES.AUTH_USER_USER_PERMISSIONS
FOR EACH ROW
WHEN (
new."ID" IS NULL
      )
BEGIN
        SELECT "AUTH_USER_USER_PERMISSI7B1E".nextval
        INTO :new."ID" FROM dual;
    END;
/


CREATE OR REPLACE TRIGGER DIENTES."DJANGO_ADMIN_LOG_TR"
BEFORE INSERT ON DIENTES.DJANGO_ADMIN_LOG
FOR EACH ROW
WHEN (
new."ID" IS NULL
      )
BEGIN
        SELECT "DJANGO_ADMIN_LOG_SQ".nextval
        INTO :new."ID" FROM dual;
    END;
/


ALTER TABLE DIENTES.AUTH_GROUP_PERMISSIONS
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIENTES.AUTH_GROUP_PERMISSIONS CASCADE CONSTRAINTS;

CREATE TABLE DIENTES.AUTH_GROUP_PERMISSIONS
(
  ID             NUMBER(11)                     NOT NULL,
  GROUP_ID       NUMBER(11)                     NOT NULL,
  PERMISSION_ID  NUMBER(11)                     NOT NULL
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


CREATE INDEX DIENTES.AUTH_GROUP_GROUP_ID_B120CBF9 ON DIENTES.AUTH_GROUP_PERMISSIONS
(GROUP_ID)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX DIENTES.AUTH_GROUP_PERMISSION_84C5C92E ON DIENTES.AUTH_GROUP_PERMISSIONS
(PERMISSION_ID)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX DIENTES.AUTH_GROU_GROUP_ID__0CD325B0_U ON DIENTES.AUTH_GROUP_PERMISSIONS
(GROUP_ID, PERMISSION_ID)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

--  There is no statement for index DIENTES.SYS_C007753.
--  The object is created when the parent object is created.

CREATE OR REPLACE TRIGGER DIENTES."AUTH_GROUP_PERMISSIONS_TR"
BEFORE INSERT ON DIENTES.AUTH_GROUP_PERMISSIONS
FOR EACH ROW
WHEN (
new."ID" IS NULL
      )
BEGIN
        SELECT "AUTH_GROUP_PERMISSIONS_SQ".nextval
        INTO :new."ID" FROM dual;
    END;
/


ALTER TABLE DIENTES.AUTH_GROUP ADD (
  PRIMARY KEY
  (ID)
  USING INDEX
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE,
  UNIQUE (NAME)
  USING INDEX
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE);

ALTER TABLE DIENTES.AUTH_USER ADD (
  CHECK ("IS_SUPERUSER" IN (0,1))
  ENABLE VALIDATE,
  CHECK ("IS_STAFF" IN (0,1))
  ENABLE VALIDATE,
  CHECK ("IS_ACTIVE" IN (0,1))
  ENABLE VALIDATE,
  PRIMARY KEY
  (ID)
  USING INDEX
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE,
  UNIQUE (USERNAME)
  USING INDEX
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE);

ALTER TABLE DIENTES.AUTH_USER_GROUPS ADD (
  PRIMARY KEY
  (ID)
  USING INDEX
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE,
  CONSTRAINT AUTH_USER_USER_ID_G_94350C0C_U
  UNIQUE (USER_ID, GROUP_ID)
  USING INDEX DIENTES.AUTH_USER_USER_ID_G_94350C0C_U
  ENABLE VALIDATE);

ALTER TABLE DIENTES.DJANGO_CONTENT_TYPE ADD (
  PRIMARY KEY
  (ID)
  USING INDEX
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE,
  CONSTRAINT DJANGO_CO_APP_LABEL_76BD3D3B_U
  UNIQUE (APP_LABEL, MODEL)
  USING INDEX DIENTES.DJANGO_CO_APP_LABEL_76BD3D3B_U
  ENABLE VALIDATE);

ALTER TABLE DIENTES.DJANGO_MIGRATIONS ADD (
  PRIMARY KEY
  (ID)
  USING INDEX
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE);

ALTER TABLE DIENTES.DJANGO_SESSION ADD (
  PRIMARY KEY
  (SESSION_KEY)
  USING INDEX
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE);

ALTER TABLE DIENTES.AUTH_PERMISSION ADD (
  PRIMARY KEY
  (ID)
  USING INDEX
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE,
  CONSTRAINT AUTH_PERM_CONTENT_T_01AB375A_U
  UNIQUE (CONTENT_TYPE_ID, CODENAME)
  USING INDEX DIENTES.AUTH_PERM_CONTENT_T_01AB375A_U
  ENABLE VALIDATE);

ALTER TABLE DIENTES.AUTH_USER_USER_PERMISSIONS ADD (
  PRIMARY KEY
  (ID)
  USING INDEX
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE,
  CONSTRAINT AUTH_USER_USER_ID_P_14A6B632_U
  UNIQUE (USER_ID, PERMISSION_ID)
  USING INDEX DIENTES.AUTH_USER_USER_ID_P_14A6B632_U
  ENABLE VALIDATE);

ALTER TABLE DIENTES.DJANGO_ADMIN_LOG ADD (
  CHECK ("ACTION_FLAG" >= 0)
  ENABLE VALIDATE,
  PRIMARY KEY
  (ID)
  USING INDEX
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE);

ALTER TABLE DIENTES.AUTH_GROUP_PERMISSIONS ADD (
  PRIMARY KEY
  (ID)
  USING INDEX
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE,
  CONSTRAINT AUTH_GROU_GROUP_ID__0CD325B0_U
  UNIQUE (GROUP_ID, PERMISSION_ID)
  USING INDEX DIENTES.AUTH_GROU_GROUP_ID__0CD325B0_U
  ENABLE VALIDATE);

ALTER TABLE DIENTES.AUTH_USER_GROUPS ADD (
  CONSTRAINT AUTH_USER_GROUP_ID_97559544_F 
  FOREIGN KEY (GROUP_ID) 
  REFERENCES DIENTES.
  DEFERRABLE INITIALLY DEFERRED
  ENABLE VALIDATE,
  CONSTRAINT AUTH_USER_USER_ID_6A12ED8B_F 
  FOREIGN KEY (USER_ID) 
  REFERENCES DIENTES.
  DEFERRABLE INITIALLY DEFERRED
  ENABLE VALIDATE);

ALTER TABLE DIENTES.AUTH_PERMISSION ADD (
  CONSTRAINT AUTH_PERM_CONTENT_T_2F476E4B_F 
  FOREIGN KEY (CONTENT_TYPE_ID) 
  REFERENCES DIENTES.
  DEFERRABLE INITIALLY DEFERRED
  ENABLE VALIDATE);

ALTER TABLE DIENTES.AUTH_USER_USER_PERMISSIONS ADD (
  CONSTRAINT AUTH_USER_PERMISSIO_1FBB5F2C_F 
  FOREIGN KEY (PERMISSION_ID) 
  REFERENCES DIENTES.
  DEFERRABLE INITIALLY DEFERRED
  ENABLE VALIDATE,
  CONSTRAINT AUTH_USER_USER_ID_A95EAD1B_F 
  FOREIGN KEY (USER_ID) 
  REFERENCES DIENTES.
  DEFERRABLE INITIALLY DEFERRED
  ENABLE VALIDATE);

ALTER TABLE DIENTES.DJANGO_ADMIN_LOG ADD (
  CONSTRAINT DJANGO_AD_CONTENT_T_C4BCE8EB_F 
  FOREIGN KEY (CONTENT_TYPE_ID) 
  REFERENCES DIENTES.
  DEFERRABLE INITIALLY DEFERRED
  ENABLE VALIDATE,
  CONSTRAINT DJANGO_AD_USER_ID_C564EBA6_F 
  FOREIGN KEY (USER_ID) 
  REFERENCES DIENTES.
  DEFERRABLE INITIALLY DEFERRED
  ENABLE VALIDATE);

ALTER TABLE DIENTES.AUTH_GROUP_PERMISSIONS ADD (
  CONSTRAINT AUTH_GROU_GROUP_ID_B120CBF9_F 
  FOREIGN KEY (GROUP_ID) 
  REFERENCES DIENTES.
  DEFERRABLE INITIALLY DEFERRED
  ENABLE VALIDATE,
  CONSTRAINT AUTH_GROU_PERMISSIO_84C5C92E_F 
  FOREIGN KEY (PERMISSION_ID) 
  REFERENCES DIENTES.
  DEFERRABLE INITIALLY DEFERRED
  ENABLE VALIDATE);
