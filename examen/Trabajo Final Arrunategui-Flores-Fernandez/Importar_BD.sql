--------------------------------------------------------
-- Archivo creado  - sábado-setiembre-22-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type REPCAT$_OBJECT_NULL_VECTOR
--------------------------------------------------------

  CREATE OR REPLACE TYPE "SYSTEM"."REPCAT$_OBJECT_NULL_VECTOR" AS OBJECT
(
  -- type owner, name, hashcode for the type represented by null_vector
  type_owner      VARCHAR2(30),
  type_name       VARCHAR2(30),
  type_hashcode   RAW(17),
  -- null_vector for a particular object instance
  -- ROBJ REVISIT: should only contain the null image, and not version#
  null_vector     RAW(2000)
)

/
--------------------------------------------------------
--  DDL for Sequence LOGMNR_EVOLVE_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_EVOLVE_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_UIDS$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_UIDS$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_GENERIC
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_GENERIC"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 50 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_ID"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_EXCEPTIONS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_EXCEPTIONS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_FLAVOR_NAME_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_FLAVOR_NAME_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_FLAVORS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_FLAVORS_S"  MINVALUE -2147483647 MAXVALUE 2147483647 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT_LOG_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT_LOG_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_REFRESH_TEMPLATES_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_REFRESH_TEMPLATES_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_REPPROP_KEY
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_REPPROP_KEY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_RUNTIME_PARMS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_RUNTIME_PARMS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_OBJECTS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_PARMS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_TEMPLATE_PARMS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_REFGROUPS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_SITES_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_TEMPLATE_SITES_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMP_OUTPUT_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_TEMP_OUTPUT_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_USER_AUTHORIZATIONS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_USER_PARM_VALUES_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_USER_PARM_VALUES_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TEMPLATE$_TARGETS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."TEMPLATE$_TARGETS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CATALOGO
--------------------------------------------------------

  CREATE TABLE "CUADRONECESIDADES"."CATALOGO" 
   (	"TIPO_BIEN" VARCHAR2(1 BYTE), 
	"GRUPO_BIEN" VARCHAR2(2 BYTE), 
	"CLASE_BIEN" VARCHAR2(2 BYTE), 
	"FAMILIA_BIEN" VARCHAR2(4 BYTE), 
	"ITEM_BIEN" VARCHAR2(4 BYTE), 
	"NOMBRE_ITEM" VARCHAR2(150 BYTE), 
	"UNIDAD_MEDIDA" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CENTRO_COSTO
--------------------------------------------------------

  CREATE TABLE "CUADRONECESIDADES"."CENTRO_COSTO" 
   (	"CENTRO_COSTO" VARCHAR2(15 BYTE), 
	"NOMBRE_DEPEND" VARCHAR2(100 BYTE), 
	"EMPLEADO" VARCHAR2(15 BYTE), 
	"NRO_PERSONAL" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CUADRO_NECESIDADES
--------------------------------------------------------

  CREATE TABLE "CUADRONECESIDADES"."CUADRO_NECESIDADES" 
   (	"ANO_EJE" NUMBER(4,0), 
	"CENTRO_COSTO" VARCHAR2(15 BYTE), 
	"TIPO_BIEN" VARCHAR2(1 BYTE), 
	"GRUPO_BIEN" VARCHAR2(2 BYTE), 
	"CLASE_BIEN" VARCHAR2(2 BYTE), 
	"FAMILIA_BIEN" VARCHAR2(4 BYTE), 
	"ITEM_BIEN" VARCHAR2(4 BYTE), 
	"UNIDAD_MEDIDA" NUMBER(3,0), 
	"PRECIO_UNIT" NUMBER(16,6), 
	"CANT_TOTAL" NUMBER(14,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPLEADO
--------------------------------------------------------

  CREATE TABLE "CUADRONECESIDADES"."EMPLEADO" 
   (	"EMPLEADO" VARCHAR2(15 BYTE), 
	"ESTADO" CHAR(1 BYTE), 
	"APELLIDO_PATERNO" VARCHAR2(30 BYTE), 
	"APELLIDO_MATERNO" VARCHAR2(30 BYTE), 
	"NOMBRES" VARCHAR2(40 BYTE), 
	"FECHA_INGRESO" DATE, 
	"ESTADO_CIVIL" VARCHAR2(1 BYTE), 
	"SEXO_EMPLEADO" VARCHAR2(1 BYTE), 
	"GRADO_INST" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UNIDAD_MEDIDA
--------------------------------------------------------

  CREATE TABLE "CUADRONECESIDADES"."UNIDAD_MEDIDA" 
   (	"UNIDAD_MEDIDA" NUMBER(3,0), 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"ESTADO" VARCHAR2(1 BYTE), 
	"ABREVIATURA" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View AQ$DEF$_AQCALL
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$DEF$_AQCALL" ("QUEUE", "MSG_ID", "CORR_ID", "MSG_PRIORITY", "MSG_STATE", "DELAY", "DELAY_TIMESTAMP", "EXPIRATION", "ENQ_TIME", "ENQ_TIMESTAMP", "ENQ_USER_ID", "ENQ_TXN_ID", "DEQ_TIME", "DEQ_TIMESTAMP", "DEQ_USER_ID", "DEQ_TXN_ID", "RETRY_COUNT", "EXCEPTION_QUEUE_OWNER", "EXCEPTION_QUEUE", "USER_DATA", "ORIGINAL_QUEUE_NAME", "ORIGINAL_QUEUE_OWNER", "EXPIRATION_REASON") AS 
  SELECT q_name QUEUE, msgid MSG_ID, corrid CORR_ID, priority MSG_PRIORITY, decode(state, 0,   'READY',
                                1,   'WAIT',
                                2,   'PROCESSED',
                                3,   'EXPIRED',
                                10,  'BUFFERED_EXPIRED') MSG_STATE, cast(FROM_TZ(delay, '00:00')
                  at time zone sessiontimezone as date) DELAY, cast(FROM_TZ(delay, '00:00')
               at time zone sessiontimezone as timestamp) DELAY_TIMESTAMP, expiration, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as date) ENQ_TIME, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  ENQ_TIMESTAMP, enq_uid ENQ_USER_ID, enq_tid ENQ_TXN_ID, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as date) DEQ_TIME, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  DEQ_TIMESTAMP, deq_uid DEQ_USER_ID, deq_tid DEQ_TXN_ID, retry_count,  decode (state, 0, exception_qschema, 
                                  1, exception_qschema, 
                                  2, exception_qschema,  
                                  NULL) EXCEPTION_QUEUE_OWNER,  decode (state, 0, exception_queue, 
                                  1, exception_queue, 
                                  2, exception_queue,  
                                  NULL) EXCEPTION_QUEUE,  user_data,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_queue), NULL)
                                ORIGINAL_QUEUE_NAME,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_qschema), NULL)
                                ORIGINAL_QUEUE_OWNER,  decode(state, 3, 
                     decode(deq_time, NULL, 
                       decode(deq_tid, NULL,
                       decode (expiration , NULL , 'MAX_RETRY_EXCEEDED',
                            'TIME_EXPIRATION'),
                              'INVALID_TRANSACTION', NULL,
                              'MAX_RETRY_EXCEEDED'), NULL), NULL) 
                             EXPIRATION_REASON  FROM "DEF$_AQCALL" WHERE state != 7 AND   state != 9 WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View AQ$_DEF$_AQCALL_F
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$_DEF$_AQCALL_F" ("Q_NAME", "ROW_ID", "MSGID", "CORRID", "PRIORITY", "STATE", "DELAY", "EXPIRATION", "ENQ_TIME", "ENQ_UID", "ENQ_TID", "DEQ_TIME", "DEQ_UID", "DEQ_TID", "RETRY_COUNT", "EXCEPTION_QSCHEMA", "EXCEPTION_QUEUE", "CSCN", "DSCN", "CHAIN_NO", "LOCAL_ORDER_NO", "TIME_MANAGER_INFO", "STEP_NO", "USER_DATA", "QUEUE_ID") AS 
  SELECT  /*+ NO_MERGE (qo) USE_NL(qt) */ qt.q_name Q_NAME, qt.rowid ROW_ID, qt.msgid MSGID, qt.corrid CORRID, qt.priority PRIORITY, qt.state STATE, cast(FROM_TZ(qt.delay, '00:00') at time zone sessiontimezone as timestamp) DELAY, qt.expiration EXPIRATION, cast(FROM_TZ(qt.enq_time, '00:00') at time zone sessiontimezone as timestamp) ENQ_TIME, qt.enq_uid ENQ_UID, qt.enq_tid ENQ_TID, cast(FROM_TZ(qt.deq_time, '00:00') at time zone sessiontimezone as timestamp) DEQ_TIME, qt.deq_uid DEQ_UID, qt.deq_tid DEQ_TID, qt.retry_count RETRY_COUNT, qt.exception_qschema EXCEPTION_QSCHEMA, qt.exception_queue EXCEPTION_QUEUE, qt.cscn CSCN, qt.dscn DSCN, qt.chain_no CHAIN_NO, qt.local_order_no LOCAL_ORDER_NO, cast(FROM_TZ(qt.time_manager_info, '00:00') at time zone sessiontimezone as timestamp)   TIME_MANAGER_INFO, qt.step_no STEP_NO, qt.user_data USER_DATA , qo.qid QUEUE_ID  FROM "DEF$_AQCALL" qt, SYS.ALL_INT_DEQUEUE_QUEUES  qo  WHERE qt.q_name = qo.name AND qo.owner = 'SYSTEM' WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View AQ$DEF$_AQERROR
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$DEF$_AQERROR" ("QUEUE", "MSG_ID", "CORR_ID", "MSG_PRIORITY", "MSG_STATE", "DELAY", "DELAY_TIMESTAMP", "EXPIRATION", "ENQ_TIME", "ENQ_TIMESTAMP", "ENQ_USER_ID", "ENQ_TXN_ID", "DEQ_TIME", "DEQ_TIMESTAMP", "DEQ_USER_ID", "DEQ_TXN_ID", "RETRY_COUNT", "EXCEPTION_QUEUE_OWNER", "EXCEPTION_QUEUE", "USER_DATA", "ORIGINAL_QUEUE_NAME", "ORIGINAL_QUEUE_OWNER", "EXPIRATION_REASON") AS 
  SELECT q_name QUEUE, msgid MSG_ID, corrid CORR_ID, priority MSG_PRIORITY, decode(state, 0,   'READY',
                                1,   'WAIT',
                                2,   'PROCESSED',
                                3,   'EXPIRED',
                                10,  'BUFFERED_EXPIRED') MSG_STATE, cast(FROM_TZ(delay, '00:00')
                  at time zone sessiontimezone as date) DELAY, cast(FROM_TZ(delay, '00:00')
               at time zone sessiontimezone as timestamp) DELAY_TIMESTAMP, expiration, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as date) ENQ_TIME, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  ENQ_TIMESTAMP, enq_uid ENQ_USER_ID, enq_tid ENQ_TXN_ID, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as date) DEQ_TIME, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  DEQ_TIMESTAMP, deq_uid DEQ_USER_ID, deq_tid DEQ_TXN_ID, retry_count,  decode (state, 0, exception_qschema, 
                                  1, exception_qschema, 
                                  2, exception_qschema,  
                                  NULL) EXCEPTION_QUEUE_OWNER,  decode (state, 0, exception_queue, 
                                  1, exception_queue, 
                                  2, exception_queue,  
                                  NULL) EXCEPTION_QUEUE,  user_data,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_queue), NULL)
                                ORIGINAL_QUEUE_NAME,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_qschema), NULL)
                                ORIGINAL_QUEUE_OWNER,  decode(state, 3, 
                     decode(deq_time, NULL, 
                       decode(deq_tid, NULL,
                       decode (expiration , NULL , 'MAX_RETRY_EXCEEDED',
                            'TIME_EXPIRATION'),
                              'INVALID_TRANSACTION', NULL,
                              'MAX_RETRY_EXCEEDED'), NULL), NULL) 
                             EXPIRATION_REASON  FROM "DEF$_AQERROR" WHERE state != 7 AND   state != 9 WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View AQ$_DEF$_AQERROR_F
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$_DEF$_AQERROR_F" ("Q_NAME", "ROW_ID", "MSGID", "CORRID", "PRIORITY", "STATE", "DELAY", "EXPIRATION", "ENQ_TIME", "ENQ_UID", "ENQ_TID", "DEQ_TIME", "DEQ_UID", "DEQ_TID", "RETRY_COUNT", "EXCEPTION_QSCHEMA", "EXCEPTION_QUEUE", "CSCN", "DSCN", "CHAIN_NO", "LOCAL_ORDER_NO", "TIME_MANAGER_INFO", "STEP_NO", "USER_DATA", "QUEUE_ID") AS 
  SELECT  /*+ NO_MERGE (qo) USE_NL(qt) */ qt.q_name Q_NAME, qt.rowid ROW_ID, qt.msgid MSGID, qt.corrid CORRID, qt.priority PRIORITY, qt.state STATE, cast(FROM_TZ(qt.delay, '00:00') at time zone sessiontimezone as timestamp) DELAY, qt.expiration EXPIRATION, cast(FROM_TZ(qt.enq_time, '00:00') at time zone sessiontimezone as timestamp) ENQ_TIME, qt.enq_uid ENQ_UID, qt.enq_tid ENQ_TID, cast(FROM_TZ(qt.deq_time, '00:00') at time zone sessiontimezone as timestamp) DEQ_TIME, qt.deq_uid DEQ_UID, qt.deq_tid DEQ_TID, qt.retry_count RETRY_COUNT, qt.exception_qschema EXCEPTION_QSCHEMA, qt.exception_queue EXCEPTION_QUEUE, qt.cscn CSCN, qt.dscn DSCN, qt.chain_no CHAIN_NO, qt.local_order_no LOCAL_ORDER_NO, cast(FROM_TZ(qt.time_manager_info, '00:00') at time zone sessiontimezone as timestamp)   TIME_MANAGER_INFO, qt.step_no STEP_NO, qt.user_data USER_DATA , qo.qid QUEUE_ID  FROM "DEF$_AQERROR" qt, SYS.ALL_INT_DEQUEUE_QUEUES  qo  WHERE qt.q_name = qo.name AND qo.owner = 'SYSTEM' WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View MVIEW_EVALUATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_EVALUATIONS" ("RUNID", "MVIEW_OWNER", "MVIEW_NAME", "RANK", "STORAGE_IN_BYTES", "FREQUENCY", "CUMULATIVE_BENEFIT", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  summary_owner AS mview_owner,
  summary_name AS mview_name,
  rank# as rank,
  storage_in_bytes,
  frequency,
  cumulative_benefit,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 1
