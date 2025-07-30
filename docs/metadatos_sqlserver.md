# 🧩 Documentación de Metadatos – SQL Server

Este documento registra los objetos documentados dentro del sistema **AcademicSystem** mediante propiedades extendidas (`sp_addextendedproperty`). Esta práctica permite dejar explicaciones funcionales y técnicas directamente en la base de datos, facilitando el gobierno de datos, auditoría y colaboración entre equipos.

---

## 1. 🗃️ Base de Datos

| Objeto         | Nombre          | Descripción agregada                                      |
|----------------|-----------------|------------------------------------------------------------|
| Base de datos  | AcademicSystem  |                                                            |

---

## 2. 📁 Esquemas

| Esquema             | Descripción agregada                                          |
|---------------------|---------------------------------------------------------------|
| student_management  |                                                               |
| academic_programs   |                                                               |
| course_catalog      |                                                               |
| course_registration |                                                               |

---

## 3. 📊 Tablas

| Esquema             | Tabla         | Descripción agregada                                  |
|---------------------|---------------|--------------------------------------------------------|
| student_management  | Students      |                                                        |
| academic_programs   | Programs      |                                                        |
| course_catalog      | Courses       |                                                        |
| course_registration | Enrollments   |                                                        |
| course_registration | Status        |                                                        |

---

## 4. 🧬 Columnas

### 📄 Tabla: `Students` (esquema: `student_management`)

| Columna     | Descripción agregada                                    |
|-------------|----------------------------------------------------------|
| student_id  |                                                          |
| first_name  |                                                          |
| last_name   |                                                          |
| email       |                                                          |
| birthdate   |                                                          |
| is_active   |                                                          |
| created_at  |                                                          |

---

### 📄 Tabla: `Programs` (esquema: `academic_programs`)

| Columna         | Descripción agregada                                    |
|-----------------|----------------------------------------------------------|
| program_id      |                                                          |
| name            |                                                          |
| code            |                                                          |
| duration_years  |                                                          |
| is_active       |                                                          |

---

### 📄 Tabla: `Courses` (esquema: `course_catalog`)

| Columna     | Descripción agregada                                    |
|-------------|----------------------------------------------------------|
| course_id   |                                                          |
| title       |                                                          |
| code        |                                                          |
| credits     |                                                          |
| program_id  |                                                          |
| is_active   |                                                          |

---

### 📄 Tabla: `Enrollments` (esquema: `course_registration`)

| Columna       | Descripción agregada                                    |
|---------------|----------------------------------------------------------|
| enrollment_id |                                                          |
| student_id    |                                                          |
| course_id     |                                                          |
| status_id     |                                                          |
| enrolled_at   |                                                          |
| grade         |                                                          |

---

### 📄 Tabla: `Status` (esquema: `course_registration`)

| Columna     | Descripción agregada                                    |
|-------------|----------------------------------------------------------|
| status_id   |                                                          |
| status_name |                                                          |

---

📌 *Nota: Los metadatos pueden ser agregados en SQL Server mediante `sp_addextendedproperty`, y visualizados desde SSMS, DataGrip o herramientas de metadatos como Power BI.*

🧠 Documento estructurado por:  
**Teófilo Correa Rojas**  
📅 Fecha: `Julio 29, 2025`  
📁 Proyecto: *Sistema de Gestión Académica – Acciones en FK*