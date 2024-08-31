# Resumen del Proyecto: LuxuryRental Cartagena

## 1. Requerimientos Generados

### **1.1. Requerimientos Funcionales**

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
   - Integración de pagos via **ApplePay** y **GooglePay**.
   - Registro del historial de pagos por cliente y reserva.
   - Pagos mediante efectivo, tarjeta o plataformas en línea.
   - Recordatorios automáticos de pagos pendientes.

5. **Alertas y Notificaciones**
   - Alertas sobre la **baja disponibilidad de botes**.
   - Notificaciones sobre **reservas futuras** y **pagos pendientes**.
   - Recordatorios para mantenimiento preventivo de botes basado en su uso.
   - Notificaciones sobre cancelación de salidas por condiciones climáticas.

### **1.2. Requerimientos No Funcionales**

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

---

## 2. Historias de Usuario

### Historias de Usuario para el Usuario

**ID: US-000**

**Título:** Registro y Autenticación de Usuario

**Como** nuevo usuario,  
**Quiero** poder registrarme en el sistema con mi nombre, correo electrónico y contraseña,  
**Para** tener acceso a las funcionalidades de la aplicación y gestionar mis reservas.

**Criterios de Aceptación:**
- El sistema debe permitir el registro con nombre, correo electrónico y contraseña.
- Debe enviar un correo de confirmación después del registro.
- El usuario debe poder iniciar sesión con el correo electrónico y la contraseña registrados.

---

**ID: US-001**

**Título:** Alquiler sin Registro para Asistencia Personalizada

**Como** usuario que no desea registrarse,  
**Quiero** la opción de alquilar un bote con asistencia personalizada,  
**Para** poder utilizar el servicio sin necesidad de crear una cuenta.

**Criterios de Aceptación:**
- El sistema debe permitir alquilar un bote con asistencia personalizada.
- Debe recoger la información necesaria para completar la reserva sin requerir registro previo.

---

**ID: US-002**

**Título:** Beneficios de Usuario Premium

**Como** usuario premium,  
**Quiero** hacer reservas sin anticipo, tener acceso anticipado a reservas y disfrutar de descuentos exclusivos,  
**Para** obtener ventajas adicionales y ahorrar en mis reservas.

**Criterios de Aceptación:**
- El sistema debe permitir a los usuarios premium hacer reservas sin anticipo.
- Los usuarios premium deben tener acceso a reservas 4 meses antes que otros usuarios.
- El sistema debe aplicar descuentos exclusivos y ofrecer opciones adicionales de alimentación.

---

**ID: US-003**

**Título:** Actualización de Perfil de Usuario

**Como** usuario,  
**Quiero** poder actualizar mi perfil, incluyendo mi información de contacto y métodos de pago,  
**Para** asegurarme de que mis datos estén correctos y actuales para futuras reservas.

**Criterios de Aceptación:**
- El sistema debe permitir la actualización de la información del perfil del usuario.
- El usuario debe poder cambiar su información de contacto y métodos de pago desde su perfil.

---

**ID: US-004**

**Título:** Gestión de Reservas de Botes

**Como** usuario,  
**Quiero** poder seleccionar fechas, horarios y tipo de bote para realizar una reserva,  
**Para** organizar mis planes y asegurarme de que el bote esté disponible cuando lo necesito.

**Criterios de Aceptación:**
- El sistema debe proporcionar una interfaz para seleccionar fechas, horarios y tipo de bote.
- Debe permitir reservas sin anticipo para usuarios premium.
- Debe permitir pagos parciales o totales.
- Debe actualizar la disponibilidad en tiempo real.

---

**ID: US-005**

**Título:** Notificaciones de Reservas y Pagos

**Como** usuario,  
**Quiero** recibir notificaciones push para confirmar mis reservas y pagos,  
**Para** estar informado sobre el estado de mis reservas y cualquier cambio en la disponibilidad.

**Criterios de Aceptación:**
- El sistema debe enviar notificaciones push para confirmar reservas y pagos.
- Debe notificar sobre cambios en la disponibilidad del bote.

---

### Historias de Usuario para el Administrador

**ID: US-006**

**Título:** Dashboard para el Dueño

**Como** administrador o dueño,  
**Quiero** tener un dashboard que muestre ingresos, costos operativos, tasa de ocupación y demanda,  
**Para** tomar decisiones informadas sobre la operación y planificación estratégica.