order by t1.rank#;

   COMMENT ON TABLE "SYSTEM"."MVIEW_EVALUATIONS"  IS 'This view gives DBA access to summary evaluation output'
;
--------------------------------------------------------
--  DDL for View MVIEW_EXCEPTIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_EXCEPTIONS" ("RUNID", "OWNER", "TABLE_NAME", "DIMENSION_NAME", "RELATIONSHIP", "BAD_ROWID") AS 
  select
  t1.runid# as runid,
  owner,
  table_name,
  dimension_name,
  relationship,
  bad_rowid
from SYSTEM.MVIEW$_ADV_EXCEPTIONS t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_EXCEPTIONS"  IS 'This view gives DBA access to dimension validation results'
;
--------------------------------------------------------
--  DDL for View MVIEW_FILTER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_FILTER" ("FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filter a, system.mview$_adv_log b, ALL_USERS u
   WHERE a.filterid# = b.runid#
   AND b.uname = u.username
   AND u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_FILTER"  IS 'Workload filter records'
;
--------------------------------------------------------
--  DDL for View MVIEW_FILTERINSTANCE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_FILTERINSTANCE" ("RUNID", "FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.runid# as runid,
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filterinstance a;

   COMMENT ON TABLE "SYSTEM"."MVIEW_FILTERINSTANCE"  IS 'Workload filter instance records'
