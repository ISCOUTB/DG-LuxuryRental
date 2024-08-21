
#LuxuryRental Cartagena**

## **Requerimientos Funcionales**

1. **Gestión de Usuarios**
   - Registro de usuarios.
   - Inicio de sesión con autenticación.
   - Alquiler sin registro mediante asistencia personalizada.
   - Diferenciación entre **usuario regular** y **usuario premium**:
     - Usuario premium puede hacer reservas sin pagar anticipo.
     - Acceso anticipado a reservas (4 meses antes).
     - Descuentos exclusivos y opciones de alimentación durante el viaje.
   - Actualización de perfil y métodos de pago.

2. **Reservas de Botes**
   - Sistema de reservas a través de la app.
   - Selección de fechas, horarios y tipo de bote.
   - **Reservas sin anticipo** para usuarios premium.
   - Opción de realizar **pagos parciales** (anticipo del 50%) o pagos totales.
   - Actualización automática de la **disponibilidad de botes** en tiempo real.
   - Notificaciones push para confirmar reservas, pagos, y disponibilidad.

3. **Métricas y Dashboard para el Dueño**
   - Visualización de **ingresos totales** y **ingresos por bote**.
   - Monitorización de **costos operativos** y cálculo del **beneficio neto**.
   - Análisis de **tasa de ocupación de botes** y **duración media de alquiler**.
   - Gráficos sobre **demanda por temporada** para planificación estratégica.
   - Gestión de **comentarios y valoraciones** de los clientes.
   - Notificaciones automáticas para **mantenimiento pendiente**.

4. **Gestión de Pagos**
   - Integración con plataformas de pago como **PSE** y **PayPal**.
   - Registro del historial de pagos por cliente y reserva.
   - Pagos mediante efectivo, tarjeta o plataformas en línea.
   - Recordatorios automáticos de pagos pendientes.

5. **Alertas y Notificaciones**
   - Alertas sobre la **baja disponibilidad de botes**.
   - Notificaciones sobre **reservas futuras** y **pagos pendientes**.
   - Recordatorios para mantenimiento preventivo de botes basado en su uso.

## **Requerimientos No Funcionales**

1. **Ciberseguridad**
   - Autenticación básica para usuarios y administradores.
   - Cifrado de datos sensibles (usuarios y pagos).
   - Planificación de una futura implementación de doble autenticación.

2. **Rendimiento**
   - El sistema debe ser capaz de procesar múltiples reservas y pagos simultáneamente.
   - Optimización del tiempo de respuesta en la actualización de la disponibilidad de los botes.

3. **Escalabilidad**
   - Preparar el sistema para un crecimiento futuro, soportando más usuarios, botes y funcionalidades sin afectar el rendimiento.

4. **Mantenibilidad**
   - Código estructurado de manera que sea fácil de actualizar y mantener con el tiempo.
   - La base de datos debe permitir la modificación y expansión de los modelos sin afectar el funcionamiento del sistema.

5. **Disponibilidad**
   - El sistema debe garantizar una **alta disponibilidad**, minimizando el tiempo de inactividad, especialmente durante las temporadas altas de reservas.

