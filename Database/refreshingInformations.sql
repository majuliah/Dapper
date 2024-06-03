CREATE DATABASE [Curso]
DROP DATABASE[Curso]


USE [Curso]
/*schema como dados são definidos e lidos no bd*/
CREATE TABLE [Aluno](
    [Id] INT,
    [Nome] NVARCHAR(80),
    [Nascimento] DATETIME,
    [Active] BIT 
)
GO

ALTER TABLE [Aluno]
    ADD [Document] NVARCHAR(11)
GO

ALTER TABLE [Aluno]
    ALTER COLUMN [Document] CHAR(11)
GO

ALTER TABLE [Aluno]
    DROP COLUMN [Document] 
GO

