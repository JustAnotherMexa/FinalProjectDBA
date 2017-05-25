/* Formatted on 5/25/2017 12:40:07 AM (QP5 v5.300) */
CREATE OR REPLACE PACKAGE DIENTES.EDIT_PKG
AS
    PROCEDURE EDIT_ABONOS (
        ID_ABONOS_V                 IN DIENTES.ABONOS.ID_ABONOS%TYPE,
        PAGADO_V                    IN DIENTES.ABONOS.PAGADO%TYPE,
        ID_TRATAMIENTO_PACIENTE_V   IN DIENTES.ABONOS.ID_TRATAMIENTO_PACIENTE%TYPE,
        COSTO_V                     IN DIENTES.ABONOS.COSTO%TYPE,
        FECHA_V                     IN DIENTES.ABONOS.FECHA%TYPE,
        ID_PAGO_V                   IN DIENTES.ABONOS.ID_PAGO%TYPE,
        ACTIVO_V                    IN DIENTES.ABONOS.ACTIVO%TYPE);

    PROCEDURE EDIT_ALERGIAS (
        ID_ALERGIA_V   IN DIENTES.ALERGIAS.ID_ALERGIA%TYPE,
        NOMBRE_V       IN DIENTES.ALERGIAS.NOMBRE%TYPE,
        ACTIVO_V       IN DIENTES.ALERGIAS.ACTIVO%TYPE);

    PROCEDURE EDIT_CAMBIO (
        ID_MONEDA_1_V   IN DIENTES.CAMBIO.ID_MONEDA_1%TYPE,
        ID_MONEDA_2_V   IN DIENTES.CAMBIO.ID_MONEDA_2%TYPE,
        TIPO_CAMBIO_V   IN DIENTES.CAMBIO.TIPO_CAMBIO%TYPE,
        FECHA_V         IN DIENTES.CAMBIO.FECHA%TYPE,
        ACTIVO_V        IN DIENTES.CAMBIO.ACTIVO%TYPE,
        ID_CAMBIO_V     IN DIENTES.CAMBIO.ID_CAMBIO%TYPE);

    PROCEDURE EDIT_CITA (ID_CITA_V       IN DIENTES.CITA.ID_CITA%TYPE,
                         ID_PACIENTE_V   IN DIENTES.CITA.ID_PACIENTE%TYPE,
                         ID_DENTISTA_V   IN DIENTES.CITA.ID_DENTISTA%TYPE,
                         FECHA_HORA_V    IN DIENTES.CITA.FECHA_HORA%TYPE,
                         DETALLE_V       IN DIENTES.CITA.DETALLE%TYPE,
                         ASISTIO_V       IN DIENTES.CITA.ASISTIO%TYPE,
                         ACTIVO_V        IN DIENTES.CITA.ACTIVO%TYPE,
                         ACEPTADA_V      IN DIENTES.CITA.ACEPTADA%TYPE);

    PROCEDURE EDIT_DETALLE_CITA (
        ID_CITA_V                  IN DIENTES.DETALLE_CITA.ID_CITA%TYPE,
        ID_TRATAMIENTOPACIENTE_V   IN DIENTES.DETALLE_CITA.ID_TRATAMIENTOPACIENTE%TYPE,
        ACTIVO_V                   IN DIENTES.DETALLE_CITA.ACTIVO%TYPE,
        ID_DETALLE_CITA_V          IN DIENTES.DETALLE_CITA.ID_DETALLE_CITA%TYPE);

    PROCEDURE EDIT_DIRECCIONES (
        ID_CIUDAD_V      IN DIENTES.DIRECCIONES.ID_CIUDAD%TYPE,
        CALLE_V          IN DIENTES.DIRECCIONES.CALLE%TYPE,
        NUMERO_V         IN DIENTES.DIRECCIONES.NUMERO%TYPE,
        INFO_EXTRA_V     IN DIENTES.DIRECCIONES.INFO_EXTRA%TYPE,
        ACTIVO_V         IN DIENTES.DIRECCIONES.ACTIVO%TYPE,
        ID_DIRECCION_V   IN DIENTES.DIRECCIONES.ID_DIRECCION%TYPE);

    PROCEDURE EDIT_ENFERMEDADES (
        NOMBRE_V          IN DIENTES.ENFERMEDADES.NOMBRE%TYPE,
        ACTIVO_V          IN DIENTES.ENFERMEDADES.ACTIVO%TYPE,
        ID_ENFERMEDAD_V   IN DIENTES.ENFERMEDADES.ID_ENFERMEDAD%TYPE);

    PROCEDURE EDIT_ESPECIALIDADES (
        NOMBRE_V            IN DIENTES.ESPECIALIDADES.NOMBRE%TYPE,
        ACTIVO_V            IN DIENTES.ESPECIALIDADES.ACTIVO%TYPE,
        ID_ESPECIALIDAD_V   IN DIENTES.ESPECIALIDADES.ID_ESPECIALIDAD%TYPE);

    PROCEDURE EDIT_ESPECIALIDAD_DENTISTA (
        ID_ESPECIALIDAD_V   IN DIENTES.ESPECIALIDAD_DENTISTA.ID_ESPECIALIDAD%TYPE,
        ID_DENTISTA_V       IN DIENTES.ESPECIALIDAD_DENTISTA.ID_DENTISTA%TYPE,
        ACTIVO_V            IN DIENTES.ESPECIALIDAD_DENTISTA.ACTIVO%TYPE);

    PROCEDURE EDIT_HORARIOS (
        LUNES_V       IN DIENTES.HORARIOS.LUNES%TYPE,
        MARTES_V      IN DIENTES.HORARIOS.MARTES%TYPE,
        MIERCOLES_V   IN DIENTES.HORARIOS.MIERCOLES%TYPE,
        JUEVES_V      IN DIENTES.HORARIOS.JUEVES%TYPE,
        VIERNES_V     IN DIENTES.HORARIOS.VIERNES%TYPE,
        SABADO_V      IN DIENTES.HORARIOS.SABADO%TYPE,
        DOMINGO_V     IN DIENTES.HORARIOS.DOMINGO%TYPE,
        ACTIVO_V      IN DIENTES.HORARIOS.ACTIVO%TYPE,
        USERID        IN NUMBER);

    PROCEDURE EDIT_MATERIAL (
        NOMBRE_V        IN DIENTES.MATERIAL.NOMBRE%TYPE,
        ACTIVO_V        IN DIENTES.MATERIAL.ACTIVO%TYPE,
        ID_MATERIAL_V   IN DIENTES.MATERIAL.ID_MATERIAL%TYPE);

    PROCEDURE EDIT_PACIENTE_ALERGIA (
        ACTIVO_V        IN DIENTES.PACIENTE_ALERGIA.ACTIVO%TYPE,
        ID_PACIENTE_V   IN DIENTES.PACIENTE_ALERGIA.ID_PACIENTE%TYPE,
        ID_ALERGIA_V    IN DIENTES.PACIENTE_ALERGIA.ID_ALERGIA%TYPE);

    PROCEDURE EDIT_PACIENTE_ENFERMEDAD (
        ACTIVO_V          IN DIENTES.PACIENTE_ENFERMEDAD.ACTIVO%TYPE,
        ID_PACIENTE_V     IN DIENTES.PACIENTE_ENFERMEDAD.ID_PACIENTE%TYPE,
        ID_ENFERMEDAD_V   IN DIENTES.PACIENTE_ENFERMEDAD.ID_ENFERMEDAD%TYPE);

    PROCEDURE EDIT_PAGOS (
        ID_PAGO_V        IN DIENTES.PAGOS.ID_PAGO%TYPE,
        ID_DENTISTA_V    IN DIENTES.PAGOS.ID_DENTISTA%TYPE,
        ID_PACIENTE_V    IN DIENTES.PAGOS.ID_PACIENTE%TYPE,
        FECHA_V          IN DIENTES.PAGOS.FECHA%TYPE,
        TOTAL_V          IN DIENTES.PAGOS.TOTAL%TYPE,
        ID_TIPOPAGOS_V   IN DIENTES.PAGOS.ID_TIPOPAGOS%TYPE,
        ID_CAMBIO_V      IN DIENTES.PAGOS.ID_CAMBIO%TYPE,
        ACTIVO_V         IN DIENTES.PAGOS.ACTIVO%TYPE);

    PROCEDURE EDIT_TIPO_PAGOS (
        NOMBRE_V         IN DIENTES.TIPO_PAGOS.NOMBRE%TYPE,
        ACTIVO_V         IN DIENTES.TIPO_PAGOS.ACTIVO%TYPE,
        ID_TIPOPAGOS_V   IN DIENTES.TIPO_PAGOS.ID_TIPOPAGOS%TYPE);

    PROCEDURE EDIT_TIPO_SANGRE (
        NOMBRE_V           IN DIENTES.TIPO_SANGRE.NOMBRE%TYPE,
        ACTIVO_V           IN DIENTES.TIPO_SANGRE.ACTIVO%TYPE,
        ID_TIPO_SANGRE_V   IN DIENTES.TIPO_SANGRE.ID_TIPO_SANGRE%TYPE);

    PROCEDURE EDIT_TRATAMIENTO (
        NOMBRE_V            IN DIENTES.TRATAMIENTO.NOMBRE%TYPE,
        COSTO_V             IN DIENTES.TRATAMIENTO.COSTO%TYPE,
        ID_ESPECIALIDAD_V   IN DIENTES.TRATAMIENTO.ID_ESPECIALIDAD%TYPE,
        ACTIVO_V            IN DIENTES.TRATAMIENTO.ACTIVO%TYPE,
        ID_TRATAMIENTO_V    IN DIENTES.TRATAMIENTO.ID_TRATAMIENTO%TYPE);

    PROCEDURE EDIT_TRATAMIENTO_MATERIAL (
        ACTIVO_V           IN DIENTES.TRATAMIENTO_MATERIAL.ACTIVO%TYPE,
        ID_TRATAMIENTO_V   IN DIENTES.TRATAMIENTO_MATERIAL.ID_TRATAMIENTO%TYPE,
        ID_MATERIAL_V      IN DIENTES.TRATAMIENTO_MATERIAL.ID_MATERIAL%TYPE);

    PROCEDURE EDIT_TRATAMIENTO_PACIENTE (
        ID_TRATAMIENTO_V           IN DIENTES.TRATAMIENTO_PACIENTE.ID_TRATAMIENTO%TYPE,
        ID_PACIENTE_V              IN DIENTES.TRATAMIENTO_PACIENTE.ID_PACIENTE%TYPE,
        COSTO_V                    IN DIENTES.TRATAMIENTO_PACIENTE.COSTO%TYPE,
        CITAS_NUMERO_V             IN DIENTES.TRATAMIENTO_PACIENTE.CITAS_NUMERO%TYPE,
        CITAS_TOTAL_V              IN DIENTES.TRATAMIENTO_PACIENTE.CITAS_TOTAL%TYPE,
        ABONOS_TOTALES_V           IN DIENTES.TRATAMIENTO_PACIENTE.ABONOS_TOTALES%TYPE,
        ACTIVO_V                   IN DIENTES.TRATAMIENTO_PACIENTE.ACTIVO%TYPE,
        ID_TRATAMIENTOPACIENTE_V   IN DIENTES.TRATAMIENTO_PACIENTE.ID_TRATAMIENTOPACIENTE%TYPE);

    PROCEDURE EDIT_USER_INFO (USUARIOID   IN NUMBER,
                              NOMBRE      IN VARCHAR2,
                              APELLIDO    IN VARCHAR2,
                              CORREO      IN VARCHAR2,
                              CIUDADID    IN NUMBER,
                              STREET      IN VARCHAR2,
                              EXTERIOR    IN NUMBER,
                              GENERO      IN VARCHAR2,
                              CELL        IN NUMBER,
                              BLOOD       IN VARCHAR2,
                              ADDRESSID   IN NUMBER);
    PROCEDURE EDIT_USER_GROUP(USUARIOGRUPOID IN NUMBER, GRUPOID IN NUMBER);
END EDIT_PKG;
/