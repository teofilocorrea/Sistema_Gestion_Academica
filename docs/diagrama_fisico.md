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
| PK    | Student_Id | INT            |                 |               |            |        |            | Identificador único del estudiante     |
|       | First_Name | NVARCHAR(50)   | NOT NULL        | CHK_NVARCHAR  |            |        |            | Primer nombre del estudiante           |
|       | Last_Name  | NVARCHAR(60)   | NOT NULL        | CHK_NVARCHAR  |            |        |            | Apellido del estudiante                |
|       | Email      | NVARCHAR(100)  | NOT NULL        | CHK_NVARCHAR  | MASK_EMAIL | UNIQUE |            | Correo electrónico                     |
|       | BirthDate  | DATE           | NOT NULL        |               |            |        |            | Fecha de nacimiento                    |
|       | Is_Active  | BIT            | NOT NULL        |               |            |        |            | Estado activo/inactivo del estudiante  |
|       | Created_At | DATETIME2      | NOT NULL        | CHK_DATE      |            |        |            | Fecha de creación del registro         |

---

## 🧾 Tabla: `Programs` (Esquema: `academic_programs`)

| Clave | Campo          | Tipo de dato   | NULL / NOT NULL | Restricciones | DDM | UNIQUE | Acción FK | Descripción                              |
|-------|----------------|----------------|-----------------|---------------|-----|--------|------------|------------------------------------------|
| PK    | Program_Id     | INT            |                 |               |     |        |            | Identificador único del programa         |
|       | Name           | NVARCHAR(100)  | NOT NULL        | CHK_NVARCHAR  |     |        |            | Nombre del programa o carrera            |
|       | Code           | NVARCHAR(20)   | NOT NULL        | CHK_NVARCHAR  |     | UNIQUE |            | Código corto del programa                |
|       | Duration_Years | TINYINT        | NOT NULL        |               |     |        |            | Duración del programa en años            |
|       | Is_Active      | BIT            | NOT NULL        |               |     |        |            | Indica si el programa está activo        |

---

## 🧾 Tabla: `Courses` (Esquema: `course_catalog`)

| Clave | Campo      | Tipo de dato   | NULL / NOT NULL | Restricciones | DDM | UNIQUE | Acción FK          | Descripción                                 |
|-------|------------|----------------|-----------------|---------------|-----|--------|--------------------|---------------------------------------------|
| PK    | Course_id  | INT            |                 |               |     |        |                    | Identificador único del curso               |
|       | Title      | NVARCHAR(100)  | NOT NULL        | CHK_NVARCHAR  |     |        |                    | Nombre del curso                            |
|       | Code       | NVARCHAR(20)   | NOT NULL        | CHK_NVARCHAR  |     | UNIQUE |                    | Código académico del curso                  |
|       | Credits    | TINYINT        | NOT NULL        |               |     |        |                    | Créditos asignados al curso                 |
| FK    | Program_Id | INT            |                 |               |     |        | ON DELETE SET NULL | Programa al que pertenece el curso          |
|       | Is_Active  | BIT            | NOT NULL        |               |     |        |                    | Indica si el curso está disponible          |

---

## 🧾 Tabla: `Enrollments` (Esquema: `course_registration`)

| Clave | Campo         | Tipo de dato   | NULL / NOT NULL | Restricciones | DDM | UNIQUE | Acción FK | Descripción                                         |
|-------|---------------|----------------|-----------------|---------------|-----|---------|------------|-----------------------------------------------------|
| PK    | Enrollment_Id | INT            |                 |               |     |         |            | Identificador único de la inscripción               |
| FK    | Student_Id    | INT            |                 |               |     |         |ON DELETE NO ACTION| Estudiante que se inscribió                         |
| FK    | Course_Id     | INT            |                 |               |     |         |ON DELETE NO ACTION| Curso al que se inscribió el estudiante             |
| FK    | Status_Id     | INT            |                 |               |     |         |ON DELETE NO ACTION| Estado de la inscripción (inscrito, retirado, etc.) |
|       | Enrolled_At   | DATE           | NOT NULL        | CHK_DATE      |     |         |            | Fecha en que se realizó la inscripción              |
|       | Grade         | DECIMAL(4,2)   | NOT NULL        | CHK_NUMBER    |     |         |            | Calificación obtenida (si aplica)                   |

---

## 🧾 Tabla: `Status` (Esquema: `course_registration`)

| Clave | Campo       | Tipo de dato   | NULL / NOT NULL | Restricciones | DDM | UNIQUE | Acción FK | Descripción                               |
|-------|-------------|----------------|-----------------|---------------|-----|--------|------------|-------------------------------------------|
| PK    | Status_Id   | INT            |                 |               |     |        |            | Identificador del estado de inscripción   |
|       | Status_Name | NVARCHAR(20)   | NOT NULL        | CHK_NVARCHAR  |     | UNIQUE |            | Nombre del estado (ej. Inscrito, Retirado)|

---

🧠 Documento estructurado por:  
**Teófilo Correa Rojas**  
📁 Proyecto: *Sistema de Gestión Académica – Acciones en FK*  
📅 Fecha: `Julio 29, 2025`