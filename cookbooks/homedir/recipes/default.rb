
directory "/home/#{node[:user]}/.ssh"
homedir_link "~/.ssh/config" do
  to 'ssh_config'
end

homedir_link "~/.vimrc" do
  to 'vimrc'
end

package 'pass'
homedir_link "~/.password-store" do
  to "password-store"
end
