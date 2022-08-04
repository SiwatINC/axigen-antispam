FROM axigen/axigen:latest
RUN sed -i -e "s|mirrorlist=|#mirrorlist=|g" /etc/yum.repos.d/CentOS-*
RUN sed -i -e "s|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g" /etc/yum.repos.d/CentOS-*
RUN dnf install -y spamassassin epel-release
RUN dnf install -y clamav clamd clamav-update
CMD (spamd &) && (sh /app/run_axigen.sh) 