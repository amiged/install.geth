#Time-stamp: <2017-07-21 15:06:01 hamada>

all:
	sudo apt update
	sudo apt -y install software-properties-common
	sudo add-apt-repository -y ppa:ethereum/ethereum
	sudo apt update
	sudo apt -y install ethereum


all.0:
	sudo apt install curl
	bash <(curl -L https://install-geth.ethereum.org)
