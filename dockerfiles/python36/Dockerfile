FROM nickto/arch:pacman-mirrors-sorted

RUN pacman --noconfirm -S python2 # needed for aurman
USER aurman
RUN aurman --noconfirm --noedit --skip_news --skip_new_locations --pgp_fetch -S python36

# Set up pip for python 3.6
USER root
RUN pacman --noconfirm -S python-pip
RUN python3.6 -m ensurepip --default-pip  
RUN python3.6 -m easy_install pip
RUN python3.6 -m pip install --upgrade pip

# Set python 3.6 as default python
RUN rm /usr/sbin/python
RUN ln -s /usr/bin/python3.6 /usr/sbin/python
