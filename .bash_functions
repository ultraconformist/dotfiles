gedit() { /usr/bin/gedit -s $@ & disown ;}
function mobiconv { ebook-convert "$1" "$1".mobi; }
