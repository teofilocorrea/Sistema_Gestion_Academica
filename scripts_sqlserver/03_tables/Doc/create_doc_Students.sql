-- ========================================
-- Archivo: create_doc_Students.sql
-- Descripción: Agrega documentación descriptiva a la tabla Programs
--              y a sus columnas mediante MS_Description.
-- Propósito: Mejorar la comprensión técnica y trazabilidad de la estructura de datos
--            dentro del sistema AcademicSystem.
-- Autor: Teófilo Correa Rojas
-- Fecha: 01 de Agosto de 2025
-- ========================================

USE AcademicSystem;
GO

-- 🧾 Descripción general de la tabla
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Tabla que almacena los estudiantes.',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students';

-- 📌 Identificador único del estudiante
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Identificador único del estudiante',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students',
     @level2type = 'COLUMN', @level2name = 'Student_Id';
GO

-- 📌 Primer nombre del estudiante
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Primer nombre del estudiante',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students',
     @level2type = 'COLUMN', @level2name = 'First_Name';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Apellido del estudiante.',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students',
     @level2type = 'COLUMN', @level2name = 'Last_Name';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Correo electrónico.',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students',
     @level2type = 'COLUMN', @level2name = 'Email';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Fecha de nacimiento.',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students',
     @level2type = 'COLUMN', @level2name = 'BirthDate';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Estado activo/inactivo del estudiante.',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students',
     @level2type = 'COLUMN', @level2name = 'Is_Active';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Fecha de creación del registro',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students',
     @level2type = 'COLUMN', @level2name = 'Created_At';
GO