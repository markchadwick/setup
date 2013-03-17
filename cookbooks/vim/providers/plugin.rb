
action :add do
  vim_home    = "/home/#{node[:user]}/.vim"
  bundle_home = "#{vim_home}/bundle"
  root        = "#{bundle_home}/#{new_resource.name}"
 
  update_condition = if ::File.directory? root then
    "find #{root} -name .vim-plugin-updated -mtime +5 | grep .vim-plugin-updated"
  else
    nil
  end
 
  git root do
    repository  new_resource.repository
    reference   new_resource.reference
    action      :sync
    notifies    :run, "bash[touch-vim-plugin-update-#{new_resource.name}]"
    only_if     update_condition
  end

  bash "touch-vim-plugin-update-#{new_resource.name}" do
    code    "touch -m #{root}/.vim-plugin-updated"
    action  :nothing
  end
end
