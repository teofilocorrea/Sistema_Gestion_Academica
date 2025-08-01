-- ========================================
-- Archivo: create_sensitivity_Students.sql
-- Descripción: Agrega clasificación de sensibilidad (Data Sensitivity Classification)
--              a campos clave de la tabla student_management. Students.
-- Propósito: Etiquetar datos sensibles dentro del modelo de seguridad del sistema AcademicSystem,
--            facilitando auditoría, protección y cumplimiento normativo.
-- Autor: Teófilo Correa Rojas
-- Fecha: 01 de agosto de 2025
-- ========================================

USE AcademicSystem;
GO

-- 📧 Email del estudiante
ADD SENSITIVITY CLASSIFICATION TO student_management.Students.Email
    WITH (
    LABEL = 'Confidential - Contact',
    INFORMATION_TYPE = 'Email Address',
    RANK = HIGH
    );
GO

-- 🎂 Fecha de nacimiento
ADD SENSITIVITY CLASSIFICATION TO student_management.Students.BirthDate
    WITH (
    LABEL = 'Confidential - Personal',
    INFORMATION_TYPE = 'Date of Birth',
    RANK = MEDIUM
    );
GO

-- 🆔 ID interno del estudiante
ADD SENSITIVITY CLASSIFICATION TO student_management.Students.Student_Id
    WITH (
    LABEL = 'Confidential - Identifiers',
    INFORMATION_TYPE = 'Internal Student ID',
    RANK = LOW
    );
GO