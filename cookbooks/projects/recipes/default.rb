
directory node[:projects][:home] do
  owner   node[:user]
  group   node[:user]
end
