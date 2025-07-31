-- ========================================
-- Archivo: create_Chk_Status.sql
-- Descripción: Agrega restricciones CHECK a la tabla Status
--              para validar rangos de fecha y calificación.
-- Propósito: Reforzar reglas de negocio y control de datos en el sistema AcademicSystem.
-- Autor: Teófilo Correa Rojas
-- Fecha: 30 de julio de 2025
-- ========================================

USE AcademicSystem;
GO

-- ✅ Validación por lista de valores permitidos
-- Asegura que el campo Status_name solo contenga valores válidos predefinidos.
-- Útil para reforzar la integridad de catálogos pequeños y estáticos.
ALTER TABLE course_registration.Status
    ADD CONSTRAINT CK_Status_ValoresValidos
        CHECK (Status_name IN ('Inscrito', 'Retirado', 'Aprobado', 'Reprobado'));
GO