-- ========================================
-- Archivo: fk_relation_intern.sql
-- Descripción: Define la clave foránea entre las tablas Enrollments y Status,
--              con documentación orientada a la trazabilidad técnica del modelo.
-- Propósito: Fortalecer la integridad referencial del sistema AcademicSystem
--            mediante relaciones explícitas entre entidades normalizadas.
-- Autor: Teófilo Correa Rojas
-- Fecha: 31 de julio de 2025
-- ========================================

USE AcademicSystem;
GO

-- 🔁 FK DEFAULT: NO ACTION (comportamiento por defecto)
ALTER TABLE course_registration.Enrollments
    ADD CONSTRAINT FK_Enrollment_Status_Id
        FOREIGN KEY (Status_Id)
            REFERENCES course_registration.Status (Status_Id)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;
GO