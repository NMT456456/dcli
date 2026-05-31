#!/bin/bash

VIDDIR="$HOME/Videos/live-wallpaper/"
THUMBDIR="$HOME/.cache/wallpaper-thumbs/"

mkdir -p "$THUMBDIR"

generate_thumb() {
    local file="$1"
    local base
    local thumb

    base=$(basename "$file")
    thumb="$THUMBDIR/$base.png"

    if [ ! -f "$thumb" ]; then
        ffmpegthumbnailer \
            -i "$file" \
            -o "$thumb" \
            -s 1080 \
            -q 8 >/dev/null 2>&1
    fi
}

INPUT=""

while IFS= read -r file; do
    generate_thumb "$file"

    base=$(basename "$file")
    thumb="$THUMBDIR/$base.png"

    INPUT+="$base\x00icon\x1f$thumb\n"
done < <(
    find "$VIDDIR" -type f \
        \( -iname "*.mp4" -o -iname "*.mkv" -o -iname "*.webm" \)
)

CHOICE=$(
    echo -en "$INPUT" |
        rofi -dmenu \
            -show-icons \
            -theme ~/.config/rofi/wallpaper.rasi
)

[ -z "$CHOICE" ] && exit
THUMB="$THUMBDIR/$(basename "$CHOICE").png"
notify-send \
    "Video Wallpaper Applied" \
    "$(basename "$CHOICE" | sed 's/\.[^.]*$//')" \
    -i "$THUMB" \
    -t 2500

VIDEO=$(find "$VIDDIR" -type f | grep "/$CHOICE$")

pkill mpvpaper

mpvpaper -o "no-audio --loop --hwdec=auto-safe" '*' "$VIDEO"
