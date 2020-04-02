CREATE TABLE [dbo].[Table]
(
	[firstName] NVARCHAR(50) NOT NULL , 
    [secondName] NVARCHAR(50) NOT NULL, 
    [id] INT NOT NULL, 
    [gender] NCHAR(10) NOT NULL, 
    [birthdate] DATETIME NOT NULL, 
    [email] NCHAR(10) NOT NULL, 
    [phoneNumber] NCHAR(10) NOT NULL, 
    [password] NCHAR(10) NOT NULL, 
    [nationality] NCHAR(10) NOT NULL, 
    [faculity] NCHAR(10) NOT NULL, 
    [buss] NCHAR(10) NULL, 
    CONSTRAINT [PK_Table] PRIMARY KEY ([id])
)
