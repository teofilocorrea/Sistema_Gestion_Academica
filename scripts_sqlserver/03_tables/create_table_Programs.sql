-- ========================================
-- Archivo: create_table_Programs.sql
-- Descripción: Crea la tabla Programs del esquema academic_programs.
--              Define atributos clave, restricciones de integridad y estructura básica.
-- Propósito: Representar el catálogo de programas académicos dentro del sistema AcademicSystem,
--            permitiendo su identificación, duración y estado activo.
-- Autor: Teófilo Correa Rojas
-- Fecha: 31 de julio de 2025
-- ========================================

USE AcademicSystem;
GO

CREATE TABLE academic_programs.Programs
(
    -- 🔑 Clave primaria (PK) con autoincremento
    Program_id INT IDENTITY (1,1) PRIMARY KEY, -- Identificador único del programa

    -- 📄 Otras columnas
    Name NVARCHAR(100) NOT NULL,               -- Nombre del programa o carrera
    Code NVARCHAR(20) NOT NULL UNIQUE,         -- Código corto del programa
    Duration_Years TINYINT NOT NULL,           -- Duración del programa en años
    Is_Active BIT NOT NULL                     -- Indica si el programa está activo

);
GO