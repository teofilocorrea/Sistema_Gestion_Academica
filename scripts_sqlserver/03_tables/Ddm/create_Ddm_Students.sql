-- ========================================
-- Archivo: create_Ddm_Students.sql
-- Descripción: Aplica enmascaramiento dinámico (Dynamic Data Masking)
--              al campo Email de la tabla Students.
-- Propósito: Proteger datos académicos sensibles como parte del modelo de seguridad del sistema AcademicSystem.
-- Autor: Teófilo Correa Rojas
-- Fecha: 01 de agosto de 2025
-- ========================================

USE AcademicSystem;
GO

-- 📧 Enmascaramiento de correo electrónico (MASKED)
-- Oculta parte del correo, mostrando el primer carácter y el dominio.
-- Ejemplo: j*******@gmail.com

ALTER TABLE student_management.Students
    ALTER COLUMN Email ADD MASKED WITH (FUNCTION = 'email()');