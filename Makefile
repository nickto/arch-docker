USER="nickto"

build: 
	set -e
	docker build -f aurman/Dockerfile -t ${USER}/arch:aurman ./aurman
	docker build -f dockerfiles/arch/Dockerfile -t ${USER}/arch:pacman-mirrors-sorted .
	docker build -f dockerfiles/python/Dockerfile -t ${USER}/python-arch . 
	docker build -f dockerfiles/python36/Dockerfile -t ${USER}/python:3.6-arch .
	docker build -f dockerfiles/jupyter/Dockerfile -t ${USER}/jupyter . 
	docker build -f dockerfiles/jupyter-python36/Dockerfile -t ${USER}/jupyter:python3.6 . 
run:
	docker run -p 8888:8888 --name jupyter ${USER}/jupyter 
get-notebook-url:
	docker exec ${USER}/jupyter jupyter notebook list

