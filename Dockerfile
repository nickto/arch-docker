FROM archlinux/base
USER root

# Update
RUN pacman --noconfirm -Syu
RUN pacman --noconfirm -Sy base-devel