**Criterios de Aceptación:**
- El dashboard debe mostrar ingresos totales y desglosados por bote.
- Debe incluir costos operativos y cálculo del beneficio neto.
- Debe mostrar tasa de ocupación y duración media de alquiler.
- Debe incluir gráficos de demanda por temporada.
- Debe permitir la gestión de comentarios y valoraciones de clientes.
- Debe enviar notificaciones automáticas para mantenimientos pendientes.

---

**ID: US-007**

**Título:** Gestión de Pagos

**Como** administrador,  
**Quiero** que el sistema gestione los pagos integrando varias plataformas de pago y manteniendo un registro detallado,  
**Para** asegurarme de que las transacciones sean seguras y que se mantenga un historial claro de pagos.

**Criterios de Aceptación:**
- El sistema debe integrarse con plataformas de pago como PSE y PayPal.
- Debe registrar el historial de pagos por cliente y reserva.
- Debe permitir pagos mediante efectivo, tarjeta de crédito o plataformas en línea.
- Debe enviar recordatorios automáticos de pagos pendientes.

---

**ID: US-008**

**Título:** Alertas y Notificaciones de Mantenimiento

**Como** administrador,  
**Quiero** recibir alertas sobre la baja disponibilidad de botes, reservas futuras y mantenimiento preventivo,  
**Para** gestionar proactivamente la disponibilidad y el mantenimiento de los botes.

**Criterios de Aceptación:**
- El sistema debe enviar alertas cuando la disponibilidad de botes sea baja.
- Debe notificar sobre reservas futuras y pagos pendientes.
- Debe enviar recordatorios para el mantenimiento preventivo basado en el uso de los botes.

---

**ID: US-009**

**Título:** Gestión de Catálogo de Botes

**Como** administrador,  
**Quiero** poder agregar y eliminar botes del catálogo desde una pestaña de edición,  
**Para** mantener actualizado el catálogo de botes disponible para reserva.

**Criterios de Aceptación:**
- El administrador debe poder agregar nuevos botes al catálogo.
- El administrador debe poder eliminar botes del catálogo.
- El sistema debe actualizar el catálogo en tiempo real después de realizar cambios.

---

**ID: US-010**

**Título:** Calendario de Disponibilidad de Botes

**Como** administrador,  
**Quiero** que cada bote tenga un calendario de disponibilidad registrado al momento de ser agregado,  
**Para** poder gestionar y visualizar la disponibilidad de los botes en tiempo real.

**Criterios de Aceptación:**
- Cada bote debe tener un calendario asociado al momento de su registro.
- El sistema debe permitir actualizar el calendario de disponibilidad conforme cambian las reservas.

---

**ID: US-011**

**Título:** Definición de Mantenimiento y Cancelación de Reservas

**Como** administrador,  
**Quiero** definir cuando un bote entra en mantenimiento y cancelar las reservas afectadas,  
**Para** gestionar el mantenimiento de los botes y mantener a los usuarios informados.

**Criterios de Aceptación:**
- El administrador debe poder marcar un bote como en mantenimiento.
- El sistema debe cancelar automáticamente las reservas del bote en mantenimiento.
- Los usuarios afectados deben recibir notificaciones push y generar un ticket de atención para el reembolso.

---

**ID: US-012**

**Título:** Estado de Bandera para Salidas de Embarcaciones

**Como** administrador,  
**Quiero** marcar el estado de la bandera para la salida de embarcaciones (verde o roja) basado en las condiciones climáticas,  
**Para** informar a los usuarios sobre la posibilidad de salida y gestionar cancelaciones.

**Criterios de Aceptación:**
- El administrador debe poder marcar el estado de la bandera (verde o roja).
- Los usuarios deben ver el estado de la bandera al ingresar a la app.
- Los usuarios deben recibir notificaciones push si se cancela la salida por bandera roja.
- Los usuarios deben recibir un ticket de atención para reembolso en caso de cancelación.

---

**ID: US-013**

**Título:** Gestión de Reembolsos y Pagos Pendientes

**Como** administrador,  
**Quiero** ver los reembolsos pendientes y marcar como pagados los anticipos y pagos completos,  
**Para** gestionar los pagos y reembolsos de manera eficiente.