;
--------------------------------------------------------
--  DDL for View MVIEW_LOG
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_LOG" ("ID", "FILTERID", "RUN_BEGIN", "RUN_END", "TYPE", "STATUS", "MESSAGE", "COMPLETED", "TOTAL", "ERROR_CODE") AS 
  select
      m.runid# as id,
      m.filterid# as filterid,
      m.run_begin,
      m.run_end,
      decode(m.run_type,1,'EVALUATE',2,'EVALUATE_W',3,'RECOMMEND',
                      4,'RECOMMEND_W',5,'VALIDATE',6,'WORKLOAD',
                      7,'FILTER','UNKNOWN') AS type,
      decode(m.status,0,'UNUSED',1,'CANCELLED',2,'IN_PROGRESS',3,'COMPLETED',
                    4,'ERROR','UNKNOWN') AS status,
      m.message,
      m.completed,
      m.total,
      m.error_code
   from system.mview$_adv_log m, all_users u
   where m.uname = u.username
   and   u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_LOG"  IS 'Advisor session log'
;
--------------------------------------------------------
--  DDL for View MVIEW_RECOMMENDATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_RECOMMENDATIONS" ("RUNID", "ALL_TABLES", "FACT_TABLES", "GROUPING_LEVELS", "QUERY_TEXT", "RECOMMENDATION_NUMBER", "RECOMMENDED_ACTION", "MVIEW_OWNER", "MVIEW_NAME", "STORAGE_IN_BYTES", "PCT_PERFORMANCE_GAIN", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  t1.from_clause as all_tables,
  fact_tables,
  grouping_levels,
  query_text,
  rank# as recommendation_number,
  action_type as recommended_action,
  summary_owner as mview_owner,
  summary_name as mview_name,
  storage_in_bytes,
  pct_performance_gain,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 0
