-- 1. Количество исполнителей в каждом жанре
SELECT g.title, COUNT(artist_id) FROM ganre_artist ga
join ganre g ON g.id = ga.ganre_id
GROUP BY g.title;


-- 2. количество треков, вошедших в альбомы 2019-2020 годов
SELECT a.title, count(t.id) FROM track t
JOIN album a  ON a.id = t.album_id
WHERE a.year_ BETWEEN 2019 AND 2020
GROUP BY a.title;


-- 3. средняя продолжительность треков по каждому альбому;
SELECT a.title, AVG(t.time_) FROM track t
JOIN album a ON a.id = t.album_id 
GROUP BY a.title;


-- 4. все исполнители, которые не выпустили альбомы в 2020 году;
SELECT DISTINCT a.nickname FROM artist a
WHERE a.nickname  NOT IN (
	SELECT a.nickname  FROM artist a
	LEFT JOIN artist_album aa ON a.id = aa.artist_id 
	LEFT JOIN album a2 ON aa.album_id = a2.id 
	WHERE a2.year_ = 2020)
ORDER BY a.nickname ;



-- 5. названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT DISTINCT t.title FROM tracklist t 
JOIN track_tracklist tt ON t.id = tt.tracklist_id 
JOIN track t2 ON tt.track_id = t2.id 
JOIN artist_album aa ON aa.album_id = t2.album_id 
JOIN artist a on a.id  = aa.artist_id 
WHERE a.nickname = 'Noisia';


-- 6. название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT a.title, count(ga.ganre_id) FROM album a
JOIN artist_album aa ON a.id =aa.album_id 
JOIN ganre_artist ga ON ga.artist_id = aa.artist_id
GROUP BY a.title
HAVING COUNT(ga.artist_id) > 1;


-- 7. наименование треков, которые не входят в сборники;
select t.name_ from track t 
left join track_tracklist tt on t.id = tt.track_id
where tt.track_id is null;



-- 8. исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
SELECT a2.nickname, t.time_ FROM track t
LEFT JOIN album a ON a.id = t.album_id 
LEFT JOIN artist_album aa ON aa.album_id = a.id  
LEFT JOIN artist a2 on a2.id = aa.artist_id 
GROUP BY a2.nickname, t.time_
HAVING t.time_ = (
	SELECT MIN(t.time_) from track t) 
ORDER BY a2.nickname;


-- 9. название альбомов, содержащих наименьшее количество треков.
SELECT DISTINCT a.title, count(t.id) track_count FROM album a
JOIN track t ON a.id = t.album_id 
GROUP by a.id 
HAVING count(t.name_) = (
	SELECT count(t.name_) FROM album a
	join track t on a.id = t.album_id 
	GROUP by album_id
	ORDER by count(t.name_)
	LIMIT 1); 

