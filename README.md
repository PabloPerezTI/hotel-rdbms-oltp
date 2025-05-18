🏨 hotel-rdbms-oltp 🏨

Proyecto de base de datos relacional para la gestión de un hotel, modelado en **Tercera Forma Normal (3FN)** y orientado a un sistema **OLTP (procesamiento de transacciones en línea)**. 
Incluye la simulación de datos, consultas SQL analíticas y creación de vistas para obtener insights de negocio.

---

## 📌 Objetivo

- Diseñar un modelo relacional normalizado (3FN) para representar las operaciones básicas de un hotel.
- Insertar datos simulados en cada tabla (huespedes, reservas, habitaciones, servicios...).
- Crear consultas SQL para responder a preguntas reales de negocio.
- Generar vistas reutilizables que faciliten el análisis.
- Imitar buenas prácticas de trabajo en entornos reales de ingeniería y análisis de datos.

---

## 🧱 Modelo de datos

El modelo está compuesto por las siguientes entidades:

- `huesped`: información personal de los clientes.
- `habitaciones`: habitaciones disponibles en el hotel.
- `tipos_habitacion`: categoría, capacidad y precio base.
- `reservas`: registro de reservas realizadas.
- `servicios`: servicios adicionales ofrecidos.
- `reserva_servicio`: asociación entre reservas y servicios consumidos.

El modelo ha sido diseñado respetando la Tercera Forma Normal para evitar redundancias y garantizar integridad referencial.


---

## 📈 Consultas y vistas analíticas

En la carpeta `views/` se encuentran varias vistas SQL que permiten responder a preguntas como:

- ¿Qué porcentaje de ocupación tiene el hotel por mes?
- ¿Qué servicio genera más ingresos?
- ¿Cuál es el ticket medio por reserva?
- ¿Qué tipo de habitación es el más demandado?
- ¿Qué nacionalidades visitan más el hotel?

---

## 🛠️ Herramientas utilizadas

- `PostgreSQL` (o cualquier otro RDBMS)
- `dbdiagram.io` para el diseño visual del modelo
- `SQL` para consultas, vistas y generación de insights
- `CSV` como fuente de datos falsa

---

## 🚀 Cómo ejecutar el proyecto

1. Crea las tablas ejecutando los scripts en `database/ddl/`.
2. Carga los datos manualmente o desde los CSV ubicados en `data/`.
3. Ejecuta las vistas desde `database/views/`.
4. Empieza a explorar los datos mediante consultas propias o dashboards.

---

## 📸 Diagrama del modelo relacional

(docs/modelo_relacional.png)

---

## 🔮 Posibles extensiones futuras

- Añadir un modelo dimensional (OLAP) para análisis más avanzado.
- Crear un pipeline ETL en Python para automatizar la carga de datos.
- Conectar los datos a Power BI o Tableau para visualizar insights.
- Simular una capa de acceso con APIs o dashboards.

