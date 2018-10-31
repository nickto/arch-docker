FROM nickto/arch:aurman

USER root 

# Update mirrorlist
RUN pacman --noconfirm -Syu
RUN pacman --noconfirm -S pacman-contrib
RUN curl -s "https://www.archlinux.org/mirrorlist/?country=FR&country=GB&protocol=https&use_mirror_status=on" | \
        sed -e 's/^#Server/Server/' -e '/^#/d' | \
        rankmirrors -n 50 -
RUN pacman --noconfirm -Syu

