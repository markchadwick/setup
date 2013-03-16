SOLO=chef-solo
config=./conf/$(shell hostname).json

all:
	$(SOLO) -j $(config) -c ./solo.rb
