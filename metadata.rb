name              'nagios'
maintainer        'Tim Smith'
maintainer_email  'tsmith84@gmail.com'
license           'Apache 2.0'
description       'Installs and configures Nagios server'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '6.0.0'

recipe 'nagios', 'Includes the server recipe.'
recipe 'nagios::server', 'Installs and configures a nagios server'
recipe 'nagios::pagerduty', 'Integrates contacts w/ PagerDuty API'

%w{ apache2 build-essential php nginx nginx_simplecgi nrpe }.each do |cb|
  depends cb
end

%w{ debian ubuntu redhat centos fedora scientific amazon oracle }.each do |os|
  supports os
end