order by t1.rank#;

   COMMENT ON TABLE "SYSTEM"."MVIEW_RECOMMENDATIONS"  IS 'This view gives DBA access to summary recommendations'
;
--------------------------------------------------------
--  DDL for View MVIEW_WORKLOAD
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_WORKLOAD" ("WORKLOADID", "IMPORT_TIME", "QUERYID", "APPLICATION", "CARDINALITY", "RESULTSIZE", "LASTUSE", "FREQUENCY", "OWNER", "PRIORITY", "QUERY", "RESPONSETIME") AS 
  select
  a.collectionid# as workloadid,
  a.collecttime as import_time,
  a.queryid# as queryid,
  a.application,
  a.cardinality,
  a.resultsize,
  a.qdate as lastuse,
  a.frequency,
  a.uname as owner,
  a.priority,
  a.sql_text as query,
  a.exec_time as responsetime
from SYSTEM.MVIEW$_ADV_WORKLOAD A, SYSTEM.MVIEW$_ADV_LOG B, ALL_USERS D
WHERE a.collectionid# = b.runid#
AND b.uname = d.username
AND d.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_WORKLOAD"  IS 'This view gives DBA access to shared workload'
;
--------------------------------------------------------
--  DDL for View PRODUCT_PRIVS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."PRODUCT_PRIVS" ("PRODUCT", "USERID", "ATTRIBUTE", "SCOPE", "NUMERIC_VALUE", "CHAR_VALUE", "DATE_VALUE", "LONG_VALUE") AS 
  SELECT PRODUCT, USERID, ATTRIBUTE, SCOPE,
         NUMERIC_VALUE, CHAR_VALUE, DATE_VALUE, LONG_VALUE
  FROM SQLPLUS_PRODUCT_PROFILE
  WHERE USERID = 'PUBLIC' OR USER LIKE USERID
