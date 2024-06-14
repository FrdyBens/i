#!/bin/bash

# Update and upgrade system packages
sudo apt update
sudo apt upgrade -y

# Install system dependencies
sudo apt install -y docker-ce curl wget

# Install Python and dependencies
sudo apt install -y python3 python3-pip
sudo pip3 install pyperclip

# Install tkinter package for Python (if not already installed)
sudo apt install -y python3-tk

# Prepare installation directory
mkdir -p ~/cy_install
cd ~/cy_install

# Clone CyberPanel repository
git clone https://github.com/FrdyBens/cyberpanel.git
cd cyberpanel

# Make installation script executable
chmod +x install_cyberpanel.sh

# Run CyberPanel installation script
./install_cyberpanel.sh

# Install Python dependencies for CyberPanel
sudo apt install -y $(grep -v '^#' requirements.txt)

# Notify user that CyberPanel installation is complete
echo "CyberPanel installation and setup completed."

# Navigate back to the home directory
cd ~

# Clone workspaces-images repository
git clone https://github.com/kasmtech/workspaces-images.git
cd workspaces-images

# Set execute permissions for Dockerfile scripts
chmod +x dockerfile-kasm-thunderbird
chmod +x dockerfile-kasm-vs-code.sh
chmod +x dockerfile-kasm-filezilla.sh
chmod +x dockerfile-kasm-postman.sh
chmod +x dockerfile-kasm-terminal.sh
chmod +x dockerfile-kasm-qbittorrent.sh

# Generate random ports and password
p1=$(shuf -i 10000-65535 -n 1)
p2=$(shuf -i 10000-65535 -n 1)
p3=$(shuf -i 10000-65535 -n 1)
p4=$(shuf -i 10000-65535 -n 1)
p5=$(shuf -i 10000-65535 -n 1)
p6=$(shuf -i 10000-65535 -n 1)
pass="S1<z£jw&89y[{en^5PNOK+=u"

# Define variables for Docker images and tags
t="kasmweb"
n1="thunderbird"
n2="vs-code"
n3="qbittorrent"
n4="terminal"
n5="postman"
n6="filezilla"
n0="dockerfile-kasm-"
v1="dev"

# Build Docker images and run containers
for container in "${n1}" "${n2}" "${n3}" "${n4}" "${n5}" "${n6}"; do
    # Build Docker image
    sudo docker build -t "${t}/${container}:${v1}" -f "${n0}${container}" .

    # Run Docker container
    case "${container}" in
        "${n1}")
            sudo docker run --rm -it --shm-size=512m -p "${p1}:6901" -e VNC_PW="${pass}" "${t}/${container}:${v1}"
            ;;
        "${n2}")
            sudo docker run --rm -it --shm-size=512m -p "${p2}:6901" -e VNC_PW="${pass}" "${t}/${container}:${v1}"
            ;;
        "${n3}")
            sudo docker run --rm -it --shm-size=512m -p "${p3}:6901" -e VNC_PW="${pass}" "${t}/${container}:${v1}"
            ;;
        "${n4}")
            sudo docker run --rm -it --shm-size=512m -p "${p4}:6901" -e VNC_PW="${pass}" "${t}/${container}:${v1}"
            ;;
        "${n5}")
            sudo docker run --rm -it --shm-size=512m -p "${p5}:6901" -e VNC_PW="${pass}" "${t}/${container}:${v1}"
            ;;
        "${n6}")
            sudo docker run --rm -it --shm-size=512m -p "${p6}:6901" -e VNC_PW="${pass}" "${t}/${container}:${v1}"
            ;;
        *)
            echo "Unknown container: ${container}"
            ;;
    esac
done
