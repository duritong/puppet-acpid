#######################################
# acpid module
# Puzzle ITC - haerry+puppet(at)puzzle.ch
# GPLv3
#######################################

# modules_dir { "acpid": }
class acpid {
    include acpid::base 
}

class acpid::base {
    package{acpid:
        ensure => present,
    }

    service{acpid:
        ensure => running,
        enable => true,
        hasstatus => true,
        require => Package[acpid],
    }
}