;
REM INSERTING into CUADRONECESIDADES.CATALOGO
SET DEFINE OFF;
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','49','57','0003','0033','AGUJA HIPODERMICA DESCARTABLE Nº 18 G X 1 1/2 in',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','49','55','0001','0472','GORRO DESCARTABLE DE ENFERMERA',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','71','72','0005','0230','PAPEL BOND DE 75 g TAMAÑO A4 DE COLOR',452);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','71','60','0001','0001','BOLÍGRAFO (LAPICERO) DE TINTA LÍQUIDA PUNTA FINA COLOR  NEGRO',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','71','60','0001','0210','BOLIGRAFO (LAPICERO) DE TINTA SECA PUNTA FINA COLOR AZUL',449);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','47','51','0001','5201','FORMATO SOLICITUD ANALISIS HEMOTERAPIA Y BANCO DE SANGRE',350);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','47','51','0001','5037','FORMATO SOLICITUD DE ANALISIS DE LABORATORIO X 100',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','49','57','0007','0005','ALGODÓN HIDRÓFILO X 500 g',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','71','50','0012','0010','PERFORADOR DE 2 ESPIGAS PARA 15 A 20 HOJAS',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','35','38','0001','0019','ALCOHOL ETILICO (ETANOL) 70º X 1 L',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','47','51','0001','5981','FORMATO PAPELETA DE HOSPITALIZACION',350);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','71','72','0005','0013','PAPEL BOND 80 g TAMAÑO A4',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','49','57','0129','0041','EQUIPO DE TRANSFUSION DE SANGRE',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','47','51','0001','6872','FORMATO INDICACIONES ENDOSCOPIA Y CIRUGIA MENOR',350);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','47','51','0001','5330','FORMATO INTERCONSULTA',350);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','47','51','0001','6238','FORMATO DE EXAMEN CLINICO',350);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','47','51','0001','6853','FORMATO SOLICITUD SALA DE OPERACIONES',350);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','49','55','0001','0086','BOTA DESCARTABLE PARA CIRUJANO ANTIDESLIZANTE',353);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','89','96','0012','0102','UNIFORME DE INVIERNO PARA CABALLERO',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','28','54','0011','0026','LINTERNA DE MANO PEQUEÑA',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','89','96','0012','0103','UNIFORME DE INVIERNO PARA DAMA',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','49','51','0009','1925','PINZA DE BIOPSIA MANDIBULA DE COCODRILO FENESTRADA 10.5cm',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','89','96','0012','2034','BATA DE BRAMANTE MANGA CORTA UNISEX TALLA L COLOR BLANCO',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','47','51','0001','7988','FORMATO PARA BANCO DE SANGRE',350);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','74','64','3712','0033','ESCRITORIO DE MADERA DE 3 GAVETAS',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','89','96','0012','1602','UNIFORME DE VESTIR DE VERANO PARA CABALLERO',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','76','74','0004','0005','CD REGRABABLE DE 700 MB',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','50','33','0025','0039','CINTA DE EMBALAJE 2 in X 55 yd',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','49','51','0009','2047','PINZA DE BIOPSIA MANDIBULA DE COCODRILO DE LONGITUD DE TRABAJO 155 cm',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','71','60','0006','0381','PLUMON MARCADOR DE TINTA AL AGUA PUNTA GRUESA',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','51','20','0015','0102','FRASCO DE PLASTICO BOCA ANCHA X 100 mL CON TAPA X 100',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','76','74','0006','1139','TONER DE IMPRESION PARA HP COD. REF. CE410A NEGRO',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','89','96','0012','1916','BATA DE DRIL UNISEX',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','44','36','0012','0008','MICA PARA ANILLAR TIPO CATEDRAL TAMAÑO OFICIO',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','71','72','0005','0013','PAPEL BOND 80 g TAMAÑO A4',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','49','57','0011','0029','BAJALENGUA DE MADERA ADULTO X 500',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','89','96','0012','1601','UNIFORME DE VESTIR DE VERANO PARA DAMA',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','47','51','0001','6797','FORMATO RECETARIO MEDICO ESTANDARIZADO (BLOCK X 100 HOJAS)',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','13','92','0016','0229','PAPEL TOALLA DE 25.10 cm X 24.5 cm X 175 HOJAS',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','71','60','0006','0385','PLUMON RESALTADOR PUNTA MEDIANA BISELADA',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','71','72','0003','0039','CUADERNO RAYADO TAMAÑO A4 X 100 HOJAS',112);
Insert into CUADRONECESIDADES.CATALOGO (TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,NOMBRE_ITEM,UNIDAD_MEDIDA) values ('B','49','70','0002','0879','CONTENEDOR DE ACERO QUIRURGICO 20 cm X 14 cm X 5 cm',112);
REM INSERTING into CUADRONECESIDADES.CENTRO_COSTO
SET DEFINE OFF;
Insert into CUADRONECESIDADES.CENTRO_COSTO (CENTRO_COSTO,NOMBRE_DEPEND,EMPLEADO,NRO_PERSONAL) values ('1.9.10.13','CONSULTA EXTERNA EN MEDICINA ONCOLOGICA','00246',0);
Insert into CUADRONECESIDADES.CENTRO_COSTO (CENTRO_COSTO,NOMBRE_DEPEND,EMPLEADO,NRO_PERSONAL) values ('1.9.10.8','CONSULTA EXTERNA EN UROLOGIA','00040',0);
Insert into CUADRONECESIDADES.CENTRO_COSTO (CENTRO_COSTO,NOMBRE_DEPEND,EMPLEADO,NRO_PERSONAL) values ('1.1.2','IMAGEN INSTITUCIONAL','00110',1);
Insert into CUADRONECESIDADES.CENTRO_COSTO (CENTRO_COSTO,NOMBRE_DEPEND,EMPLEADO,NRO_PERSONAL) values ('1.5.2','EPIDEMIOLOGIA Y ESTADISTICA','275',6);
Insert into CUADRONECESIDADES.CENTRO_COSTO (CENTRO_COSTO,NOMBRE_DEPEND,EMPLEADO,NRO_PERSONAL) values ('1.5.6','NORMATIVIDAD','00044',0);
Insert into CUADRONECESIDADES.CENTRO_COSTO (CENTRO_COSTO,NOMBRE_DEPEND,EMPLEADO,NRO_PERSONAL) values ('1.7.2.3','PROCEDIMIENTOS DIAGNOSTICOS Y TERAPEUTICOS DE GASTROENTEROLOGIA','00059',0);
Insert into CUADRONECESIDADES.CENTRO_COSTO (CENTRO_COSTO,NOMBRE_DEPEND,EMPLEADO,NRO_PERSONAL) values ('1.8.10','ANESTESIOLOGIA','00186',0);
REM INSERTING into CUADRONECESIDADES.CUADRO_NECESIDADES
SET DEFINE OFF;
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2019,'01.12.05','B','60','22','8762','0041',112,750,1);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2019,'01.12.05','B','53','64','2525','0035',112,2900,1);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2019,'01.12.05','B','53','64','3096','0022',112,253,1);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2019,'01.12.05','B','47','51','0001','8041',112,4,4);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2019,'01.12.05','B','47','51','0001','5332',350,110,4);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2019,'01.12.05','B','47','51','0001','5362',350,71,5);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2019,'01.12.05','B','47','51','0001','6797',112,6,20);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2019,'01.06.03','B','20','34','0012','0177',349,40,100);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2019,'01.06.03','B','13','30','0007','0037',346,20.25,40);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2019,'01.06.03','B','13','30','0001','0002',112,7,100);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2017,'1.7.3.2','B','49','57','0035','0303',112,3.5,84);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2017,'1.7.3.2','B','49','51','0011','0177',112,380,2);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2017,'1.7.3.2','B','49','51','0013','0115',112,54.81,2);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2017,'1.7.3.2','B','49','57','0038','0019',112,1.19,294);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2017,'1.7.3.2','B','49','57','0041','0105',112,7.5,50);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2017,'1.7.3.2','B','49','70','0002','0204',112,95,3);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2017,'1.7.3.2','B','49','70','0002','0251',112,19.95,80);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2017,'1.7.3.2','B','49','57','0027','0229',112,11.39,68);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2017,'1.7.3.2','B','49','57','0029','0004',353,0.78,126);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.13','B','13','92','0016','0229',112,7,100);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.13','B','28','54','0011','0026',112,48,2);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.13','B','89','96','0012','0103',112,890,2);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.8','B','47','51','0001','6853',350,18,6);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.13','B','89','96','0012','0102',112,874,2);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.13','B','89','96','0012','1601',112,580.02,2);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.13','B','89','96','0012','1602',112,290,2);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.13','B','89','96','0012','2034',112,24.5,25);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.8','B','47','51','0001','5037',112,23.8,100);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.13','B','89','96','0012','1916',112,35,25);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.1.2','B','71','60','0001','0001',112,4,24);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.5.2','S','02','12','0001','0013',107,1,6414);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.5.6','B','76','74','0004','0005',112,1.65,100);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.8','B','47','51','0001','5201',350,18,4);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.1.2','B','71','72','0003','0039',112,3,2);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.8','B','47','51','0001','6872',350,18,6);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.1.2','B','50','33','0025','0039',112,2.5,12);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.8','B','47','51','0001','6797',112,6,100);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.8','B','49','57','0129','0041',112,2,40);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.8','B','49','57','0003','0033',112,0.0545,186);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.5.2','S','60','65','0026','0053',107,1,4500);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.8','B','47','51','0001','5981',350,60,4);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.1.2','B','44','36','0012','0008',112,0.21,25);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.8','B','71','60','0001','0210',449,21,4);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.5.6','B','76','74','0006','1139',112,295.2832,6);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.5.2','S','70','10','0004','0026',107,1,1000);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.5.2','S','50','01','0005','0561',107,1,1000);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.5.2','S','60','60','0002','0002',107,1,1000);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.8','B','47','51','0001','7988',350,48,6);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.8','B','71','60','0001','0210',449,21,2);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.8','B','47','51','0001','6238',112,52,2);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.9.10.8','B','47','51','0001','5330',350,60,2);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.5.6','B','74','64','3712','0033',112,450,2);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.7.2.3','B','35','38','0001','0019',112,6.47,11);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.7.2.3','B','49','55','0001','0086',112,10.2,760);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.7.2.3','B','49','55','0001','0472',112,0.0845,190);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.7.2.3','B','49','51','0009','1925',112,1683,12);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.7.2.3','B','49','70','0002','0879',112,65,6);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.7.2.3','B','51','20','0015','0102',112,0.35,2);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.7.2.3','B','49','57','0007','0005',112,13.8,1);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.7.2.3','B','49','51','0009','2047',112,2000,12);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.8.10','B','71','72','0005','0013',350,100,20);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.8.10','B','71','72','0005','0230',452,15.37,5);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.5.2','B','71','50','0012','0010',112,13,3);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.5.2','B','71','60','0006','0381',112,1.2771,10);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.5.2','B','71','72','0005','0013',350,100,6);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.5.2','B','71','60','0006','0385',112,3,12);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.8.10','B','49','57','0011','0029',112,18.25,5);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2018,'1.5.2','B','76','74','0006','1139',112,295.2832,4);
Insert into CUADRONECESIDADES.CUADRO_NECESIDADES (ANO_EJE,CENTRO_COSTO,TIPO_BIEN,GRUPO_BIEN,CLASE_BIEN,FAMILIA_BIEN,ITEM_BIEN,UNIDAD_MEDIDA,PRECIO_UNIT,CANT_TOTAL) values (2017,'1.7.3.2','B','49','70','0002','0374',112,28,3);
REM INSERTING into CUADRONECESIDADES.EMPLEADO
SET DEFINE OFF;
Insert into CUADRONECESIDADES.EMPLEADO (EMPLEADO,ESTADO,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_INGRESO,ESTADO_CIVIL,SEXO_EMPLEADO,GRADO_INST) values ('00099','A','TORRES','ARMAS','EDUARDO',null,'S','M',null);
Insert into CUADRONECESIDADES.EMPLEADO (EMPLEADO,ESTADO,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_INGRESO,ESTADO_CIVIL,SEXO_EMPLEADO,GRADO_INST) values ('00100','I','MIRANDA','BARRIOS','JACQUELINE',null,'S','M',null);
Insert into CUADRONECESIDADES.EMPLEADO (EMPLEADO,ESTADO,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_INGRESO,ESTADO_CIVIL,SEXO_EMPLEADO,GRADO_INST) values ('00102','A','GARCIA','TELLO','NOEMI',null,'S','M','G');
Insert into CUADRONECESIDADES.EMPLEADO (EMPLEADO,ESTADO,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_INGRESO,ESTADO_CIVIL,SEXO_EMPLEADO,GRADO_INST) values ('00108','I','AGUILAR','VASQUEZ','VALERIA',null,'S','F',null);
Insert into CUADRONECESIDADES.EMPLEADO (EMPLEADO,ESTADO,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_INGRESO,ESTADO_CIVIL,SEXO_EMPLEADO,GRADO_INST) values ('00242','A','PAREDES','RUIZ','SAIRA',to_date('09/02/12','DD/MM/RR'),'S','F','O');
Insert into CUADRONECESIDADES.EMPLEADO (EMPLEADO,ESTADO,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_INGRESO,ESTADO_CIVIL,SEXO_EMPLEADO,GRADO_INST) values ('00146','A','FUENTES','PALMA','VERONICA MARISOL',to_date('27/08/10','DD/MM/RR'),'S','F','T');
Insert into CUADRONECESIDADES.EMPLEADO (EMPLEADO,ESTADO,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_INGRESO,ESTADO_CIVIL,SEXO_EMPLEADO,GRADO_INST) values ('00159','I','CHAMAN','CARRANZA','CARLOS',to_date('07/09/10','DD/MM/RR'),'C','M','O');
Insert into CUADRONECESIDADES.EMPLEADO (EMPLEADO,ESTADO,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_INGRESO,ESTADO_CIVIL,SEXO_EMPLEADO,GRADO_INST) values ('00213','I','GUEVARA','VALVERDE','MARLENE',to_date('04/08/11','DD/MM/RR'),'C','F',null);
Insert into CUADRONECESIDADES.EMPLEADO (EMPLEADO,ESTADO,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_INGRESO,ESTADO_CIVIL,SEXO_EMPLEADO,GRADO_INST) values ('00162','A','ASENCIO','FERNANDEZ','BETTY ELIZABETH',to_date('20/09/10','DD/MM/RR'),'S','F','T');
Insert into CUADRONECESIDADES.EMPLEADO (EMPLEADO,ESTADO,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_INGRESO,ESTADO_CIVIL,SEXO_EMPLEADO,GRADO_INST) values ('00163','A','DE LA CRUZ','MONTOYA','JULIA TATIANA',to_date('20/09/10','DD/MM/RR'),'S','F',null);
Insert into CUADRONECESIDADES.EMPLEADO (EMPLEADO,ESTADO,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_INGRESO,ESTADO_CIVIL,SEXO_EMPLEADO,GRADO_INST) values ('00164','A','RODRIGUEZ','FAJARDO','ROBERTO ROGER',to_date('11/10/10','DD/MM/RR'),'S','M','T');
Insert into CUADRONECESIDADES.EMPLEADO (EMPLEADO,ESTADO,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_INGRESO,ESTADO_CIVIL,SEXO_EMPLEADO,GRADO_INST) values ('00165','A','HORNA','ESPINOZA','JORGE JULIO',to_date('13/10/10','DD/MM/RR'),'S','M',null);
Insert into CUADRONECESIDADES.EMPLEADO (EMPLEADO,ESTADO,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_INGRESO,ESTADO_CIVIL,SEXO_EMPLEADO,GRADO_INST) values ('00166','A','TOCTO','SANCHEZ','JESSICA ELENA',to_date('14/10/10','DD/MM/RR'),'S','M',null);
Insert into CUADRONECESIDADES.EMPLEADO (EMPLEADO,ESTADO,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_INGRESO,ESTADO_CIVIL,SEXO_EMPLEADO,GRADO_INST) values ('00167','A','ASTIGUETA','PEREZ','JUAN CARLOS ARTURO',to_date('09/11/10','DD/MM/RR'),'S','M',null);
REM INSERTING into CUADRONECESIDADES.UNIDAD_MEDIDA
SET DEFINE OFF;
Insert into CUADRONECESIDADES.UNIDAD_MEDIDA (UNIDAD_MEDIDA,NOMBRE,ESTADO,ABREVIATURA) values (112,'UNIDAD','A','UNIDAD');
Insert into CUADRONECESIDADES.UNIDAD_MEDIDA (UNIDAD_MEDIDA,NOMBRE,ESTADO,ABREVIATURA) values (350,'MILLAR','A','MILLAR');
Insert into CUADRONECESIDADES.UNIDAD_MEDIDA (UNIDAD_MEDIDA,NOMBRE,ESTADO,ABREVIATURA) values (449,'EMPAQUE X 50','A','EMP X 50');
Insert into CUADRONECESIDADES.UNIDAD_MEDIDA (UNIDAD_MEDIDA,NOMBRE,ESTADO,ABREVIATURA) values (452,'EMPAQUE X 500','A','EMP X 500');
Insert into CUADRONECESIDADES.UNIDAD_MEDIDA (UNIDAD_MEDIDA,NOMBRE,ESTADO,ABREVIATURA) values (107,'SERVICIO','A','SERVICIO');
--------------------------------------------------------
--  DDL for Procedure ORA$_SYS_REP_AUTH
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."ORA$_SYS_REP_AUTH" as
begin
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.repcat$_repschema TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.repcat$_repprop TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_aqcall TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_calldest TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_error TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_destination TO SYS ' ||
                 'WITH GRANT OPTION';
