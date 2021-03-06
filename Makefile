dir := $(shell pwd)

install:
	sudo echo "SUPERUSER"

	sudo touch /usr/local/bin/push
	sudo chmod 0755 /usr/local/bin/push
	echo "#!/bin/bash" | sudo tee /usr/local/bin/push
	echo "dir=\"${dir}\"" | sudo tee --append /usr/local/bin/push
	cat ./src/push.sh | sudo tee --append /usr/local/bin/push

	sudo touch /usr/local/bin/pop
	sudo chmod 0755 /usr/local/bin/pop
	echo "#!/bin/bash" | sudo tee /usr/local/bin/pop
	echo "dir=\"${dir}\"" | sudo tee --append /usr/local/bin/pop
	cat ./src/pop.sh | sudo tee --append /usr/local/bin/pop
