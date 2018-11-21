function connect_ubuntu {
  if [ "$1" == "" ]
  then
    echo "Must pass the hostname."
  else
    ssh -i ~/.ssh/id_rsa_vallum_common ubuntu@${1}
  fi
}

function connect_vagrant {
    if [ "$1" == "" ]
    then
        echo "Must pass the hostname."
    else
        ssh -i ~/.ssh/id_rsa_vallum_common vagrant@${1}
    fi
}

function sftp_ubuntu {
    if [ "$1" == "" ]
    then
        echo "Must pass the hostname."
    else
        sftp -i ~/.ssh/id_rsa_vallum_common ubuntu@${1}
    fi
}

function sftp_vagrant {
    if [ "$1" == "" ]
    then
        echo "Must pass the hostname."
    else
        sftp -i ~/.ssh/id_rsa_vallum_common vagrant@${1}
    fi
}

function parse_git_branch {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function get_gcc_macros {
    gcc -dM -E -x c /dev/null
}

function get_g++_macros {
    g++ -dM -E -x c++ /dev/null
}

function get_clang_macros {
    clang -dM -E -x c /dev/null
}

function get_clang++_macros {
    clang++ -dM -E -x c++ /dev/null
}

function get_compiler {
    if [ "$1" == "" ]
    then
	   echo "Must pass a shared object (.so)"
	      return
    fi
    strings -a "$1" | grep "GCC"
}

function mcd {
    if [ “$1” == “” ]
    then
        echo “Refusing to make directory with blank name”
    else
        mkdir -p "$1" && cd "$1"
    fi
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
function view_tree {
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
