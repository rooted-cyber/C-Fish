packages () {
	printf "\n\n\033[92m Installing Requirements....\n\n"
	
	apt update
	apt upgrade
	apt install openssh
	apt install wget
	apt install php
	apt install curl
	apt install python
	apt install toilet
	pip install lolcat
	apt install cowsay
	checking-packages
	sleep 2
	clear
	printf "\n\n[+] Downloading sites.zip....\n"
	download-sites
	sleep 1
	check-sites
	sleep 1
	un
	ch-file
	checking-ngrok
	ngrok2
	echo "#!/data/data/com.termux/files/usr/bin/sh" >> $PREFIX/bin/C-Fish
	echo "cd ~/C-Fish" >> $PREFIX/bin/C-Fish
	echo "bash fish.sh" >> $PREFIX/bin/C-Fish
	chmod 777 $PREFIX/bin/C-Fish
	printf "\033[96m [√] Now you can use this command for start :- fis\n\n"
	exit
	}
	check-sites () {
		cd ~/C-Fish
		if [ -e sites.zip ];then
		echo
		else
		download-sites
		fi
		}
	download-sites () {
		cd ~/C-Fish
		if [ -e sites.zip ];then
		echo
		else
		wget https://github.com/rooted-cyber/upload/raw/master/sites.zip
		fi
		}
	ch-file () {
		cd ~/C-Fish
		if [ -e .color.py ];then
		echo
		else
		un
		fi
		}
	un () {
		
		cd ~/C-Fish
		if [ -e sites ];then
		echo
		else
		printf "\n[√] Download complete\n"
		printf "\n\n[+] Unzip sites.zip\n"
		unzip sites.zip > /dev/null 2>&1
		fi
		}
		checking-ngrok () {
			cd ~/C-Fish
			if [ -e ngrok ];then
			chmod 700 ngrok
			printf "\n[√] Ngrok Available\n"
			else
			clear
			printf "\n\033[92m Checking ngrok in home directory..."
			ngrok3
			#printf "\n\n\033[91m [×] Ngrok not found !!!\n\n"
			printf "\033[92m [+] Downloading ngrok....\n"
			wget https://github.com/rooted-cyber/upload/raw/master/ngrok.zip
			printf "\n[√] Download complete\n"
			printf "\n[+] Unzip ngrok.zip\n"
			unzip ngrok.zip
			chmod 700 ngrok
			rm -f ngrok.zip
			fi
			}
			ngrok2 () {
				cd ~/C-Fish
				if [ -e ngrok ];then
				echo
				else
				checking-ngrok
				fi
				}
				ngrok3 () {
					cd ~
					if [ -e ngrok ];then
					printf "\n\n Ngrok found in home directory"
					printf "\n\n Ngrok coping......}n"
					cp -f ngrok ~/C-Fish
					else
					printf "\n \033[91m [×] ngrok not found in home directory\n"
					fi
					}
	wget-package () {
		cd $PREFIX/bin
		if [ -e wget ];then
		printf "\033[92m \n Wget is installed\n"
		else
		dpkg --configure -a
		apt --fix-broken install
		packages
		fi
		}
		python-package () {
		cd $PREFIX/bin
		if [ -e python ];then
		printf "\033[92m \n python is installed\n"
		else
		dpkg --configure -a
		apt --fix-broken install
		packages
		fi
		}
		
		cowsay-package () {
		cd $PREFIX/bin
		if [ -e cowsay ];then
		printf "\033[92m \n cowsay is installed\n"
		else
		dpkg --configure -a
		apt --fix-broken install
		packages
		fi
		}
		toilet-package () {
		cd $PREFIX/bin
		if [ -e toilet ];then
		printf "\033[92m \n toilet is installed\n"
		else
		dpkg --configure -a
		apt --fix-broken install
		packages
		fi
		}
		curl-package () {
		cd $PREFIX/bin
		if [ -e curl ];then
		printf "\033[92m \n curl is installed\n"
		else
		dpkg --configure -a
		apt --fix-broken install
		packages
		fi
		}
		lolcat-package () {
		cd $PREFIX/bin
		if [ -e lolcat ];then
		printf "\033[92m \n lolcat is installed\n"
		else
		dpkg --configure -a
		apt --fix-broken install
		packages
		fi
		}
		php-package () {
		cd $PREFIX/bin
		if [ -e php ];then
		printf "\033[92m \n php is installed\n"
		else
		dpkg --configure -a
		apt --fix-broken install
		packages
		fi
		}
		openssh-package () {
		cd $PREFIX/bin
		if [ -e ssh ];then
		printf "\033[92m \n openssh is installed\n"
		else
		dpkg --configure -a
		apt --fix-broken install
		packages
		fi
		}
		checking-packages () {
			lolcat-package
			python-package
			cowsay-package
			toilet-package
			php-package
			curl-package
			openssh-package
			wget-package
			}
			pwd
			packages
		
		
	
