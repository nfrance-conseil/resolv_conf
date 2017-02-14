class resolv_conf(
    String        $search_keyword    = $resolv_conf::params::search_keyword,
    String        $search            = $resolv_conf::params::search,
    Array[String] $options           = $resolv_conf::params::options,
    Array[String] $nameservers       = $resolv_conf::params::nameservers,
    String        $resolv_conf_path  = $resolv_conf::params::resolv_conf_path,
    String        $resolv_conf_owner = $resolv_conf::params::resolv_conf_owner,
    String        $resolv_conf_group = $resolv_conf::params::resolv_conf_group,
    String        $resolv_conf_mode  = $resolv_conf::params::resolv_conf_mode,
) inherits resolv_conf::params{


  $template_vars = {
    "search_keyword" => $search_keyword,
    "search"         => $search,
    "nameservers"    => $nameservers,
    "options"        => $options,
  }

  file { $resolv_conf_path:
    ensure  => file,
    owner   => $resolv_conf_owner,
    group   => $resolv_conf_group,
    mode    => $resolv_conf_mode,
    content => epp("${module_name}/resolv.conf.epp", $template_vars),
  }
}
