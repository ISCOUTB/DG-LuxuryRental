# 📅 Luxury Rental Cartagena

## 📄 Descripción General
Este sistema está diseñado para facilitar la gestión eficiente de alquileres de botes, proporcionando una solución completa tanto para usuarios como para administradores y dueños de botes. Incluye funcionalidades como el registro de usuarios, reservas, gestión de pagos y un dashboard avanzado para la monitorización de métricas del negocio.

## 🎯 Requerimientos Funcionales

### 1. Gestión de Usuarios
- **Registro de Usuarios:** Permite a los usuarios crear una cuenta con su información básica.
- **Inicio de Sesión y Autenticación:** Acceso seguro al sistema mediante autenticación.
- **Alquiler sin Registro:** Opción de alquilar sin registrarse, con asistencia personalizada.
- **Diferenciación de Usuarios:**
  - **Usuarios Regulares:** Acceso estándar con opción de realizar reservas.
  - **Usuarios Premium:**
    - **Reservas sin Anticipo:** Realizar reservas sin necesidad de pago previo.
    - **Acceso Anticipado:** Acceso a reservas con 4 meses de anticipación.
    - **Descuentos Exclusivos:** Ofertas especiales y opciones de catering durante el viaje.
- **Gestión de Perfil:** Actualización de detalles de perfil y métodos de pago.

### 2. Reservas de Botes
- **Sistema de Reservas:** Permite la reserva de botes a través de la app, seleccionando fechas, horarios y tipo de bote.
- **Reservas sin Anticipo para Premium:** Los usuarios premium pueden reservar sin pagar anticipo.
- **Opciones de Pago:** Posibilidad de realizar pagos parciales (anticipo del 50%) o pagos totales.
- **Disponibilidad en Tiempo Real:** Actualización automática de la disponibilidad de los botes.
- **Notificaciones Push:** Alertas para confirmar reservas, pagos y disponibilidad de botes.

### 3. Métricas y Dashboard para el Dueño
- **Visualización de Ingresos:** Mostrar ingresos totales y desglosados por bote.
- **Monitorización de Costos:** Seguimiento de costos operativos y cálculo del beneficio neto.
- **Análisis de Ocupación:** Análisis de la tasa de ocupación de botes y la duración media de los alquileres.
- **Gráficos de Demanda:** Visualización de la demanda por temporada para planificación estratégica.
- **Gestión de Comentarios:** Administración de comentarios y valoraciones de los clientes.
- **Alertas de Mantenimiento:** Notificaciones automáticas para mantenimiento pendiente.

### 4. Gestión de Pagos
- **Integración con Plataformas de Pago:** Compatibilidad con ApplePay, GooglePay, PSE, PayPal y otras plataformas.
- **Historial de Pagos:** Registro detallado de todos los pagos realizados por cliente y reserva.
- **Múltiples Métodos de Pago:** Aceptación de pagos en efectivo, tarjeta o plataformas en línea.
- **Recordatorios de Pagos:** Recordatorios automáticos para pagos pendientes.

### 5. Alertas y Notificaciones
- **Alertas de Baja Disponibilidad:** Notificaciones cuando la disponibilidad de botes es baja.
- **Recordatorios de Reservas y Pagos:** Recordatorios para próximas reservas y pagos pendientes.
- **Alertas de Mantenimiento Preventivo:** Notificaciones basadas en el uso para el mantenimiento preventivo de los botes.

### 6. Gestión de Catálogo de Botes
- **Agregar y Eliminar Botes:** Gestión de botes disponibles en el catálogo.
- **Calendario de Disponibilidad:** Cada bote tiene un calendario de disponibilidad registrado al momento de ser agregado.

### 7. Gestión de Mantenimiento y Estado de Bandera
- **Mantenimiento de Botes:** Definición y gestión de mantenimiento de botes, con cancelación automática de reservas afectadas.
- **Estado de Bandera:** Marcado del estado de la bandera (verde o roja) basado en las condiciones climáticas, con notificaciones a los usuarios sobre la posibilidad de salida.

## 🛡️ Requerimientos No Funcionales

### 1. Ciberseguridad
- **Autenticación Básica:** Inicio de sesión seguro para usuarios y administradores.
- **Cifrado de Datos:** Protección de datos sensibles, incluyendo detalles de usuarios y pagos.
- **Mejoras Futuras:** Planificación para la implementación de autenticación en dos pasos.

### 2. Rendimiento
- **Procesamiento Simultáneo:** Capacidad para gestionar múltiples reservas y pagos al mismo tiempo.
- **Optimización de Respuesta:** Asegurar la rápida actualización de la disponibilidad de los botes.

### 3. Escalabilidad
- **Preparado para Crecer:** El sistema está diseñado para soportar un crecimiento futuro, permitiendo más usuarios, botes y funcionalidades sin afectar el rendimiento.

### 4. Mantenibilidad
- **Código Estructurado:** Código organizado para facilitar actualizaciones y mantenimiento.
- **Base de Datos Flexible:** La base de datos permite modificaciones y expansiones sin afectar el funcionamiento del sistema.

### 5. Disponibilidad
- **Alta Disponibilidad:** El sistema garantiza un tiempo de actividad elevado, minimizando el tiempo de inactividad, especialmente durante las temporadas altas de reservas.

---

## 📦 Instalación y Uso

### Requisitos Previos
- **Flutter:** Asegúrate de tener Flutter instalado en tu máquina.
- **Node.js y NPM:** Necesarios para la parte del servidor.
- **Base de Datos:** Configura la base de datos según las instrucciones en `database_setup.md`.

### Instalación
1. **Clonar el Repositorio:**
   ```bash
   git clone https://github.com/ISCOUTB/DG-LuxuryRental.git
