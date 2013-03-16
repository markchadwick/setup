
VIMHOME = "/home/#{node[:user]}/.vim"

# -----------------------------------------------------------------------------
# Install Pathogen
# -----------------------------------------------------------------------------

['autoload', 'bundle'].each do |d|
  directory "#{VIMHOME}/#{d}" do
    mode    0775
    user    node[:user]
    group   node[:user]
  end
end

remote_file "#{VIMHOME}/autoload/pathogen.vim" do
  source  'https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim'
  mode    0664
  user    node[:user]
  group   node[:user]
  action  :create_if_missing
end

# -----------------------------------------------------------------------------
# Plugins
# -----------------------------------------------------------------------------

git "#{VIMHOME}/bundle/golang" do
  repository  'https://github.com/jnwhiteh/vim-golang.git'
  reference   'master'
  action      :sync
end
