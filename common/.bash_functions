parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function get_compiler {
    if [ "$1" == "" ]
    then
	echo "Must pass a shared object (.so)"
	return
    fi
    strings -a "$1" | grep "GCC"
}

mcd () {
 if [ “$1” == “” ]
 then
   echo “Refusing to make directory with blank name”
   return
 fi
 mkdir -p "$1" && cd "$1"
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
    if [ "$1" == "" ]
    then
        echo "Must specify something to find in code."
        exit 1
    fi
    grep --ignore-case --no-messages --line-number --context=3 --recursive --binary-files=without-match "$1" *.{c,cpp,h,hpp}
}
