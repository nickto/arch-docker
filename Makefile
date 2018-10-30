USER="nickto"

build: 
	docker build -f dockerfiles/arch/Dockerfile -t ${USER}/arch .                               
	docker build -f dockerfiles/python/Dockerfile -t ${USER}/python .                           
	docker build -f dockerfiles/jupyter/Dockerfile -t ${USER}/jupyter . 
run:
	docker run -p 8888:8888 --name jupyter ${USER}/jupyter 
get-notebook-url:
	docker exec jupyter jupyter notebook list

