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
5. If 1 big `flac` file: `cuebreakpoints file.cue | shnsplit -o flac file.flac`
6. If/once multiple `flac`s: `find . -name *.flac -type f -exec flac2mp3 {} \;`
5. Open Picard and re-name/organize stuff (will be saved in `new_music_renamed`)
6. Move all albums from `new_music_renamed` into `music_preimport`
7. Open iTunes
8. Add all new music folders to Library (use list from `new_music.txt` for reference so you don't need to import everything and have iTunes take forever to find what's really new)

# Reload Device
1. [Delete all music off device]
2. [Make new smart playlist with
    - All 3-Star Songs
    - All New Music (from `new_music.txt`)
    - Load ~30 GB of 'other music' randomly]
3. [Use device to "sync" only that newly made playlist.]

# Re-Get Music (skipping)
:small_orange_diamond: TBD
