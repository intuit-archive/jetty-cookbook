user = node['jetty']['user']

user user do
  comment "I run Jetty"
  home node['jetty']['user_home']
  shell "/bin/bash"
end

package "jetty-hightide-server" do
  version "#{node['jetty']['version']}-1"
end

java_options = node['jetty']['java_options'].map { |key, value| "#{key}#{value}" }.join ' '

template "/etc/default/jetty" do
  source "jetty-config-options.erb"
  mode "0644"
  owner user
  group node['jetty']['group']
  variables :jetty_home   => node['jetty']['home'],
            :jetty_user   => user,
            :jetty_port   => node['jetty']['port'],
            :java_options => java_options
end

cookbook_file "/etc/init.d/jetty" do
  mode "0755"
  owner "root"
  group "root"
end

service "jetty" do
  supports :restart => true
  action [:enable, :start]
end
