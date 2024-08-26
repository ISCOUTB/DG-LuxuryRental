

---

### Requerimientos del Usuario

**ID: REQ-000**

**Descripción:** El sistema debe permitir a los usuarios gestionar sus registros y autenticaciones, además de ofrecer beneficios adicionales para usuarios premium.

**Requisitos Funcionales:**
- **REQ-000.1:** El sistema debe permitir el registro de nuevos usuarios con información básica como nombre, correo electrónico y contraseña.
- **REQ-000.2:** El sistema debe proporcionar una opción de inicio de sesión con autenticación mediante correo electrónico y contraseña.
- **REQ-000.3:** El sistema debe permitir alquileres sin registro mediante asistencia personalizada para usuarios que no deseen registrarse.
- **REQ-000.4:** El sistema debe diferenciar entre usuarios regulares y premium. Los usuarios premium deben tener las siguientes ventajas:
  - **REQ-000.4.1:** Reservas sin necesidad de pagar anticipo.
  - **REQ-000.4.2:** Acceso anticipado a reservas con un periodo de 4 meses antes de la fecha de disponibilidad.
  - **REQ-000.4.3:** Descuentos exclusivos en tarifas y opciones adicionales de alimentación durante el viaje.
- **REQ-000.5:** El sistema debe permitir la actualización del perfil del usuario, incluyendo la información de contacto y métodos de pago.

**Prioridad:** Alta

**Dependencias:** Ninguna

**Notas:** Es crucial garantizar una diferenciación clara entre los tipos de usuarios para aplicar correctamente los beneficios premium.

---

### Requerimientos del Sistema

**ID: REQ-001**

**Descripción:** El sistema debe permitir la gestión de reservas de botes a través de la app, facilitando la selección de fechas, horarios y tipos de botes.

**Requisitos Funcionales:**
- **REQ-001.1:** El sistema debe ofrecer una interfaz para que los usuarios seleccionen fechas, horarios y el tipo de bote deseado para la reserva.
- **REQ-001.2:** El sistema debe permitir a los usuarios realizar reservas sin anticipo si son usuarios premium.
- **REQ-001.3:** El sistema debe ofrecer opciones para realizar pagos parciales (anticipo del 50%) o pagos totales en la reserva.
- **REQ-001.4:** El sistema debe actualizar automáticamente la disponibilidad de botes en tiempo real, reflejando las reservas realizadas.
- **REQ-001.5:** El sistema debe enviar notificaciones push a los usuarios para confirmar reservas, pagos y cambios en la disponibilidad.

**Prioridad:** Alta

**Dependencias:** Integración con plataformas de pago y actualización en tiempo real.

**Notas:** La interfaz de reserva debe ser intuitiva y eficiente para evitar errores en la selección y pago.

---

**ID: REQ-002**

**Descripción:** El sistema debe proporcionar un dashboard para el dueño con métricas clave sobre ingresos, costos, ocupación y demanda, así como gestionar comentarios y mantenimiento.

**Requisitos Funcionales:**
- **REQ-002.1:** El sistema debe mostrar en el dashboard los ingresos totales y desglosados por bote.
- **REQ-002.2:** El sistema debe permitir la monitorización de costos operativos y calcular el beneficio neto.
- **REQ-002.3:** El sistema debe mostrar la tasa de ocupación de botes y la duración media de alquiler.
- **REQ-002.4:** El sistema debe presentar gráficos sobre la demanda por temporada para facilitar la planificación estratégica.
- **REQ-002.5:** El sistema debe permitir la gestión de comentarios y valoraciones de los clientes.
- **REQ-002.6:** El sistema debe enviar notificaciones automáticas al dueño para informar sobre mantenimientos pendientes.

**Prioridad:** Alta

**Dependencias:** Acceso a datos de reservas y costos operativos.

**Notas:** Las métricas y gráficos deben ser fácilmente interpretables para tomar decisiones informadas.

---

**ID: REQ-003**

**Descripción:** El sistema debe gestionar los pagos de reservas, integrando varias plataformas de pago y manteniendo un registro detallado de los pagos.

**Requisitos Funcionales:**
- **REQ-003.1:** El sistema debe integrarse con plataformas de pago como PSE y PayPal.
- **REQ-003.2:** El sistema debe registrar el historial de pagos por cliente y reserva.
- **REQ-003.3:** El sistema debe permitir pagos mediante efectivo, tarjeta de crédito o plataformas en línea.
- **REQ-003.4:** El sistema debe enviar recordatorios automáticos de pagos pendientes a los usuarios.

**Prioridad:** Alta

**Dependencias:** Integración con plataformas de pago y capacidad para manejar distintos métodos de pago.

**Notas:** La integración con plataformas de pago debe ser segura y confiable para evitar problemas en transacciones.

---

**ID: REQ-004**

**Descripción:** El sistema debe enviar alertas y notificaciones sobre la disponibilidad de botes, reservas futuras y mantenimiento preventivo.

**Requisitos Funcionales:**
- **REQ-004.1:** El sistema debe enviar alertas cuando la disponibilidad de botes sea baja.
- **REQ-004.2:** El sistema debe enviar notificaciones a los usuarios sobre reservas futuras y pagos pendientes.
- **REQ-004.3:** El sistema debe enviar recordatorios para el mantenimiento preventivo de botes basado en su uso.

**Prioridad:** Alta

**Dependencias:** Sistema de notificaciones y seguimiento de estado de los botes.

**Notas:** Las notificaciones deben ser oportunas y relevantes para mantener a los usuarios y administradores informados.

---
