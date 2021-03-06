default['yum']['remi-test']['repositoryid'] = 'remi'
default['yum']['remi-test']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
default['yum']['remi-test']['gpgcheck'] = true
default['yum']['remi-test']['enabled'] = false
default['yum']['remi-test']['managed'] = false

case node['platform']
when 'fedora'
  case node['platform_version'].to_i
  when 20
    default['yum']['remi-test']['baseurl'] = 'http://rpms.famillecollet.com/fedora/20/debug-remi-test/$basearch/'
    default['yum']['remi-test']['description'] = 'Les RPM de remi de PHP 5.6 pour Fedora Linux 20 - $basearch - debuginfo'
  when 21
    default['yum']['remi-test']['baseurl'] = 'http://rpms.famillecollet.com/fedora/21/debug-remi-test/$basearch/'
    default['yum']['remi-test']['description'] = 'Les RPM de remi de php 5.6 pour Fedora Linux 21 - $basearch - debuginfo'
  end
else
  case node['platform_version'].to_i
  when 5
    default['yum']['remi-test']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/5/debug-remi-test/$basearch/'
    default['yum']['remi-test']['description'] = 'Les RPM de remi en test pour Enterprise Linux 5 - $basearch - debuginfo'
  when 6
    default['yum']['remi-test']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/6/debug-remi-test/$basearch/'
    default['yum']['remi-test']['description'] = 'Les RPM de remi en test pour Enterprise Linux 6 - $basearch - debuginfo'
  when 7
    default['yum']['remi-test']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/7/debug-remi-test/$basearch/'
    default['yum']['remi-test']['description'] = 'Les RPM de remi en test pour Enterprise Linux 7 - $basearch - debuginfo'
  end
end
