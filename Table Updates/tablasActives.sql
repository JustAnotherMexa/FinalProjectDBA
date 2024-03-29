ALTER TABLE DIENTES.ABONOS ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.ALERGIAS ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.CAMBIO ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.CITA ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.DETALLE_CITA ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.DIRECCIONES ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.ENFERMEDADES ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.ESPECIALIDAD_DENTISTA ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.ESPECIALIDADES ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.HORARIOS ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.MATERIAL ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.PACIENTE_ALERGIA ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.PACIENTE_ENFERMEDAD ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.PAGOS ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.TIPO_PAGOS ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.TIPO_SANGRE ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.TRATAMIENTO ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.TRATAMIENTO_MATERIAL ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.TRATAMIENTO_PACIENTE ADD (ACTIVO NUMBER(1) DEFAULT 1 NOT NULL);
ALTER TABLE DIENTES.CITA ADD (ACEPTADA NUMBER(1) DEFAULT 0 NOT NULL);

