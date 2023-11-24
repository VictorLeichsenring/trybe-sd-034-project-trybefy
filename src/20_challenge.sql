SELECT
  ar.name as 'Artista',
  al.title as 'Álbum',
  s.title as 'Música'
FROM artists as ar 
INNER JOIN albums as al on ar.id = al.artist_id
INNER JOIN songs as s on al.id = s.album_id
WHERE ar.name <> 'The Beatles'
ORDER BY ar.name ASC, al.title ASC, s.title ASC;