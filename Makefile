setup:
	apt update
	
	# fetch and permission hadolint
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64 \
	&& chmod +x /bin/hadolint 

	# install nginx for config test
	#apt install nginx -y need to do further testing
	
	# install html lint tool
	apt install tidy -y

lint:
	# lint Dockerfile
	hadolint Dockerfile
	
	# lint nginx config files
	# nginx -t     - having problems here https://stackoverflow.com/questions/30973774/nginx-duplicate-default-server-error
	
	# lint html for index page
	tidy -qe app_dir/demo-index.html
	