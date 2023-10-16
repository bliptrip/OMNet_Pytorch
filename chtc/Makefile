build:
	tar -C ../ -cJf omnet.tar.xz chtc common loss model evaluate.py
	tar -C ../dataset/data -cJf omnet_data.tar.xz .
	tar -C ../experiments -cJf experiment_os_rpmnet_noise.tar.xz experiment_os_rpmnet_noise

push:
	ssh maule2@transfer.chtc.wisc.edu mkdir -p /staging/maule2/projects
	scp ../datasets/data/omnet_data.tar.xz maule2@transfer.chtc.wisc.edu:/staging/maule2/projects/
	scp ../experiments/experiment_os_rpmnet_noise.tar.xz maule2@transfer.chtc.wisc.edu:/staging/maule2/projects/
	ssh maule2@submit-1.chtc.wisc.edu mkdir -p /staging/maule2/projects/omnet
	scp maule2@submit-1.chtc.wisc.edu:/staging/maule2/projects/

run:


pull:
