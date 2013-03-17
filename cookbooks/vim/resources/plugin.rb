actions :add
default_action :add

attribute :name, :kind_of => String, :name_attribute => true
attribute :repository, :kind_of => String
attribute :reference, :kind_of => String, :default => 'master'
