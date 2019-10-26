/***************
Provide a query that shows the total number of tracks in each playlist.
The Playlist name should be include on the resultant table.
*****************/

select count(TrackId) as NumOfTracks
from PlaylistTrack
inner join Playlist
on PlaylistTrack.PlaylistId = Playlist.PlaylistId
group by Playlist.PlaylistId