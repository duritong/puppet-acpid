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
