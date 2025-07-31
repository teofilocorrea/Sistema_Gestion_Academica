-- ========================================
-- Archivo: create_doc_Enrollments.sql
-- Descripción: Agrega documentación descriptiva a la tabla Enrollments
--              y a sus columnas mediante MS_Description.
-- Propósito: Mejorar la comprensión técnica y trazabilidad de la estructura de datos
--            dentro del sistema AcademicSystem.
-- Autor: Teófilo Correa Rojas
-- Fecha: 30 de julio de 2025
-- ========================================

USE AcademicSystem;
GO

-- 🧾 Descripción: Comentario profesional a una tabla
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Tabla que almacena las inscripciones de los estudiantes.',
     @level0type = 'SCHEMA', @level0name = 'course_registration',
     @level1type = 'TABLE', @level1name = 'Enrollments';
GO

-- Comentarios a columnas
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Identificador único de la inscripción.',
     @level0type = 'SCHEMA', @level0name = 'course_registration',
     @level1type = 'TABLE', @level1name = 'Enrollments',
     @level2type = 'COLUMN', @level2name = 'Enrollment_Id';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Identificador foráneo de la tabla Students.',
     @level0type = 'SCHEMA', @level0name = 'course_registration',
     @level1type = 'TABLE', @level1name = 'Enrollments',
     @level2type = 'COLUMN', @level2name = 'Student_Id';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Identificador foráneo de la tabla Courses.',
     @level0type = 'SCHEMA', @level0name = 'course_registration',
     @level1type = 'TABLE', @level1name = 'Enrollments',
     @level2type = 'COLUMN', @level2name = 'Course_Id';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Identificador foráneo de la tabla Status.',
     @level0type = 'SCHEMA', @level0name = 'course_registration',
     @level1type = 'TABLE', @level1name = 'Enrollments',
     @level2type = 'COLUMN', @level2name = 'Status_Id';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Fecha de inscripción del estudiante en el curso.',
     @level0type = 'SCHEMA', @level0name = 'course_registration',
     @level1type = 'TABLE', @level1name = 'Enrollments',
     @level2type = 'COLUMN', @level2name = 'Enrolled_At';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Calificación obtenida por el estudiante en el curso.',
     @level0type = 'SCHEMA', @level0name = 'course_registration',
     @level1type = 'TABLE', @level1name = 'Enrollments',
     @level2type = 'COLUMN', @level2name = 'Grade';
GO