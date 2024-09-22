USE Filmes
GO
/* PRIMEIRO PASSO: ESTUDAR AS TABELAS */
SELECT * FROM [dbo].[Atores];
SELECT * FROM [dbo].[ElencoFilme];
SELECT * FROM [dbo].[Filmes];
SELECT * FROM [dbo].[FilmesGenero];
SELECT * FROM [dbo].[Generos];


/* OBJETIVOS - DESAFIOS */

/* DESAFIO - 1 - BUSCAR O NOME E ANO DOS FILMES*/
SELECT 
	Nome
   ,Ano 
FROM Filmes;


/* DESAFIO - 2 - BUSCAR O NOME E ANO DOS FILMES ORDENADO POR ANO*/
SELECT 
	Nome
   ,Ano 
FROM Filmes
ORDER BY Ano;


/* DESAFIO - 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração */
SELECT 
	Nome
	,Ano
	,Duracao 
FROM FILMES
WHERE NOME = 'De Volta para o Futuro';


/* DESAFIO - 4 - Buscar os filmes lançados em 1997 */
SELECT * 
FROM FILMES
WHERE ANO = 1997;


/* DESAFIO - 5 - Buscar os filmes lançados APÓS o ano 2000 */
SELECT * 
FROM FILMES
WHERE ANO > 2000;


/* DESAFIO - 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente */
SELECT 
	Nome
	,Ano
	,Duracao
FROM FILMES
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;


/* DESAFIO - 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente */
SELECT 
	Ano
	,COUNT(*) as Quantidade 
FROM FILMES
GROUP BY Ano
ORDER BY Quantidade DESC;


/* DESAFIO - 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome*/
SELECT * FROM Atores
Where Genero = 'M';


-- DESAFIO - 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores
WHERE Genero = 'F'
Order by PrimeiroNome;


-- DESAFIO - 10 - Buscar o nome do filme e o gênero
SELECT * FROM [dbo].[Generos];
SELECT * FROM [dbo].[FilmesGenero];
SELECT * FROM [dbo].[Filmes];

SELECT Nome,Genero
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero;


/*DESAFIO - 11 - Buscar o nome do filme e o gênero do tipo "Mistério"*/

SELECT Nome, Genero
FROM [FilmesGenero]
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério';


/* DESAFIO - 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel */
SELECT * FROM Filmes;
SELECT * FROM Atores;
SELECT * FROM ElencoFilme;

SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM ElencoFilme
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor