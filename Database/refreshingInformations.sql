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

DROP TABLE [Aluno]


/* constraints */

CREATE TABLE [Aluno](
    [Id] INT NOT NULL UNIQUE,
    [Nome] NVARCHAR(80) NOT NULL,
    [Nascimento] DATETIME NULL,
    [Active] BIT DEFAULT(0)
)
GO

ALTER TABLE [Aluno]
    ALTER COLUMN [Active] BIT NOT NULL
GO

ALTER TABLE [Aluno]
    ALTER COLUMN [Active] BIT NOT NULL
GO

/* primary key única*/

DROP TABLE [Aluno]

CREATE TABLE [Aluno](
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [Email] NVARCHAR(80) NOT NULL UNIQUE,
    [Nascimento] DATETIME NULL,
    [Active] BIT DEFAULT(0),

    PRIMARY KEY([Id], [Email]) 
    /* conjunto se torna uma pk*/
)
GO

ALTER TABLE [Aluno]
    ADD PRIMARY KEY ([Id])
GO

ALTER TABLE [Aluno]
    DROP CONSTRAINT [PK_Aluno] 
GO

ALTER TABLE [Aluno]
    DROP CONSTRAINT [UK_Aluno] 
GO

DROP TABLE [Aluno]

CREATE TABLE [Aluno](
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [Email] NVARCHAR(80) NOT NULL,
    [Nascimento] DATETIME NULL,
    [Active] BIT DEFAULT(0),

    CONSTRAINT [PK_Aluno] PRIMARY KEY([Id]), 
    CONSTRAINT [UK_Aluno_Email] UNIQUE([Email])
)
GO