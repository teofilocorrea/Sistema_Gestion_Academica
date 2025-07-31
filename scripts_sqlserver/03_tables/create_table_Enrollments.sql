-- ========================================
-- Archivo: create_table_Enrollments.sql
-- Descripción: Crea la tabla Enrollments en el esquema correspondiente
--              como parte del sistema AcademicSystem.
-- Propósito: Definir la estructura de la matrícula de cursos para uso técnico y portafolio.
-- Autor: Teófilo Correa Rojas
-- Fecha: 30 de julio de 2025
-- ========================================

USE AcademicSystem;
GO

CREATE TABLE course_registration.Enrollments
(
    -- 🔑 Clave primaria (PK) con autoincremento
    Enrollment_Id INT IDENTITY (1,1) NOT NULL PRIMARY KEY,

    -- 🔑 Clave foranea (FK) de la tabla Student
    Student_Id INT NOT NULL,

    -- 🔑 Clave foranea (FK) de la tabla Course
    Course_Id INT NOT NULL,

    -- 🔑 Clave foranea (FK) de la tabla Status
    Status_Id INT NOT NULL,

    -- 📄 Otras columnas
    Enrolled_At DATE NOT NULL,
    Grade DECIMAL(4,2) NOT NULL
);
GO