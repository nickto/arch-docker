FROM base/archlinux as arch

USER root 

# Update mirrorlist
RUN pacman --noconfirm -Syu
RUN pacman --noconfirm -S pacman-contrib
RUN curl -s "https://www.archlinux.org/mirrorlist/?country=FR&country=GB&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 -
RUN pacman --noconfirm -Syu

# Install sudo and vim
RUN pacman --noconfirm -S base-devel sudo vim

# Install aurman
WORKDIR /tmp
RUN echo "root ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
COPY ./dockerfiles/arch/install-aurman.sh ./install-aurman.sh
RUN bash ./install-aurman.sh

