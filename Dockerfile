FROM nickto/arch:base-devel

RUN pacman --noconfirm -S git

# Create new user
RUN useradd -m yay -s /bin/bash
RUN cp /etc/sudoers /etc/sudoers.bak
RUN echo 'yay ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# Install yay
USER yay
WORKDIR /home/yay
RUN git clone https://aur.archlinux.org/yay.git
WORKDIR /home/yay/yay
RUN makepkg --noconfirm -si

# Remove the user
USER root
RUN userdel -r yay
RUN cp /etc/sudoers.bak /etc/sudoers
RUN rm /etc/sudoers.bak
WORKDIR /

