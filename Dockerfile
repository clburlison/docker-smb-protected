FROM jenserat/samba-publicshare
MAINTAINER Clayton Burlison <clayton.burlison@gmail.com>

VOLUME /repo

COPY smb.conf /etc/samba/smb.conf
ADD setup.sh /setup.sh
RUN /setup.sh

# CMD ["/setup.sh"]