end;

/
--------------------------------------------------------
--  DDL for Package DBMS_REPCAT_AUTH
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "SYSTEM"."DBMS_REPCAT_AUTH" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
9
bf d6
0cfc6e4Sm6mfaMYwsbW2JygBepcwg/BKmJ4VZy/pO06UXsVUMejsissTcGWYR4qeK4TPqfDK
q7UPH+SmKP6nW9zmxMZnuK1VDzM0Iv9O4E4SvvsnHWn+EPF9hR+oBFe3fEro6RQ5R5Ejd1nr
e+fAK010dExf76gg/c6ZB3YxGPHDOqkGI4lV6HNsd57gKLwTd0bxan5UwJriIpt7Vjc=

/
--------------------------------------------------------
--  DDL for Package Body DBMS_REPCAT_AUTH
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "SYSTEM"."DBMS_REPCAT_AUTH" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
b
b9d 39c
PBMGkNCh5NDAdLezCHsLvZaVi/swg5UrNSCDfI4Zvp0VB6GpRld+By6E2nVdlFHT2g2kK9zM
8jSnsuee7mkmJD+W3Mo36HQvUfOe7jH5vP7tu1i0jDykzR0pUhJZUcY6xVrSwNPoNVPcT72N
eHhGwyRBj2+0vKbgTmcZKBMJzETRfOl2YGDDVB3FvKBSixMMqfWSX8uh3wPGOi8W9vOASC3z
0UvPqL7KR78SykUEoBCxpMGmE8pgElC/dagmVpIIt7QA6sneMlNb2OO/1zTN44ACRsm+2JAo
zD41TcuGaNUqDYNDRbPEKzeRZeXxrx1UvOWsYTNaO6icaV/NrtZbmXpDuGA/sqnz4jnKFK8S
0VC+Yjh2iJEV5edD2+8pyMgx44NVDiAQ+sjjDkpGc0IxXrm/v52yduhnj/xnkualIm/RyAv0
Q/YzRAHy7NvyavbajIvCFoZWpbO3Jw8NwkoU25ysfgvXZJrw4vPjh4hHR4Mpto6jFMM+dZPW
3N9HL971bTBgyAL0BjASEFXe83D+IoBYX0VQVk5+t7p7iUsmfyK5t+cECNpNOL6UaACcsAYB
Le+yLOAqFHSvCXlWcECxG7wXjAA2/XmBwvKBNLcggXKVp3i9cNzab0Mq9qSAcIYgRFxRdAOe
sTDZNOx6HkJTbCRKCMiJzgjQQW476DlOZD+9Gwh+AA/Y3PIDOfyhlvXT6HsjW33mASJUuORB
la5Jb3rB4syO6QO2a5vSHu26Gwib2EflS8bqC1hZhpHsvM+mAaWJ2x72JyrPe8V7Ohjbre49
gRsjAtspIYfP5958sSnHdkz32nGAXnrEY95lEHGwkuXLlj9y6I21aAyd3/lJkuEAEBxzZVnm
IaNJBwl8u33+SqGLZzILy1QxmA+pF8yUaQ+yRU/5+3n1mY4=

