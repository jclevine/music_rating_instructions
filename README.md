# Organize/Rename One Album Already Here
1. Open Picard
2. Which was the [last year done](https://github.com/jclevine/music_rating_instructions/blob/master/new/last_year_done.txt)? 
2. Add 1 music folder from `~/new_music` that was from the year in #2 into Picard.
3. Edit [last year done](https://github.com/jclevine/music_rating_instructions/edit/master/new/last_year_done.txt) to be the next in line to do next time (eg. 50s -> 60s)
4. Cluster/Lookup/Rename files into `~/new_music_renamed`
5. Delete dir in `~/new_music`
6. Copy music to HD.
7. Delete from `~/new_music_renamed`

# Move New Music to Phone
1. Attach HD to Desktop
2. Verify `vsftpd` is running, otherwise `sudo service vsftpd start`
3. Open Norton Commander on phone and open `linux` connection.
4. Navigate to new folder to HD `/media/music/...`.
5. Click on folder icon to select whole folder.
6. Select `copy` icon at lower-left corner to `Copy/Move`.
7. Select `/ext_sd/music` directory and `Copy`.

Listen, rate, and enjoy!

# Import to iTunes
1. Attach HD to Windows machine.
2. Open `M:\` to verify it's attached.
3. Open iTunes.
4. Add new folder to iTunes.

# Export Playlists to Be iTunes-Friendly
1. Rocket Music -> Settings -> My Library -> Export Playlists
2. Copy playlists m3u3s from Internal/Playlists (verify that this is true) dir to desktop dir.
3. Merge these playlists with [playlists on github](https://github.com/jclevine/music_rating_instructions/tree/master/playlists).
3. 3-Star/Downbeat/Re-download: Remove dupes
    - TextFX -> TestFX Tools -> Check Sort Outputs Only Unique and then sort.
4. Search for linux-style = `.\*music/(.\*)` 
   Replace with windows-style = `file://localhost/M:/music/$1`

# Using Playlists to Rate/Delete on iTunes
1. Attach HD.
2. Open `M:\` to verify it's connected
3. File -> Library -> Import Playlist... (Alt-F, B, I)
4. 1-Star: Highlight, Shift+Delete
5. 2-Star: Highlight, Shift+Delete
6. 3-Star: Highlight, Right-Click -> Rating -> 3-Star

# Remove Bad Music from Device (using linux)
1. Attach phone to computer.
1. Copy all bad songs to 1 file.
2. Prepend file with `#!/bin/sh`
3. Search  from windows-style = `file://localhost/M:/music/(.*)`
   Replace with linux-style and deleting = `if [ -f "/run/user/1000/gvfs/mtp:host=%5Busb%3A002%2C004%5D/SD card/music/$1" ]; then rm -f "/run/user/1000/gvfs/mtp:host=%5Busb%3A002%2C004%5D/SD card/music/$1"; fi`
4. Execute `bash -x ./del_bad_music.sh` (`-x` is to echo commands)

# Get New Music
1. Go to [`where_am_i.txt`](https://github.com/jclevine/music_rating_instructions/blob/master/new/where_am_i.txt)
2. Get the next albums (save in [`new.txt`](https://github.com/jclevine/music_rating_instructions/blob/master/new/new.txt))
4. Delete all duplicate folders in `new_music`
5. If 1 big `flac` file: `cuebreakpoints file.cue | shnsplit -o flac file.flac`
6. If/once multiple `flac`s: `find . -name *.flac -type f -exec flac2mp3 {} \;` or
                    `find . -name *.flac -type f -exec ffmpeg -i "{}" -qscale:a 0 "{}.mp3" \;`  
7. Once converted, delete 'em: `find . -name *.flac -type f -exec rm {} \;`
8. Open Picard and re-name/organize stuff (will be saved in `new_music_renamed`)
9. `ll` -> `Ctrl + Drag` for column select in `new_music_renamed` folder to get [`new_music.txt`](https://github.com/jclevine/music_rating_instructions/blob/master/new/new.txt) content.
10. TBD -- how to update [`all_music.txt`](https://github.com/jclevine/music_rating_instructions/blob/master/music_lists/all_music.txt).
9. Move all albums from `new_music_renamed` into `music` ext HD.
10. Open iTunes
11. Add all new music folders to Library (use list from `new_music.txt` for reference so you don't need to import everything and have iTunes take forever to find what's really new)

# Re-Get Music (skipping)
:small_orange_diamond: TBD
