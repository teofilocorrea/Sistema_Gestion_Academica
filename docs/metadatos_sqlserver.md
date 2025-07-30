# 🧩 Documentación de Metadatos SQL Server

Este documento resume los objetos documentados dentro de la base de datos `AcademicSystem` utilizando propiedades extendidas (`sp_addextendedproperty`) para facilitar la comprensión, gobierno y mantenimiento de datos.

---

## 1. 🗃️ Base de Datos

| Objeto         | Nombre            | Descripción agregada                                      |
|----------------|-------------------|------------------------------------------------------------|
| Base de datos  | AcademicSystem    | [🔲 Aquí escribes tu descripción general del sistema]       |

---

## 2. 📁 Esquemas

| Esquema             | Descripción agregada                                                |
|---------------------|---------------------------------------------------------------------|
| student_management  |                                                                     |
| course_catalog      |                                                                     |
| academic_programs   |                                                                     |
| course_registration |                                                                     |

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

| Esquema            | Tabla     | Columna     | Descripción agregada                                    |
|--------------------|-----------|-------------|----------------------------------------------------------|
| student_management | Students  | email       |                                                          |
| student_management | Students  | birthdate   |                                                          |
| student_management | Students  | first_name  |                                                          |
| student_management | Students  | last_name   |                                                          |
| course_catalog     | Courses   | credits     |                                                          |
| course_registration| Enrollments | grade     |                                                          |

---

📌 *Nota: Todos los metadatos pueden ser agregados en SQL Server usando `sp_addextendedproperty`. Esta documentación sirve como respaldo y como referencia para sincronización y auditoría.*

---

🧠 Documento estructurado por:  
**Teófilo Correa Rojas**  
📅 Fecha de inicio: `Julio 29, 2025`  
📁 Proyecto: *Sistema de Gestión Académica – Acciones en FK*