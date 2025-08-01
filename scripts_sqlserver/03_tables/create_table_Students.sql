-- ========================================
-- Archivo: create_table_Students.sql
-- Descripción: Crea la tabla Students del esquema student_management.
--              Define atributos clave, restricciones de integridad y estructura básica.
-- Propósito: Representar la información personal y académica de los estudiantes del sistema AcademicSystem,
--            incluyendo su identificación, contacto y estado de actividad.
-- Autor: Teófilo Correa Rojas
-- Fecha: 1 de agosto de 2025
-- ========================================

CREATE TABLE student_management.Students
(
    -- 🔑 Clave primaria (PK) con autoincremento
    Student_Id  INT IDENTITY (1,1) PRIMARY KEY,   -- Identificador único del estudiante

    -- 📄 Otras columnas
    First_Name  NVARCHAR(50) NOT NULL,           -- Primer nombre del estudiante
    Last_Name   NVARCHAR(60) NOT NULL,           -- Apellido del estudiante
    Email       NVARCHAR(100) NOT NULL UNIQUE,   -- Correo electrónico institucional o personal
    BirthDate   DATE NOT NULL,                   -- Fecha de nacimiento del estudiante
    Is_Active   BIT NOT NULL,                    -- Estado activo/inactivo
    Created_At  DATETIME2 NOT NULL               -- Fecha de creación del registro

);
GO