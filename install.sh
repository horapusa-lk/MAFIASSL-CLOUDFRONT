#!/bin/bash

clear

#Font Colors

RED="\e[31m"

GREEN="\e[32m"

YELLOW="\e[33m"

BLUE="\e[34m"

CYAN="\e[36m"

ENDCOLOR="\e[0m"

#public ip

pub_ip=$(wget -qO- https://ipecho.net/plain ; echo)

#root check

if ! [ $(id -u) = 0 ]; then

   echo -e "${RED}Plese run the script with root privilages!${ENDCOLOR}"

   exit 1

fi

spinner()

{

    #Loading spinner

    local pid=$!

    local delay=0.75

    local spinstr='|/-\'

    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do

        local temp=${spinstr#?}

        printf " [%c]  " "$spinstr"

        local spinstr=$temp${spinstr%"$temp"}

        sleep $delay

        printf "\b\b\b\b\b\b"

    done

    printf "    \b\b\b\b"

}

vps_update()

{

sudo apt-get update

}

vps_upgrade()

{

sudo apt-get -y upgrade

apt install screenfetch  

}

vps_dropbear()

{

apt install -y dropbear

}

vps_squid()

{

apt install -y squid

}

vps_stunnel()

{

apt install -y stunnel 

}

vps_cmake()

{

apt install -y cmake 

}

vps_make()

{

apt install -y make 

}

vps_gcc()

{

apt install -y gcc 

}

vps_builde()

{

apt install -y build-essential 

}

vps_nodejs()

{

apt install -y nodejs 

}

vps_unzip()

{

apt install -y unzip 

}

vps_zip() 

{

apt install -y zip 

}

vps_tmux()

{

apt install -y tmux 

}

vps_python3() 

{

apt install -y python3 

}

vps_screenfetch()

{

apt install -y screenfetch

}

echo -ne "\n${YELLOW}VPS Update ............."

vps_update >/dev/null 2>&1 &

spinner

echo -ne "\tdone"

echo -ne "\n${CYAN}VPS Upgrade............."

vps_upgrade >/dev/null 2>&1 &

spinner

echo -ne "\tdone"

echo -ne "\n${RED}Installing Dropbear............."

vps_dropbear >/dev/null 2>&1 &

spinner

echo -ne "\tdone"

echo -ne "\n${YELLOW}Installing Squid............."

vps_squid >/dev/null 2>&1 &

spinner

echo -ne "\tdone"

echo -ne "\n${YELLOW}Installing Stunnel............."

vps_stunnel >/dev/null 2>&1 &

spinner

echo -ne "\tdone"

echo -ne "\n${YELLOW}Installing cmake............."

vps_cmake >/dev/null 2>&1 &

spinner

echo -ne "\tdone"

echo -ne "\n${CYAN}Installing make............."

vps_make >/dev/null 2>&1 &

spinner

echo -ne "\tdone"

echo -ne "\n${RED}Installing Gcc............."

vps_gcc >/dev/null 2>&1 &

spinner

echo -ne "\tdone"

echo -ne "\n${RED}Lnstalling build-essential ............"

vps_build >/dev/null 2>&1 &

spinner

echo -ne "\tdone"

echo -ne "\n${YELLOW}Installing Nodejs............."

vps_nodejs >/dev/null 2>&1 &

spinner

echo -ne "\tdone"

echo -ne "\n${YELLOW}Installing Unzip............."

vps_unzip >/dev/null 2>&1 &

spinner

echo -ne "\tdone"

echo -ne "\n${YELLOW}Installing Zip............."

vps_zip >/dev/null 2>&1 &

spinner

echo -ne "\tdone"

echo -ne "\n${CYAN}Installing Tmux ............."

vps_tmux >/dev/null 2>&1 &

spinner

echo -ne "\tdone"

echo -ne "\n${RED}Installing Python3............."

vps_python3 >/dev/null 2>&1 &

spinner

echo -ne "\tdone"

echo -ne "\n${RED}Installing Screenfetch............"

vps_screenfetch >/dev/null 2>&1 &

spinner

echo -ne "\tdone"

echo -e "${ENDCOLOR}"

clear

wget https://github.com/IAmDevilMafia/MAFIASSL-CLOUDFRONT/raw/main/mafia.sh

chmod 777 mafia.sh
./mafia.sh

clear
