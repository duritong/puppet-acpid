# manage acpid and all the necessary things
class acpid::base {
  package{'acpid':
    ensure => present,
  } -> service{'acpid':
    ensure    => running,
    enable    => true,
    hasstatus => true,
  }
}
