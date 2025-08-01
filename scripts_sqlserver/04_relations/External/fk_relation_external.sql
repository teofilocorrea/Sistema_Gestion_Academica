-- ========================================
-- Archivo: fk_doc_External.sql
-- Descripción: Define claves foráneas externas entre tablas del sistema AcademicSystem,
--              con acciones explícitas y documentación técnica mediante comentarios.
-- Propósito: Mejorar la trazabilidad de las relaciones y el control referencial
--            entre dominios académicos, de matrícula y catálogo.
-- Autor: Teófilo Correa Rojas
-- Fecha: 01 de agosto de 2025
-- ========================================

USE AcademicSystem;
GO

-- 🧩 Relación entre Courses y Programs
-- Al actualizar el ID del programa (PK), el campo Program_Id en Courses se vuelve NULL.
-- Requiere que Program_Id permita NULL en la tabla hija.
ALTER TABLE course_catalog.Courses
    ADD CONSTRAINT FK_Courses_Program_id
        FOREIGN KEY (Program_Id)
            REFERENCES academic_programs.Programs (Program_id)
            ON DELETE NO ACTION
            ON UPDATE SET NULL;
GO

-- 🔁 Relación entre Enrollments y Courses
-- Mantiene el comportamiento por defecto: NO ACTION tanto en DELETE como en UPDATE.
-- No se permite eliminar o actualizar un Course si tiene inscripciones activas.
ALTER TABLE course_registration.Enrollments
    ADD CONSTRAINT FK_Enrollments_Course_Id
        FOREIGN KEY (Course_Id)
            REFERENCES course_catalog.Courses (Course_Id)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

-- 🔁 Relación entre Enrollments y Students
-- Comportamiento por defecto: NO ACTION. Preserva el historial de matrícula del estudiante.
-- Impide eliminar un estudiante con inscripciones vinculadas.
ALTER TABLE course_registration.Enrollments
    ADD CONSTRAINT FK_Enrollments_Student_Id
        FOREIGN KEY (Student_Id)
            REFERENCES student_management.Students (Student_Id)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;