/
--------------------------------------------------------
--  DDL for Synonymn CATALOG
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."CATALOG" FOR "SYS"."CATALOG";
--------------------------------------------------------
--  DDL for Synonymn COL
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."COL" FOR "SYS"."COL";
--------------------------------------------------------
--  DDL for Synonymn PRODUCT_USER_PROFILE
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."PRODUCT_USER_PROFILE" FOR "SYSTEM"."SQLPLUS_PRODUCT_PROFILE";
--------------------------------------------------------
--  DDL for Synonymn PUBLICSYN
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."PUBLICSYN" FOR "SYS"."PUBLICSYN";
--------------------------------------------------------
--  DDL for Synonymn SYSCATALOG
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."SYSCATALOG" FOR "SYS"."SYSCATALOG";
--------------------------------------------------------
--  DDL for Synonymn SYSFILES
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."SYSFILES" FOR "SYS"."SYSFILES";
--------------------------------------------------------
--  DDL for Synonymn TAB
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."TAB" FOR "SYS"."TAB";
--------------------------------------------------------
--  DDL for Synonymn TABQUOTAS
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."TABQUOTAS" FOR "SYS"."TABQUOTAS";
--------------------------------------------------------
--  DDL for Queue DEF$_AQERROR
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE(
     Queue_name          => 'SYSTEM.DEF$_AQERROR',
     Queue_table         => 'SYSTEM.DEF$_AQERROR',
     Queue_type          =>  0,
     Max_retries         =>  5,
     Retry_delay         =>  0,
     dependency_tracking =>  TRUE,
     comment             => 'Error Queue for Deferred RPCs');
  END;