**Criterios de Aceptación:**
- El administrador debe poder visualizar una lista de reembolsos pendientes.
- El administrador debe poder marcar los anticipos y pagos completos como pagados.
- El sistema debe actualizar el estado de los pagos y reembolsos en tiempo real.

---

## 3. Resumen de Cambios Realizados

### **3.1. Requerimientos Existentes**
   - Total de requerimientos: 10 (5 Funcionales, 5 No Funcionales)

---

### **3.2. Historias de Usuario Creadas**
   - Total de historias de usuario: 13
   - **Cambios Realizados:**
     - Se han añadido nuevas historias de usuario para cubrir las funcionalidades adicionales para el administrador.
     - Las historias de usuario ahora incluyen gestión de catálogo de botes, calendarios de disponibilidad, mantenimiento, estado de bandera y gestión de reembolsos.

---

### **3.3. Tareas Generadas**

- **Número Total de Tareas:** 26

#### **Distribución de Tareas:**

1. **Configuración Inicial**
   - Crear un nuevo proyecto Flutter.
   - Configurar dependencias iniciales en `pubspec.yaml`.
   - Configurar el entorno de desarrollo para el servidor.
   - Configurar la base de datos inicial y la conexión con Flutter.

2. **Gestión de Usuarios**
   - Front-End:
     - Diseñar y desarrollar pantallas de registro, inicio de sesión, y actualización del perfil.
     - Implementar autenticación de usuarios.
   - Back-End:
     - Crear endpoints para registro, inicio de sesión, y actualización de perfil.
     - Implementar autenticación.
     - Crear la base de datos de usuarios.

3. **Reservas de Botes**
   - Front-End:
     - Diseñar y desarrollar pantallas para selección de fechas, horarios, tipo de bote, y reservas.
     - Integrar notificaciones push para reservas y pagos.
   - Back-End:
     - Crear endpoints para gestionar reservas.
     - Implementar lógica de disponibilidad en tiempo real.
     - Configurar la base de datos para reservas.

4. **Perfil del Usuario y Favoritos**
   - Front-End:
     - Diseñar y desarrollar pantallas de perfil y botes favoritos.
     - Implementar lógica para gestionar botes favoritos.
   - Back-End:
     - Crear endpoints para la información del perfil y botes favoritos.
     - Configurar la base de datos para almacenar botes favoritos.

5. **Dashboard para el Dueño**
   - Front-End:
     - Diseñar y desarrollar pantallas del dashboard.
     - Implementar visualización de métricas y gráficos.
     - Desarrollar pantalla para gestión de comentarios y valoraciones.
     - Implementar notificaciones de mantenimiento.
   - Back-End:
     - Crear endpoints para obtener datos del dashboard.
     - Configurar la base de datos para métricas y rendimiento.
     - Implementar lógica para cálculo de beneficios y ocupación.

6. **Gestión de Pagos**
   - Front-End:
     - Diseñar y desarrollar pantallas de gestión de pagos.
     - Integrar plataformas de pago.
     - Mostrar historial de pagos.
   - Back-End:
     - Crear endpoints para gestionar pagos y recuperar historial.
     - Configurar integración con plataformas de pago.
     - Implementar lógica para recordatorios automáticos.

7. **Alertas y Notificaciones**
   - Front-End:
     - Implementar sistema de notificaciones push.
     - Diseñar pantallas para alertas y notificaciones.
   - Back-End:
     - Crear endpoints para notificaciones.
     - Configurar sistema de notificaciones.

8. **Gestión de Catálogo de Botes**
   - Front-End:
     - Diseñar y desarrollar pantallas para agregar y eliminar botes del catálogo.
     - Implementar lógica para la actualización del catálogo en tiempo real.
   - Back-End:
     - Crear endpoints para la gestión del catálogo de botes.
     - Configurar la base de datos para el catálogo.

9. **Calendario de Disponibilidad y Mantenimiento**
   - Front-End:
     - Diseñar e implementar pantallas para el calendario de disponibilidad de botes.
     - Desarrollar interfaz para la gestión del estado de mantenimiento y bandera.
   - Back-End:
     - Crear endpoints para la gestión del calendario de disponibilidad y mantenimiento.
     - Implementar lógica para cancelar reservas y notificar a los usuarios sobre mantenimiento y cambios en la bandera.

10. **Pruebas y Despliegue**
    - Escribir pruebas unitarias y de integración.
    - Preparar la aplicación para el despliegue.
    - Configurar entornos de producción.

---
