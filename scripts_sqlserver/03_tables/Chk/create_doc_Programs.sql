-- ========================================
-- Archivo: create_doc_Programs.sql
-- Descripción: Agrega documentación descriptiva a la tabla Programs
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
     @value = N'Tabla que almacena el catálogo de programas académicos disponibles, incluyendo su nombre, duración y estado.',
     @level0type = 'SCHEMA', @level0name = 'academic_programs',
     @level1type = 'TABLE', @level1name = 'Programs';

-- Comentarios a columnas
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Identificador único del programa académico.',
     @level0type = 'SCHEMA', @level0name = 'academic_programs',
     @level1type = 'TABLE', @level1name = 'Programs',
     @level2type = 'COLUMN', @level2name = 'Program_Id';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Nombre del programa o carrera académica.',
     @level0type = 'SCHEMA', @level0name = 'academic_programs',
     @level1type = 'TABLE', @level1name = 'Programs',
     @level2type = 'COLUMN', @level2name = 'Name';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Código corto y único asignado al programa académico.',
     @level0type = 'SCHEMA', @level0name = 'academic_programs',
     @level1type = 'TABLE', @level1name = 'Programs',
     @level2type = 'COLUMN', @level2name = 'Code';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Duración del programa en años académicos.',
     @level0type = 'SCHEMA', @level0name = 'academic_programs',
     @level1type = 'TABLE', @level1name = 'Programs',
     @level2type = 'COLUMN', @level2name = 'Duration_Years';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Indica si el programa se encuentra actualmente activo (1) o inactivo (0).',
     @level0type = 'SCHEMA', @level0name = 'academic_programs',
     @level1type = 'TABLE', @level1name = 'Programs',
     @level2type = 'COLUMN', @level2name = 'Is_Active';
GO