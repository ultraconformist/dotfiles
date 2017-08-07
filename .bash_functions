# Launch Gedit, detach
gedit() { /usr/bin/gedit -s $@ & disown ;}
# Convert ebook to mobi (mobiconv)
function mobiconv { ebook-convert "$1" "$1".mobi; }
