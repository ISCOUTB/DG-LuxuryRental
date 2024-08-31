
---

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
**Quiero** tener la capacidad de hacer reservas sin anticipo, acceso anticipado a reservas, y disfrutar de descuentos exclusivos,  
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

### Historias de Usuario para el Sistema

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
