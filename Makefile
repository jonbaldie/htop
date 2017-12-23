build:
	- docker build -t jonbaldie/htop:latest .

test:
	- docker run --rm jonbaldie/htop which htop | grep '/usr/bin/htop' 

