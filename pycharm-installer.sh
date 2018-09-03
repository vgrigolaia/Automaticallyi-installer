#!/bin/bash

# run as sudo or root
# Install Repository
sudo cat << EOF > /etc/yum.repos.d/pycharm.repo
[phracek-PyCharm]
name=Copr repo for PyCharm owned by phracek
baseurl=https://copr-be.cloud.fedoraproject.org/results/phracek/PyCharm/fedora-$releasever-$basearch/
skip_if_unavailable=True
gpgcheck=1
gpgkey=https://copr-be.cloud.fedoraproject.org/results/phracek/PyCharm/pubkey.gpg
enabled=1
enabled_metadata=1
EOF

# automatically install Packages 
dnf copr enable phracek/PyCharm -y 
dnf install pycharm-community -y
