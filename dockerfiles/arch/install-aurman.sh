#!/usr/bin/env bash

function install_aur_package () {
    local package_name=${1}
    git clone https://aur.archlinux.org/$package_name.git
    chmod -R 0777 ./$package_name
    cd $package_name
    sudo -n -u nobody makepkg -si --skippgpcheck --noconfirm
    cd ..
    rm -rf $package_name
}

function install_arch_package () {
    local package_name=${1}
    pacman -S --noconfirm --needed $package_name 
}


echo "Installing dependecies from Arch repository..."
install_arch_package expac
install_arch_package git 
install_arch_package python
install_arch_package python-regex
install_arch_package python-requests
install_arch_package python-appdirs

echo "Installing aurman..."
install_aur_package aurman

