# Updating iTunes from Device
1. BB Link
2. Copy playlists m3us from SD/music dir on to desktop dir.
3. 3-Star/Downbeat/Re-download: Remove dupes
    - TextFX -> TestFX Tools -> Check Sort Outputs Only Unique and then sort.
4. Search  = `.\*music/(.\*)`
   Replace = `file://localhost/Z:/$1`
5. File -> Library -> Import Playlist... (Alt-F, B, I)
6. 1-Star: Highlight, Shift+Delete
7. 2-Star: Highlight, Shift+Delete
8. 3-Star: Highlight, Right-Click -> Rating -> 3-Star

# Get New Music
1. Go to `where_am_i.txt`? in `new_music`?
2. Get the next albums (will be saved in `new_music`)
3. Before removing from `or` list, write new music in `new_music.txt`?
4. Delete all duplicate folders in `new_music`
5. Open Picard and re-name/organize stuff (will be saved in `new_music_renamed`)
6. Move all albums from `new_music_renamed` into `music_preimport`
