FROM axigen/axigen:latest
RUN sed -i -e "s|mirrorlist=|#mirrorlist=|g" /etc/yum.repos.d/CentOS-*
RUN sed -i -e "s|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g" /etc/yum.repos.d/CentOS-*
RUN dnf install -y spamassassin epel-release
RUN dnf install -y clamav clamd clamav-update
ADD ./clamd.conf /clamd.conf
CMD freshclam && (clamd -F -c /clamd.conf &) && sa-update && (spamd &) && (sh /app/run_axigen.sh) 