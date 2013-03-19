
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

vim_plugin 'golang' do
  repository  'https://github.com/jnwhiteh/vim-golang.git'
end

vim_plugin 'pyflakes' do
  repository  'https://github.com/kevinw/pyflakes-vim.git'
end

vim_plugin 'l9' do
  repository  'https://github.com/vim-scripts/L9.git'
end

vim_plugin 'fuzzy-finder' do
  repository  'https://github.com/vim-scripts/FuzzyFinder.git'
end

vim_plugin 'less-css' do
  repository  'https://github.com/groenewege/vim-less.git'
end

vim_plugin 'stylus-css' do
  repository  'https://github.com/wavded/vim-stylus.git'
end

vim_plugin 'scala' do
  repository  'https://github.com/derekwyatt/vim-scala.git'
end

vim_plugin 'coffeescript' do
  repository  'https://github.com/kchmck/vim-coffee-script.git'
end

vim_plugin 'trailing-whitespace' do
  repository  'https://github.com/bronson/vim-trailing-whitespace.git'
end

vim_plugin 'powerline' do
  repository  'https://github.com/Lokaltog/powerline.git'
  reference   'develop'
end
