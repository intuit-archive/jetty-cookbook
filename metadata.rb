name             "jetty"
maintainer       "Intuit, Inc."
maintainer_email "richard_mendes@intuit.com"
license          "Apache 2.0"
description      "Installs/Configures the jetty web server"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.1"

%w{ centos rhel }.each do |os|
  supports os
end

