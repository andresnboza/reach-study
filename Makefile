rock:
	cd RockPapperScissors && 

linux_install:
	sudo apt install make curl
	sudo apt install ca-certificates gnupg lsb-release
	sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
	sudo echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \ $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io
	@echo "Downloading reach"
	mkdir -p ~/reach && cd ~/reach
	curl https://docs.reach.sh/reach -o reach ; chmod +x reach
	./reach version

mac_install:
	make --version
	docker-compose --version
	mkdir -p ~/reach && cd ~/reach
	curl https://docs.reach.sh/reach -o reach ; chmod +x reach
	$ ./reach version

docker_compose_installation_0:
	sudo apt purge docker-desktop || true
	sudo apt install gnome-terminal
	sudo apt-get update

docker_compose_installation_1:
	sudo apt-get install ./docker-desktop-<version>-<arch>.deb
	systemctl --user start docker-desktop