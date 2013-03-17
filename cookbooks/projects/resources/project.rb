actions :add
default_action :add

attribute :name, :kind_of => String, :name_attribute => true
attribute :repository, :kind_of => String
attribute :reference, :kind_of => String, :default => 'master'
attribute :link_to, :kind_of => String, :default => nil
attribute :category, :kind_of => String, :default => nil
attribute :force, :kind_of => [TrueClass, FalseClass], :default => false
