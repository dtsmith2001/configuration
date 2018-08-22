# set to 1 to enable 64bits target by default (32bit is the default)
set $64BITS = 1

set confirm off
set verbose off
set prompt \033[31mgdb$ \033[0m

set output-radix 0x10
set input-radix 0x10

# These make gdb never pause in its output
#set height 0
#set width 0

set pagination off

set print demangle on

set pagination off

source ~/.stl-views.gdb
