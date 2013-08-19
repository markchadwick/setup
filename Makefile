SOLO=/usr/local/bin/chef-solo
config=./conf/$(shell hostname).json

all:
	$(SOLO) -l error -j $(config) -c ./solo.rb
