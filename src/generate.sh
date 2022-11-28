#!/bin/sh
# Generate *.qbtheme file from Xresources.
# This is a qBittorrent theme generator.
# https://github.com/mahdimirzade/qbittorrent

TARGET=${1:-example.qbtheme}

generate_theme() {
	XRES=${HOME}/.Xresources

	SRC=$1
	DST=$2
	[ -f "${DST}.tmp" ] && rm "${DST}.tmp"
	cp "${SRC}" "${DST}.tmp"

	CLBG=$(awk  "/background/ {print \$2;exit}" "$XRES")
	CLFG=$(awk  "/foreground/ {print \$2;exit}" "$XRES")
	CLCR=$(awk "/cursorColor/ {print \$2;exit}" "$XRES")

	sed "s|%clbg%|$CLBG|g" "$DST".tmp > "$DST"
	mv "$DST" "$DST".tmp
	sed "s|%clfg%|$CLFG|g" "$DST".tmp > "$DST"
	mv "$DST" "$DST".tmp
	sed "s|%clcr%|$CLCR|g" "$DST".tmp > "$DST"
	mv "$DST" "$DST".tmp

	for i in $(seq 0 15); do
		VALUE=$(awk "/color$i/ {print \$2;exit}" "$XRES")
		sed "s|%cl${i}%|$VALUE|g" "$DST".tmp > "$DST"
		mv "$DST" "$DST".tmp
	done

	[ -f "${DST}" ] && rm "${DST}"
	mv "${DST}.tmp" "${DST}"
}

generate_theme config.json.in config.json
generate_theme stylesheet.qss.in stylesheet.qss

rcc resources.qrc -o "$TARGET" -binary
