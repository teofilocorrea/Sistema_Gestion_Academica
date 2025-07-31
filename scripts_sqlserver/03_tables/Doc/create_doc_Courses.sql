-- ========================================
-- Archivo: create_doc_Courses.sql
-- Descripción: Agrega documentación descriptiva a la tabla Courses
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
     @value = N'Tabla que almacena el catálogo de cursos ofrecidos por los programas académicos.',
     @level0type = 'SCHEMA', @level0name = 'course_catalog',
     @level1type = 'TABLE', @level1name = 'Courses';
GO

-- Comentarios a columnas
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Identificador único del curso',
     @level0type = 'SCHEMA', @level0name = 'course_catalog',
     @level1type = 'TABLE', @level1name = 'Courses',
     @level2type = 'COLUMN', @level2name = 'Course_id';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Nombre del curso.',
     @level0type = 'SCHEMA', @level0name = 'course_catalog',
     @level1type = 'TABLE', @level1name = 'Courses',
     @level2type = 'COLUMN', @level2name = 'Title';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Código académico del curso.',
     @level0type = 'SCHEMA', @level0name = 'course_catalog',
     @level1type = 'TABLE', @level1name = 'Courses',
     @level2type = 'COLUMN', @level2name = 'Code';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Créditos asignados al curso.',
     @level0type = 'SCHEMA', @level0name = 'course_catalog',
     @level1type = 'TABLE', @level1name = 'Courses',
     @level2type = 'COLUMN', @level2name = 'Credits';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Programa al que pertenece el curso.',
     @level0type = 'SCHEMA', @level0name = 'course_catalog',
     @level1type = 'TABLE', @level1name = 'Courses',
     @level2type = 'COLUMN', @level2name = 'Program_Id';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Indica si el curso está disponible.',
     @level0type = 'SCHEMA', @level0name = 'course_catalog',
     @level1type = 'TABLE', @level1name = 'Courses',
     @level2type = 'COLUMN', @level2name = 'Is_Active';
GO