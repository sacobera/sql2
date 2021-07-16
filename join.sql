select * 
from invoice i 
join invoice_line il
on i.invoice_id = il.invoice_id 
where unit_price > 0.99 ; 	

select i.invoice_date, c.first_name, c.last_name, i.total 
from invoice i
join customer c
on i.customer_id = c.customer_id;


select c.first_name as customer_first_name, c.last_name as customer_last_name, e.first_name as employee_first_name, e.last_name as employee_last_name
from customer c
join employee e
on c.support_rep_id = e.employee_id;

select al.title, ar.name
from album al
join artist ar
on al.artist_id = ar.artist_id;

select pt.track_id 
from playlist_track pt
join playlist p
on pt.playlist_id = p.playlist_id
where p.name ='Music';

select t.name
from track t
join playlist_track pt 
on t.track_id = pt.track_id;
where pt.playlist_id =5;

select t.name, p.name
from track t
join playlist_track pt 
on t.track_id = pt.track_id
join playlist p 
on p.playlist_id = pt.playlist_id;


select t.name, a.title
from track t
join album a
on t.album_id = a.album_id
join genre g 
on g.genre_id = t.genre_id
where g.name = 'Alternative & Punk'

-- Get all track name`s and album `title`s that are the genre `Alternative & Punk ( 2 joins )


--for number 9, we are selecting the track name and the album title. we used the track table in FROM because
--we are trying to get the value track name, and we used album on JOIN because we are trying to
--get the album title. we then used t.album_id and a.album_id in ON because these are values that are similar
--between the two tables. After that, we JOINED them to genre, and used g.genre_id = t.genre_id because
--they have the same values between the tables. 

