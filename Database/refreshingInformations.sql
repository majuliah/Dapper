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