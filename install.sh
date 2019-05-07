if [[ -z $1 ]]; then
	THEME="Flat-Remix-Green-Dark"
else
	THEME="$1"
fi
cd /tmp && rm -rf flat-remix &&
git clone https://github.com/eliseuegewarth/flat-remix &&
mkdir -p ~/.icons && cp -r flat-remix/Flat-Remix* ~/.icons/ &&
gsettings set org.gnome.desktop.interface icon-theme $THEME