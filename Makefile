#Time-stamp: <2017-07-21 17:53:08 hamada>

DATADIR = /mnt/data/ethereum/livenet_data
COINBASE= "0x5d9cff8a8a2bb28324a92ffc4c60dec3420395a2"

connect.livenet:
	geth --datadir ${DATADIR} 2>> ${DATADIR}/e01.log 


attache:
	geth --datadir ${DATADIR} attach ipc:${DATADIR}/geth.ipc


mine:
	geth --datadir ${DATADIR} --etherbase ${COINBASE} --mine 2>&1 |tee -a ${DATADIR}/mine.log


install:
	sudo apt update
	sudo apt -y install software-properties-common
	sudo add-apt-repository -y ppa:ethereum/ethereum
	sudo apt update
	sudo apt -y install ethereum
	mkdir -p ${DATADIR}


