INSERT INTO ganre (title)
	VALUES 
	('Rock'),
	('Druam n Bass'),
	('Techno'),
	('Pop'),
	('House'),
	('Disco');

INSERT INTO tracklist (id, title, year_)
	VALUES 
	(1, 'Ностальгия','2021'),
	(2, 'Вечеринка дома','2022'),
	(3, 'В машину','2020'),
	(4, 'На работе','2021'),
	(5, 'Для путешествий','2022'),
	(6, 'Тренировка','2020'),
	(7, 'ТанцПоп','2022'),
	(8, '#Наповторе','2021'),
	(9, 'Dance For Life', '2007'),
	(10, 'Brain Damage', '2009'),
	(11, 'Hits 90', '2001');

INSERT INTO artist (id, nickname, ganre_id)
	VALUES 
	(1,'Metallica', 1),
	(2,'Prodigy', 2),
	(3,'Carl Cox', 3),
	(4,'The Weekend', 4),
	(5,'Solomun', 5),
	(6,'Bee gees', 6),
	(7,'Nirvana', 1),
	(8,'Noisia', 2),
	(9,'Boris Brejcha', 3),
	(10,'Michael Jackson', 4),
	(11,'Boney M', 6);

INSERT INTO album (id, title, year_)
	VALUES
	(1, 'Reload', '1997'),
	(2,	'The Fat of the Land', '1997'),
	(3,	'Ibiza 2015 Part 2', '2015'),
	(4,	'Blinding Lights', '2019'),
	(5,	'Nobody Is Not Loved', '2021'),
	(6, 'Saturday Night Fever', '1977'),
	(7, 'Nevermind', '1991'),
	(8, 'Closer', '2022'),
	(9, 'Space Diver', '2020'),
	(10, 'Thriller', '1982'),
	(11, 'Nightflight to Venus', '1978');

INSERT INTO track (id, name_, time_, album_id)
	VALUES
	(1,	'Fuel',	'4:29',	1),
	(2,	'Hero Of The Day', '4:21', 2),
	(3,	'Smack My Bitch Up','5:43', 3),
	(4,	'Girls', '4:13', 4),
	(5,	'I Want You', '6:15', 5),
	(6,	'The Latin Theme', '5:48', 6),
	(7,	'Blinding Lights', '4:43', 7),
	(8,	'Save Your Tears', '5:11', 8),
	(9,	'Kreatur der Nacht', '6:32', 9),
	(10, 'Friends', '7:09', 10),
	(11, 'Stayin Alive', '3:59', 11),
	(12, 'You Should Be Dancing', '4:12', 1),
	(13, 'Smells Like Teen Spiri', '4:36', 2),
	(14, 'Heart-Shaped Box', '4:43', 3),
	(15, 'Supersonic', '4:56', 4),
	(16, 'Mantra', '7:18', 5),
	(17, 'Take It Smart', '7:55', 6),
	(18, 'Spicy', '8:03', 7),
	(19, 'Billie Jean', '4:48', 8),
	(20, 'Bad', '4:07', 9),
	(21, 'Rasputin', '3:58', 10),
	(22, 'Gotta Go Home', '4:04', 11);


INSERT INTO ganre_artist (id, ganre_id, artist_id)
	values
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 4),
	(5, 5, 5),
	(6, 6, 6),
	(7, 1, 7),
	(8, 2, 8),
	(9, 3, 9),
	(10, 4, 10),
	(11, 5, 11),
	(12, 6, 5);

INSERT INTO artist_album (id, artist_id, album_id)
	values
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 4),
	(5, 5, 5),
	(6, 6, 6),
	(7, 7, 7),
	(8, 8, 8),
	(9, 9, 9),
	(10, 10, 10),
	(11, 11, 11),
	(12, 11, 1),
	(13, 10, 2),
	(14, 9, 3),
	(15, 8, 4),
	(16, 7, 5),
	(17, 5, 6),
	(18, 4, 7),
	(19, 3, 8),
	(20, 2, 9),
	(21, 1, 10),
	(22, 10, 11);
	
INSERT INTO track_tracklist (id, track_id, tracklist_id)
	values
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 4),
	(5, 5, 5),
	(6, 6, 6),
	(7, 7, 7),
	(8, 8, 8),
	(9, 9, 9),
	(10, 10, 10),
	(11, 11, 11),
	(12, 12, 11),
	(13, 13, 10),
	(14, 14, 9),
	(15, 15, 8),
	(16, 16, 7),
	(17, 17, 6),
	(18, 18, 5),
	(19, 19, 4),
	(20, 20, 3),
	(21, 21, 2),
	(22, 22, 1);
	
INSERT INTO track (id, name_, time_, album_id)
	VALUES (111, 'Music is my life', '8:08', 9)