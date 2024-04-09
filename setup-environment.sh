#!/bin/bash

# Colors
PURPLE='\033[0;35m'
WHITE='\033[1;37m'
NC='\033[0m'


echo -e "${WHITE}Initialzing :)${NC}"

if [ "$EUID" -ne 0 ]
    then echo "Run me as root >("
    exit
fi

# Set user home
USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
echo -e "\n${PURPLE}User home: ${USER_HOME}${NC}"



# Update package repositories
echo -e "\n${PURPLE}Updating pacman repositories${NC}"
pacman -Syu --noconfirm

# Install language sdks and runtimes
echo -e "\n${PURPLE}Installing language SDKs and runtimes${NC}"
pacman -S --noconfirm nodejs npm dotnet-sdk-6.0 dotnet sdk-8.0

# Install utils
echo -e "\n${PURPLE}Installing unzip${NC}"
pacman -S --noconfirm git unzip 

# Install nvim
echo -e "\n${PURPLE}Installing neovim${NC}"
pacman -S --noconfirm neovim

# Install packer
echo -e "\n${PURPLE}Setting up neovim environment${NC}"
git clone --depth 1 https://github.com/wbthomason/packer.nvim $USER_HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
cp -r ./nvim/* $USER_HOME/.config/nvim

# Setup dotnet
echo -e "\n${PURPLE}Setting up .NET workloads and tools${NC}"
dotnet workload update
dotnet tool install --global dotnet-ef

# Setup rust
echo -e "\n${PURPLE}Setting up RUST${NC}"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $USER_HOME/.cargo/env
rustup self update

echo -e "\n${WHITE}Finished :D${NC}"
