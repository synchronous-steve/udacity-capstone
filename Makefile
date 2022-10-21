setup:
	apt update
	
	# fetch and permission hadolint
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64 \
	&& chmod +x /bin/hadolint 

	# install html lint tool
	apt install tidy -y

lint:
	# lint Dockerfile
	hadolint Dockerfile
		
	# lint html for index page
	tidy -qe app_dir/demo-index.html
	