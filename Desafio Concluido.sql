SELECT Nome, Ano FROM Filmes;

SELECT Nome, Ano FROM Filmes ORDER BY Ano;

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome='De Volta para o Futuro';

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano=1997;

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano>2000;

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao BETWEEN 101 AND 149 ORDER BY Duracao;

SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero='M';

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero='F' ORDER BY 'PrimeiroNome';

SELECT Filmes.Nome, Generos.Genero FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero;

SELECT Filmes.Nome, Generos.Genero FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero WHERE Genero='Mistério';

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes 
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor;
