directory "/home/#{node[:user]}/.ssh"

homedir_link "~/.ssh/config" do
  to 'ssh_config'
end

homedir_link "~/.vimrc" do
  to 'vimrc'
end

homedir_link "~/.gitconfig" do
  to 'gitconfig'
end

homedir_link "~/.gitignore" do
  to 'gitignore'
end

homedir_link "~/.tmux.conf" do
  to 'tmux.conf'
end
