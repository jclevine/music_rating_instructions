# Organizing Music
First try `beets` to match the reasonably easy-to-match music, then use Picard for the albums with either a mess inside or when tracks are missing.

## `beets`
Try one artist at a time eg.
```
beet import /Volumes/morty/music/Air/
```
It will either go smoothly or not.
### Really Short Tracks (ie. invalid)
Skip it. This will be logged into the `import.log` as, in this example:
```
skip /Volumes/morty/music/Air/Moon Safari
```
Edit the log and edit `skip` to be `redownload`.

#### TODO: Script to do something with the skipped albums.

### Missing Tracks
Skip it.

## Picard
There is a copy of all the music in `music copy`, so that when Picard moves the music to `organized-music` you have backup.

