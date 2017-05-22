CREATE OR REPLACE PACKAGE DIENTES.ADD_PKG
AS
    PROCEDURE ADD_ALERGIA (OUT_ALERGIA OUT NUMBER, ALERGIA IN VARCHAR2);

    PROCEDURE ADD_ABONO (OUT_ABONO                 OUT NUMBER,
                         PAGADO                        NUMBER,
                         ID_TRATAMIENTO_PACIENTE       NUMBER,
                         COSTO                         NUMBER,
                         FECHA                         DATE,
                         ID_PAGO                       NUMBER);

    PROCEDURE ADD_CAMBIO (OUT_CAMBIO         OUT NUMBER,
                          ID_MONEDA_1_V   IN     CAMBIO.ID_MONEDA_1%TYPE,
                          ID_MONEDA_2_V   IN     CAMBIO.ID_MONEDA_2%TYPE,
                          TIPO_CAMBIO_V   IN     CAMBIO.TIPO_CAMBIO%TYPE,
                          FECHA_V         IN     CAMBIO.FECHA%TYPE);

    PROCEDURE ADD_CITA (OUT_CITA           OUT NUMBER,
                        ID_PACIENTE_V   IN     DIENTES.CITA.ID_PACIENTE%TYPE,
                        ID_DENTISTA_V   IN     DIENTES.CITA.ID_DENTISTA%TYPE,
                        FECHA_HORA_V    IN     DIENTES.CITA.FECHA_HORA%TYPE,
                        DETALLE_V       IN     DIENTES.CITA.DETALLE%TYPE,
                        ASISTIO_V       IN     DIENTES.CITA.ASISTIO%TYPE);

    PROCEDURE ADD_DETALLE_CITA (
        OUT_DETALLE_CITA              OUT NUMBER,
        ID_CITA_V                  IN     DIENTES.DETALLE_CITA.ID_CITA%TYPE,
        ID_TRATAMIENTOPACIENTE_V   IN     DIENTES.DETALLE_CITA.ID_TRATAMIENTOPACIENTE%TYPE);

    PROCEDURE ADD_DIRECCION (
        OUT_DIRECCION      OUT NUMBER,
        ID_CIUDAD_V     IN     DIENTES.DIRECCIONES.ID_CIUDAD%TYPE,
        CALLE_V         IN     DIENTES.DIRECCIONES.CALLE%TYPE,
        NUMERO_V        IN     DIENTES.DIRECCIONES.NUMERO%TYPE,
        INFO_EXTRA_V    IN     DIENTES.DIRECCIONES.INFO_EXTRA%TYPE);

    PROCEDURE ADD_ENFERMEDAD (
        OUT_ENFERMEDAD      OUT NUMBER,
        NOMBRE_V         IN     DIENTES.ENFERMEDADES.NOMBRE%TYPE);

    PROCEDURE ADD_ESPECIALIDAD (
        OUT_ESPECIALIDAD      OUT NUMBER,
        NOMBRE_V           IN     DIENTES.ENFERMEDADES.NOMBRE%TYPE);

    PROCEDURE ADD_ESPECIALIDAD_DENTISTA (
        ID_ESPECIALIDAD_V   IN DIENTES.ESPECIALIDAD_DENTISTA.ID_ESPECIALIDAD%TYPE,
        ID_DENTISTA_V       IN DIENTES.ESPECIALIDAD_DENTISTA.ID_DENTISTA%TYPE);

    PROCEDURE ADD_HORARIO (OUT_HORARIO      OUT NUMBER,
                           LUNES_V       IN     VARCHAR2,
                           MARTES_V      IN     VARCHAR2,
                           MIERCOLES_V   IN     VARCHAR2,
                           JUEVES_V      IN     VARCHAR2,
                           VIERNES_V     IN     VARCHAR2,
                           SABADO_V      IN     VARCHAR2,
                           DOMINGO_V     IN     VARCHAR2);

    PROCEDURE ADD_MATERIAL (OUT_MATERIAL OUT INTEGER, NOMBRE_V IN VARCHAR2);

    PROCEDURE ADD_PACIENTE_ALERGIA (ID_PACIENTE_V   IN INTEGER,
                                    ID_ALERGIA_V    IN INTEGER);

    PROCEDURE ADD_PACIENTE_ENFERMEDAD (ID_PACIENTE_V     IN INTEGER,
                                       ID_ENFERMEDAD_V   IN INTEGER);

    PROCEDURE ADD_PAGOS (
        OUT_PAGO            OUT DIENTES.PAGOS.ID_PAGO%TYPE,
        ID_DENTISTA_V    IN     DIENTES.PAGOS.ID_DENTISTA%TYPE,
        ID_PACIENTE_V    IN     DIENTES.PAGOS.ID_PACIENTE%TYPE,
        FECHA_V          IN     DIENTES.PAGOS.FECHA%TYPE,
        TOTAL_V          IN     DIENTES.PAGOS.TOTAL%TYPE,
        ID_TIPOPAGOS_V   IN     DIENTES.PAGOS.ID_TIPOPAGOS%TYPE,
        ID_CAMBIO_V      IN     DIENTES.PAGOS.ID_CAMBIO%TYPE);

    PROCEDURE ADD_TIPO_PAGO (OUT_TIPOPAGOS OUT INTEGER, NOMBRE_V IN VARCHAR2);

    PROCEDURE ADD_TIPO_SANGRE (OUT_TIPOSANGRE      OUT INTEGER,
                               NOMBRE_V         IN     VARCHAR2);

    PROCEDURE ADD_TRATAMIENTO (OUT_TRATAMIENTO        OUT INTEGER,
                               NOMBRE_V            IN     VARCHAR2,
                               COSTO_V             IN     LONG,
                               ID_ESPECIALIDAD_V   IN     INTEGER);

    PROCEDURE ADD_TRATAMIENTO_MATERIAL (ID_TRATAMIENTO_V   IN INTEGER,
                                        ID_MATERIAL_V      IN INTEGER);

    PROCEDURE ADD_TRATAMIENTO_PACIENTE (
        OUT_TRATAMIENTOPACIENTE      OUT INTEGER,
        ID_TRATAMIENTO_V          IN     INTEGER,
        ID_PACIENTE_V             IN     INTEGER,
        COSTO_V                   IN     LONG,
        CITAS_NUMERO_V            IN     INTEGER,
        CITAS_TOTAL_V             IN     INTEGER,
        ABONOS_TOTALES_V          IN     INTEGER);
END ADD_PKG;
/