/
--------------------------------------------------------
--  DDL for Queue DEF$_AQCALL
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE(
     Queue_name          => 'SYSTEM.DEF$_AQCALL',
     Queue_table         => 'SYSTEM.DEF$_AQCALL',
     Queue_type          =>  0,
     Max_retries         =>  5,
     Retry_delay         =>  0,
     dependency_tracking =>  TRUE,
     comment             => 'Deferred RPC Queue');
  END;
/
--------------------------------------------------------
--  DDL for Queue Table DEF$_AQCALL
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE_TABLE(
     Queue_table        => '"SYSTEM"."DEF$_AQCALL"',
     Queue_payload_type => 'VARIANT',
     storage_clause     => 'PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 TABLESPACE SYSTEM',
     Sort_list          => 'ENQ_TIME',
     Compatible         => '8.0.3');
  END;
/
--------------------------------------------------------
--  DDL for Queue Table DEF$_AQERROR
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE_TABLE(
     Queue_table        => '"SYSTEM"."DEF$_AQERROR"',
     Queue_payload_type => 'VARIANT',
     storage_clause     => 'PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 TABLESPACE SYSTEM',
     Sort_list          => 'ENQ_TIME',
     Compatible         => '8.0.3');
  END;
/
--------------------------------------------------------
--  Constraints for Table CATALOGO
--------------------------------------------------------

  ALTER TABLE "CUADRONECESIDADES"."CATALOGO" MODIFY ("NOMBRE_ITEM" NOT NULL ENABLE);
  ALTER TABLE "CUADRONECESIDADES"."CATALOGO" MODIFY ("ITEM_BIEN" NOT NULL ENABLE);
  ALTER TABLE "CUADRONECESIDADES"."CATALOGO" MODIFY ("FAMILIA_BIEN" NOT NULL ENABLE);
  ALTER TABLE "CUADRONECESIDADES"."CATALOGO" MODIFY ("CLASE_BIEN" NOT NULL ENABLE);
  ALTER TABLE "CUADRONECESIDADES"."CATALOGO" MODIFY ("GRUPO_BIEN" NOT NULL ENABLE);
  ALTER TABLE "CUADRONECESIDADES"."CATALOGO" MODIFY ("TIPO_BIEN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CENTRO_COSTO
--------------------------------------------------------

  ALTER TABLE "CUADRONECESIDADES"."CENTRO_COSTO" MODIFY ("CENTRO_COSTO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CUADRO_NECESIDADES
--------------------------------------------------------

  ALTER TABLE "CUADRONECESIDADES"."CUADRO_NECESIDADES" MODIFY ("ITEM_BIEN" NOT NULL ENABLE);
  ALTER TABLE "CUADRONECESIDADES"."CUADRO_NECESIDADES" MODIFY ("FAMILIA_BIEN" NOT NULL ENABLE);
  ALTER TABLE "CUADRONECESIDADES"."CUADRO_NECESIDADES" MODIFY ("CLASE_BIEN" NOT NULL ENABLE);
  ALTER TABLE "CUADRONECESIDADES"."CUADRO_NECESIDADES" MODIFY ("GRUPO_BIEN" NOT NULL ENABLE);
  ALTER TABLE "CUADRONECESIDADES"."CUADRO_NECESIDADES" MODIFY ("TIPO_BIEN" NOT NULL ENABLE);
  ALTER TABLE "CUADRONECESIDADES"."CUADRO_NECESIDADES" MODIFY ("CENTRO_COSTO" NOT NULL ENABLE);
  ALTER TABLE "CUADRONECESIDADES"."CUADRO_NECESIDADES" MODIFY ("ANO_EJE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLEADO
--------------------------------------------------------

  ALTER TABLE "CUADRONECESIDADES"."EMPLEADO" MODIFY ("NOMBRES" NOT NULL ENABLE);
  ALTER TABLE "CUADRONECESIDADES"."EMPLEADO" MODIFY ("APELLIDO_MATERNO" NOT NULL ENABLE);
  ALTER TABLE "CUADRONECESIDADES"."EMPLEADO" MODIFY ("APELLIDO_PATERNO" NOT NULL ENABLE);
  ALTER TABLE "CUADRONECESIDADES"."EMPLEADO" MODIFY ("EMPLEADO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table UNIDAD_MEDIDA
--------------------------------------------------------

  ALTER TABLE "CUADRONECESIDADES"."UNIDAD_MEDIDA" MODIFY ("UNIDAD_MEDIDA" NOT NULL ENABLE);
