#######################################
# acpid module - disable.pp
# Puzzle ITC - haerry+puppet(at)puzzle.ch
# GPLv3
#######################################

# remove acpid
class acpid::disable {
    package{'acpid':
        ensure => absent,
    }
}
