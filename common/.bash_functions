function connect_ubuntu {
  if [ "$1" == "" ]
  then
    echo "Must pass the hostname."
  else
    ssh -i ~/.ssh/id_rsa_vallum_common ubuntu@${1}
  fi
}

function vbox {
    if [ -x /usr/bin/VBoxManage ]
    then
        vbox_ip=$(VBoxManage guestproperty enumerate "Vallum Software Ubuntu 16.04" \
            | grep IP | cut -f3 -d':' | cut -f1 -d',' | tr -d ' ')
        echo "ssh into ${vbox_ip}"
        ssh -p 3022 osboxes.org@${vbox_ip}
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

function parse_git_branch {
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
