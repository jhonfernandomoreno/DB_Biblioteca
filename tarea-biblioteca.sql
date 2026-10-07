INSERT INTO [dbo].[autores] ([id], [nombre], [pais])
VALUES 
    (1, N'Gabriel García Márquez', N'Colombia'),
    (2, N'Mario Vargas Llosa', N'Perú'),
    (3, N'Isabel Allende', N'Chile');

INSERT INTO [dbo].[libros] ([id], [titulo], [anio], [autor_id])
VALUES 
    (101, N'Cien años de soledad', 1967, 1),
    (102, N'El amor en los tiempos del cólera', 1985, 1),
    (103, N'La ciudad y los perros', 1963, 2),
    (104, N'La fiesta del Chivo', 2000, 2),
    (105, N'La casa de los espíritus', 1982, 3);

--Consultar todos los libros
SELECT * FROM libros;

--Libros despues del 2000, por año
SELECT * FROM libros WHERE anio > 2000;

--Cuantos libros hay
SELECT COUNT(*) AS "Libros Totales" FROM libros;

--un UPDATE que corrija un dato
UPDATE libros SET anio = 2001 where libros.id = 101;

--un JOIN titulo mas autor
SELECT 
    libros.id AS LibroId,
    libros.titulo AS Titulo,
    libros.anio AS AnioPublicacion,
    autores.nombre AS Autor,
    autores.pais AS Pais
FROM [dbo].[libros]
INNER JOIN [dbo].[autores] 
    ON libros.autor_id = autores.id;