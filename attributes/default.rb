default['jetty']['version'] = '8.1.7.v20120910'
default['jetty']['home']  = '/opt/jetty'
default['jetty']['user']  = 'jetty'
default['jetty']['user_home']  = '/home/jetty'
default['jetty']['group'] = 'jetty'
default['jetty']['port']  = 8080
default['jetty']['log_dir'] = "#{node['jetty']['home']}/logs"
default['jetty']['java_options'] = {}
