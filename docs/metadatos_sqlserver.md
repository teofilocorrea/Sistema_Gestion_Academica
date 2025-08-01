# 🧩 Documentación de Metadatos – SQL Server

Este documento registra los objetos documentados dentro del sistema **AcademicSystem** mediante propiedades extendidas (`sp_addextendedproperty`). Esta práctica permite dejar explicaciones funcionales y técnicas directamente en la base de datos, facilitando el gobierno de datos, auditoría y colaboración entre equipos.

---

## 1. 🗃️ Base de Datos

| Objeto         | Nombre          | Descripción agregada                                                                                              |
|----------------|-----------------|-------------------------------------------------------------------------------------------------------------------|
| Base de datos  | AcademicSystem  | Base de datos diseñada para simular un sistema de gestión académica como parte de un portafolio técnico personal. |

---

## 2. 📁 Esquemas

| Esquema             | Descripción agregada                                          |
|---------------------|---------------------------------------------------------------|
| student_management  | Contiene la tabla de estudiantes y sus datos personales.                                                              |
| academic_programs   | Agrupa las tablas relacionadas con los programas académicos ofrecidos.                                                            |
| course_catalog      | Incluye las tablas del catálogo de cursos disponibles en el sistema.                                                             |
| course_registration | Contiene las tablas encargadas del registro y matrícula de cursos.                                                              |

---

## 3. 📊 Tablas

| Esquema             | Tabla         | Descripción agregada                                                                                         |
|---------------------|---------------|--------------------------------------------------------------------------------------------------------------|
| student_management  | Students      | Tabla que almacena los estudiantes.                                                                          |
| academic_programs   | Programs      | Tabla que almacena el catálogo de programas académicos disponibles, incluyendo su nombre, duración y estado. |
| course_catalog      | Courses       | Tabla que almacena el catálogo de cursos ofrecidos por los programas académicos.                             |
| course_registration | Enrollments   | Tabla que almacena las inscripciones de los estudiantes.                                                     |
| course_registration | Status        | Tabla maneja los estatus de los estudiante.                                                                  |

---

## 4. 🧬 Columnas

### 📄 Tabla: `Students` (esquema: `student_management`)

| Columna    | Descripción agregada                   |
|------------|----------------------------------------|
| Student_Id | Identificador único del estudiante.    |
| First_Name | Primer nombre del estudiante.          |
| Last_Name  | Apellido del estudiante.               |
| Email      | Correo electrónico.                    |
| BirthDate  | Fecha de nacimiento.                   |
| Is_Active  | Estado activo/inactivo del estudiante. |
| Created_At | Fecha de creación del registro.        |

---

### 📄 Tabla: `Programs` (esquema: `academic_programs`)

| Columna        | Descripción agregada               |
|----------------|------------------------------------|
| Program_Id     | Identificador único del programa.  |
| Name           | Nombre del programa o carrera.     |
| Code           | Código corto del programa.         |
| Duration_Years | Duración del programa en años.     |
| Is_Active      | Indica si el programa está activo. |

---

### 📄 Tabla: `Courses` (esquema: `course_catalog`)

| Columna    | Descripción agregada                |
|------------|-------------------------------------|
| Course_Id  | Identificador único del curso.      |
| Title      | Nombre del curso.                   |
| Code       | Código académico del curso.         |
| Credits    | Créditos asignados al curso.        |
| Program_Id | Programa al que pertenece el curso. |
| Is_Active  | Indica si el curso está disponible. |

---

### 📄 Tabla: `Enrollments` (esquema: `course_registration`)

| Columna       | Descripción agregada                        |
|---------------|---------------------------------------------|
| Enrollment_Id | Identificador único de la inscripción.      |
| Student_Id    | Identificador foráneo de la tabla Students. |
| Course_Id     | Identificador foráneo de la tabla Courses.|
| Status_Id     | Identificador foráneo de la tabla Status.|
| Enrolled_At   | Fecha de inscripción del estudiante en el curso.|
| Grade         | Calificación obtenida por el estudiante en el curso.|

---

### 📄 Tabla: `Status` (esquema: `course_registration`)

| Columna     | Descripción agregada                        |
|-------------|---------------------------------------------|
| Status_Id   | Identificador del estado de inscripción.    |
| Status_Name | Nombre del estado (ej. Inscrito, Retirado). |

---

📌 *Nota: Los metadatos pueden ser agregados en SQL Server mediante `sp_addextendedproperty`, y visualizados desde SSMS, DataGrip o herramientas de metadatos como Power BI.*

🧠 Documento estructurado por:  
**Teófilo Correa Rojas**  
📅 Fecha: `Julio 30, 2025`  
📁 Proyecto: *Sistema de Gestión Académica – Acciones en FK*