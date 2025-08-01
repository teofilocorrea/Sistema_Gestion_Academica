-- ========================================
-- Archivo: create_table_Courses.sql
-- Descripción: Crea la tabla Courses del esquema course_catalog.
--              Define atributos clave, restricciones de integridad y estructura básica.
-- Propósito: Representar el catálogo de cursos del sistema AcademicSystem,
--            con asignación de códigos, créditos y estado de disponibilidad.
-- Autor: Teófilo Correa Rojas
-- Fecha: 31 de julio de 2025
-- ========================================

USE AcademicSystem;
GO

CREATE TABLE course_catalog.Courses (

    -- 🔑 Clave primaria (PK) con autoincremento
    Course_Id   INT IDENTITY(1,1) PRIMARY KEY,      -- Clave primaria con autoincremento

    -- 📄 Otras columnas
   Title        NVARCHAR(100) NOT NULL,             -- Nombre del curso
   Code         NVARCHAR(20) NOT NULL UNIQUE,       -- Código académico del curso
   Credits      TINYINT NOT NULL,                   -- Créditos asignados al curso
   Is_Active    BIT NOT NULL,                       -- Indica si el curso está disponible

    -- 🔑 Clave foranea (FK) de la tabla Program
    Program_Id  INT NOT NULL                        -- Programa al que pertenece el curso

);
GO