#######################################
# acpid module - disable.pp
# Puzzle ITC - haerry+puppet(at)puzzle.ch
# GPLv3
#######################################

# remove acpid
class acpid::disable inherits acpid::base {
    Package[acpid]{
        ensure => absent,
    }
    Service[acpid]{
        ensure => stopped,
        enable => false,
    }
}
