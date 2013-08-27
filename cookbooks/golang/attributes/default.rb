default[:golang][:version]   = '1.1.2'
default[:golang][:root]      = "/home/#{node[:user]}/opt/go"
default[:golang][:install]   = "/home/#{node[:user]}/opt/go-#{node[:golang][:version]}"
default[:golang][:disturl]   = "https://go.googlecode.com/files/go#{node[:golang][:version]}.linux-#{node[:arch]}.tar.gz"
default[:golang][:path]      = "/home/#{node[:user]}/.go-path-#{node[:golang][:version]}"
