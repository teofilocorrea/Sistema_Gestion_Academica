-- ========================================
-- Archivo: create_table_Status.sql
-- Descripción: Crea la tabla Status en el esquema course_registration
--              como parte del sistema AcademicSystem.
-- Propósito: Definir un catálogo de estados académicos para controlar la situación de una matrícula (ej. Inscrito, Retirado, Aprobado).
-- Autor: Teófilo Correa Rojas
-- Fecha: 30 de julio de 2025
-- ========================================

USE AcademicSystem;
GO

CREATE TABLE course_registration.Status
(
    -- 🔑 Clave primaria (PK) con autoincremento
    Status_Id INT IDENTITY (1,1) NOT NULL PRIMARY KEY,

    -- 📄 Otras columnas
    Status_name NVARCHAR(20) NOT NULL UNIQUE
);
GO