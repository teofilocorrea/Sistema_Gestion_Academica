-- ========================================
-- Archivo: create_Chk_Enrollments.sql
-- Descripción: Agrega restricciones CHECK a la tabla Enrollments
--              para validar rangos de fecha y calificación.
-- Propósito: Reforzar reglas de negocio y control de datos en el sistema AcademicSystem.
-- Autor: Teófilo Correa Rojas
-- Fecha: 30 de julio de 2025
-- ========================================

USE AcademicSystem;
GO

-- ✅ Controla que la fecha de inscripción esté dentro de un rango definido (ej. años académicos activos).
ALTER TABLE course_registration.Enrollments
    ADD CONSTRAINT CK_Enrollments_Fecha_RangoControlado
        CHECK (Enrolled_At BETWEEN '2022-07-01' AND '2025-08-30');
GO

-- ✅ Rango válido para GPA (Grade Point Average): de 0 a 4
ALTER TABLE course_registration.Enrollments
    ADD CONSTRAINT CK_Enrollments_Porcentaje_Valido
        CHECK (Grade BETWEEN 0 AND 4);
GO