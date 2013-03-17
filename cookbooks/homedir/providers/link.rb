action :add do
  src = ::File.expand_path("#{::File.dirname(__FILE__)}/../links/#{new_resource.to}")
  dst = ::File.expand_path(new_resource.destination)

  link dst do
    to src
  end
end
