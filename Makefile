#Time-stamp: <2017-07-21 16:25:21 hamada>

DATADIR = /mnt/data/ethereum/livenet_data


connect.livenet:
	geth --datadir ${DATADIR} 2>> ${DATADIR}/e01.log 


attache:
	geth --datadir ${DATADIR} attach ipc:${DATADIR}/geth.ipc


install:
	sudo apt update
	sudo apt -y install software-properties-common
	sudo add-apt-repository -y ppa:ethereum/ethereum
	sudo apt update
	sudo apt -y install ethereum


