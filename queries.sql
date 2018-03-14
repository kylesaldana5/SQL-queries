1.Query all of the entries in the Genre table
SELECT * FROM Genre


2.Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT into Artist
values(null, "spafford", 2001)


3.Using the INSERT statement, add one, or more, albums by your artist to the Album table.
insert into Album
values(null, "live Vol.12", 10/12/2016, 85, "jamsplain",
(select Artistid FROM Artist WHERE Artistname = "spafford"),4)


4.Using the INSERT statement, add some songs that are on that album to the Song table.
INSERT into Song 
values(null, "leave the light on", 55, 2007,
(SELECT Genreid FROM Album a WHERE title = "live Vol.12"),
(SELECT Artistid FROM Album a WHERE title = "live Vol.12"),
(SELECT Albumid FROM Album a WHERE title = "live Vol.12"))

5.Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added. Here is some more info on joins that might help.
SELECT s.title as Songtitle, a.title as Albumtitle, b.artistName
from song s
LEFT JOIN album a
ON s.albumid = a.albumid
LEFT JOIN artist b 
ON s.artistid = b.artistid
WHERE b.artistname = "spafford"


-----------------------------------------------------------------------------------------------------------
Reminder: Direction of join matters. Try the following statements and see the difference in results.
SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;
-- -----------------------------------------------------------------------------------------------------------


6.Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.



7.Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

8.Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

9.Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

10.Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

11.Modify the previous query to also display the title of the album.