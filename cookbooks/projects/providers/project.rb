
action :add do

  directory node[:projects][:home] do
    owner     node[:user]
    group     node[:user]
    recursive true
  end

  root = if new_resource.category
    directory "#{node[:projects][:home]}/#{new_resource.category}" do
      owner     node[:user]
      group     node[:user]
      recursive true
    end
    "#{node[:projects][:home]}/#{new_resource.category}/#{new_resource.name}"
  else
    "#{node[:projects][:home]}/#{new_resource.name}"
  end

  git root do
    repository  new_resource.repository
    reference   new_resource.reference
    action      :sync
    not_if      { ::File.directory? root }
  end

  link new_resource.link_to do
    to      root
    only_if { not new_resource.link_to.nil? }
  end
end
