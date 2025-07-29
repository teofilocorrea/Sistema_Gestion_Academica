# ⚙️ Diagrama Físico – Sistema de Gestión Académica

## 📌 ¿Qué encontrarás en esta sección?

En esta sección se presenta la **estructura física detallada** de la base de datos del sistema académico.

Cada tabla incluye:

- Las columnas que la componen
- El tipo de dato asociado (pensado para SQL Server)
- Si aceptan `NULL` o son obligatorias (`NOT NULL`)
- Restricciones lógicas como `CHECK`, `DEFAULT`, etc.
- Si se aplicará enmascaramiento de datos con **DDM (Dynamic Data Masking)**
- Si deben ser campos únicos (`UNIQUE`)
- Las acciones de integridad referencial (`ON DELETE`, `ON UPDATE`)
- Una descripción funcional clara del campo

---

## 🧾 Tabla: `Students` (Esquema: `student_management`)

| Clave | Campo      | Tipo de dato   | NULL / NOT NULL | Restricciones | DDM        | UNIQUE | Acción FK | Descripción                            |
|-------|------------|----------------|-----------------|---------------|------------|--------|------------|----------------------------------------|
| PK    | student_id | INT            |                 |               |            |        |            | Identificador único del estudiante     |
|       | first_name | NVARCHAR(50)   | NOT NULL        | CHK_NVARCHAR  |            |        |            | Primer nombre del estudiante           |
|       | last_name  | NVARCHAR(60)   | NOT NULL        | CHK_NVARCHAR  |            |        |            | Apellido del estudiante                |
|       | email      | NVARCHAR(100)  | NOT NULL        | CHK_NVARCHAR  | MASK_EMAIL | UNIQUE |            | Correo electrónico                     |
|       | birthdate  | DATE           | NOT NULL        |               |            |        |            | Fecha de nacimiento                    |
|       | is_active  | BIT            | NOT NULL        |               |            |        |            | Estado activo/inactivo del estudiante  |
|       | created_at | DATETIME2      | NOT NULL        | CHK_DATE      |            |        |            | Fecha de creación del registro         |

---

## 🧾 Tabla: `Programs` (Esquema: `academic_programs`)

| Clave | Campo         | Tipo de dato   | NULL / NOT NULL | Restricciones | DDM | UNIQUE | Acción FK | Descripción                              |
|-------|---------------|----------------|-----------------|---------------|-----|--------|------------|------------------------------------------|
| PK    | program_id    | INT            |                 |               |     |        |            | Identificador único del programa         |
|       | name          | NVARCHAR(100)  | NOT NULL        | CHK_NVARCHAR  |     |        |            | Nombre del programa o carrera            |
|       | code          | NVARCHAR(20)   | NOT NULL        | CHK_NVARCHAR  |     | UNIQUE |            | Código corto del programa                |
|       | duration_years| TINYINT        | NOT NULL        |               |     |        |            | Duración del programa en años            |
|       | is_active     | BIT            | NOT NULL        |               |     |        |            | Indica si el programa está activo        |

---

## 🧾 Tabla: `Courses` (Esquema: `course_catalog`)

| Clave | Campo      | Tipo de dato   | NULL / NOT NULL | Restricciones | DDM | UNIQUE | Acción FK          | Descripción                                 |
|-------|------------|----------------|-----------------|---------------|-----|--------|--------------------|---------------------------------------------|
| PK    | course_id  | INT            |                 |               |     |        |                    | Identificador único del curso               |
|       | title      | NVARCHAR(100)  | NOT NULL        | CHK_NVARCHAR  |     |        |                    | Nombre del curso                            |
|       | code       | NVARCHAR(20)   | NOT NULL        | CHK_NVARCHAR  |     | UNIQUE |                    | Código académico del curso                  |
|       | credits    | TINYINT        | NOT NULL        |               |     |        |                    | Créditos asignados al curso                 |
| FK    | program_id | INT            |                 |               |     |        | ON DELETE SET NULL | Programa al que pertenece el curso          |
|       | is_active  | BIT            | NOT NULL        |               |     |        |                    | Indica si el curso está disponible          |

---

## 🧾 Tabla: `Enrollments` (Esquema: `course_registration`)

| Clave | Campo        | Tipo de dato   | NULL / NOT NULL | Restricciones | DDM | UNIQUE | Acción FK | Descripción                                         |
|-------|--------------|----------------|-----------------|---------------|-----|---------|------------|-----------------------------------------------------|
| PK    | enrollment_id| INT            |                 |               |     |         |            | Identificador único de la inscripción               |
| FK    | student_id   | INT            |                 |               |     |         |ON DELETE NO ACTION| Estudiante que se inscribió                         |
| FK    | course_id    | INT            |                 |               |     |         |ON DELETE NO ACTION| Curso al que se inscribió el estudiante             |
| FK    | status_id    | INT            |                 |               |     |         |ON DELETE NO ACTION| Estado de la inscripción (inscrito, retirado, etc.) |
|       | enrolled_at  | DATE           | NOT NULL        | CHK_DATE      |     |         |            | Fecha en que se realizó la inscripción              |
|       | grade        | DECIMAL(4,2)   | NOT NULL        | CHK_NUMBER    |     |         |            | Calificación obtenida (si aplica)                   |

---

## 🧾 Tabla: `Status` (Esquema: `course_registration`)

| Clave | Campo       | Tipo de dato   | NULL / NOT NULL | Restricciones | DDM | UNIQUE | Acción FK | Descripción                               |
|-------|-------------|----------------|-----------------|---------------|-----|---------|------------|-------------------------------------------|
| PK    | status_id   | INT            |                 |               |     |         |            | Identificador del estado de inscripción   |
|       | status_name | NVARCHAR(20)   | NOT NULL        | CHK_NVARCHAR  |     |         |            | Nombre del estado (ej. Inscrito, Retirado)|

---

🧠 Documento estructurado por:  
**Teófilo Correa Rojas**  
📁 Proyecto: *Sistema de Gestión Académica – Acciones en FK*  
📅 Fecha: `Julio 29, 2025`