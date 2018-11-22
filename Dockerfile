FROM nickto/arch:base-devel

RUN pacman --noconfirm -S git

# Create new user
RUN useradd -m yay -s /bin/bash
RUN echo 'yay ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# Install yay
USER yay
WORKDIR /home/yay
RUN git clone https://aur.archlinux.org/yay.git
WORKDIR /home/yay/yay
RUN makepkg --noconfirm -si

USER root
WORKDIR /

