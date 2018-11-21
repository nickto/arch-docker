FROM archlinux/base
USER root
RUN pacman --noconfirm -S base-devel
