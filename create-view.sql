create view rock as
select * from track 
where genre_id in (
	select genre_id from genre where name = 'Rock'
  );


--selecting all the tracks where the genre is rock and saving into a view called rock

create view classical_count as 
  select count(*)
  from track t 
  join playlist_track pt
  on t.track_id = pt.track_id 
  join playlist p
  on p.playlist_id = pt.playlist_id
  where p.name = 'Classical'