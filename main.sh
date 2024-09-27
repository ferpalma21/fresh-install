sudo add-apt-repository ppa:gnome-terminator -y
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update -y
mkdir ~/Tools

#cool terminal
sudo apt-get install terminator -y

#basic tools
sudo apt install xclip locate wget curl htop git ruby-full zsh python3-ldap3 python3-yaml python3-impacket python3-pip python3.12-venv pipx -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
python3 -m venv .venv #virtual environment
source .venv/bin/activate #activate it the virtual environment
pip install pyyaml ldap3 impacket wheel


#misctools
sudo apt install flameshot -y;

#install .zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#install go
sudo tar -C /usr/local -xzf "$(wget https://go.dev/dl/go1.23.1.linux-386.tar.gz)"

#install nvm & node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.zshrc
nvm install node --lts

#install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

#install dotnet
sudo apt-get install -y dotnet-sdk-8.0

#install php
sudo apt install php php-common -y

#disk utilities packages
sudo apt install smartmontools testdisk gparted gnome-disk-utility baobab gpart -y

#network utilities packages
sudo apt install nmap traceroute wireshark tshark dnsrecon smbclient -y
sudo apt install nikto nmap onesixtyone redis-tools smbclient smbmap  sslscan  whatweb wkhtmltopdf -y

#install docker
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

#network enumeration packages
git clone https://github.com/cddmp/enum4linux-ng ~/Tools/enum4linux-ng

#reconnaissance | fuzzing | content discovery packages
git clone git@github.com:lanmaster53/recon-ng.git ~/Tools/recon-ng
git clone git@github.com:mrh0wl/Cloudmare.git ~/Tools/Cloudmare
git clone git@github.com:danielmiessler/SecLists.git ~/Tools/SecLists
go install github.com/ffuf/ffuf/v2@latest github.com/OJ/gobuster/v3@latest
curl -sL https://raw.githubusercontent.com/epi052/feroxbuster/main/install-nix.sh | bash -s $HOME/.local/bin
git clone git@github.com:digininja/CeWL.git ~/Tools/CeWL
git clone git@github.com:Syzik/DockerRegistryGrabber.git ~/Tools/DockerRegistryGrabber
python -m pip install -r ~/Tools/DockerRegistryGrabber/requirements.txt

#exploit tools
python3 -m pip install certipy-ad
git clone git@github.com:frohoff/ysoserial.git ~/Tools/ysoserial
git clone git@github.com:DominicBreuker/pspy.git ~/Tools/pspy
sudo apt install sqlmap -y
git clone git@github.com:snyk/zip-slip-vulnerability.git ~/Tools/zip-slip-vulnerability

#osint packages
git clone git@github.com:laramies/theHarvester.git ~/Tools/theHarvester
git clone git@github.com:sherlock-project/sherlock.git ~/Tools/sherlock

#steganography packages
sudo apt install steghide outguess -y
git clone https://github.com/solusipse/spectrology.git ~/Tools/spectrology

#forensic packages

sudo apt install exiftool -y

#secure deletion packages
sudo apt install shred wipe secure-delete bleachbit -y

#cracking packages
sudo apt install hashcat -y
