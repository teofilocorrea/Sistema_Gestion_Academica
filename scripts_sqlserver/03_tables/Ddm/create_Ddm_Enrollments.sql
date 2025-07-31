-- ========================================
-- Archivo: create_Ddm_Enrollments.sql
-- Descripción: Agrega clasificación de sensibilidad (Data Sensitivity Classification)
--              al campo Grade de la tabla Enrollments.
-- Propósito: Proteger datos académicos sensibles como parte del modelo de seguridad del sistema AcademicSystem.
-- Autor: Teófilo Correa Rojas
-- Fecha: 30 de julio de 2025
-- ========================================

USE AcademicSystem;
GO

ADD SENSITIVITY CLASSIFICATION TO course_registration.Enrollments.Grade
    WITH (
    LABEL = 'Confidential - Performance',
    INFORMATION_TYPE = 'Academic Grade',
    RANK = MEDIUM
    );
GO

-- Versión simplificada de clasificación de sensibilidad
-- Compatible con DataGrip y SQL Server 2022+