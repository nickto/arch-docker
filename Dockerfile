FROM nickto/arch:base-devel
WORKDIR /tmp
RUN pacman --noconfirm -S git
RUN git clone https://aur.archlinux.org/yay.git
RUN cd yay 
RUN makepkg -si

