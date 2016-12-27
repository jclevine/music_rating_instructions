find . -type d -links 2 -print0 | while read -d $'\0' a; do
    pushd "$a"
    parallel -i -j$(nproc) ffmpeg -y -i {} -qscale:a 0 "{}.mp3" < /dev/null -- ./*.flac
    rename 's/.flac.mp3/.mp3/' ./*.mp3
    popd
done
