mcd () {
 if [ “$1” == “” ]
 then
   echo “Refusing to make directory with blank name”
   return
 fi
 mkdir "$1" && cd "$1"
}

exists() {
  [[ -f $1 ]]
}

# see http://superuser.com/a/763781
##########
## tree ##
##########
## example ...
#|____Cycles
#| |____.DS_Store
#| |____CyclesCards.json
#| |____Carbon
#| | |____Carbon.json
# alternate: alias tree='find . -print | sed -e "s;[^/]*/;|____;g;s;____|; |;g"'
# use$ tree ; tree . ; tree [some-folder-path]
function tree {
    find ${1:-.} -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
}

function gcode {
    grep --ignore-case --no-messages --line-number --context=3 --recursive --binary-files=without-match "$1" *.{c,h}
}
