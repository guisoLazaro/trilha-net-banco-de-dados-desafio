-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT * FROM filmes
ORDER BY Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome,  ano e duração
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De volta para o futuro'

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

-- 5 - Buscar os filmes lançados após os anos 2000
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano >= 2000

-- 6 - Buscar os filmes com a duração maior que 100 e menor que 150, ordenados pela duração e ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenado pela duracao em ordem decrescente

SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY  Quantidade DESC

-- 8 - Buscar os atores do genero masculino, Retornando o primeiro nome e ultimo nome
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9 - Buscar atores do genero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo primeiro nome
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do Filme e o Genero
SELECT Filmes.Nome, Generos.Genero AS Generos
FROM 
Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11 - Buscar o nome do Filme e o Genero do tipo mistério
SELECT Filmes.Nome, Generos.Genero AS Generos
FROM 
Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e atores, trazendo o PrimeiroNome, UltimoNome e seu papel

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM 
Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
