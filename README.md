# Updating iTunes from Device

## Prep Playlists to Be iTunes-Friendly
1. Rocket Music -> Settings -> My Library -> Export Playlists
2. Copy playlists m3u3s from SD/music dir on to desktop dir.
    a. Starts out in Internal Storage/Playlists. Move to SD card and you may need to unplug, plug, refresh windows exporer window.
3. 3-Star/Downbeat/Re-download: Remove dupes
    - TextFX -> TestFX Tools -> Check Sort Outputs Only Unique and then sort.
4. Search  = `.\*music/(.\*)`
   Replace = `file://localhost/M:/music/$1`

## Using Playlists to Rate/Delete on iTunes
5. File -> Library -> Import Playlist... (Alt-F, B, I)
6. 1-Star: Highlight, Shift+Delete
7. 2-Star: Highlight, Shift+Delete
8. 3-Star: Highlight, Right-Click -> Rating -> 3-Star

# Remove Bad Music from Device (using linux)
1. Copy all bad songs to 1 file.
2. Prepend file with `!#/bin/sh`
3. Search  = `file://localhost/M:/music/(.*)`
   Replace = `rm -f "/run/user/1000/gvfs/mtp:host[...enter-actual-dir...]/music/$1"`
4. Execute `bash -x ./del_bad_music.sh` (`-x` is to echo commands)

# Get New Music
1. Go to [`where_am_i.txt`](https://github.com/jclevine/music_rating_instructions/blob/master/new/where_am_i.txt)
2. Get the next albums (will be saved in `new_music`)
3. Before removing from `or` list, write new music in `new_music.txt`?
4. Delete all duplicate folders in `new_music`
5. If 1 big `flac` file: `cuebreakpoints file.cue | shnsplit -o flac file.flac`
6. If/once multiple `flac`s: `find . -name *.flac -type f -exec flac2mp3 {} \;` or
                    `find . -name *.flac -type f -exec ffmpeg -i "{}" -qscale:a 0 "{}.mp3" \;`  
7. Once converted, delete 'em: `find . -name *.flac -type f -exec rm {} \;`
8. Open Picard and re-name/organize stuff (will be saved in `new_music_renamed`)
9. Move all albums from `new_music_renamed` into `music` ext HD.
10. Open iTunes
11. Add all new music folders to Library (use list from `new_music.txt` for reference so you don't need to import everything and have iTunes take forever to find what's really new)

# Reload Device
1. Make 2 smart playlists:
    - Good & New
        - Match any
        - Rating is 3-stars (good music)
        - Date Added is in the the last 1 days
        - No Limit
    - Random
        - Playlist is not Good & New
        - Limit to 30GB - [GB in Good & New]
2. Make new playlist and copy 2 smart playlists into it
3. BB Link
4. Delete all music on device
    - Click on device tab on left
    - Click on Music
    - Highlight All and Delete
5. Delete Playlists on Device.
6. Click on This Computer Tab on left
7. Open up Playlist tree
8. Right-click new playlist made above with new, good, and random music.
9. Copy-to device

# Re-Get Music (skipping)
:small_orange_diamond: TBD
