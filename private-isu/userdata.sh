#!/bin/bash

# ssh keys
curl https://github.com/yuyamada.keys >> /home/ubuntu/.ssh/authorized_keys
curl https://github.com/soya2222.keys >> /home/ubuntu/.ssh/authorized_keys
curl https://github.com/yutaro-t.keys >> /home/ubuntu/.ssh/authorized_keys

# tool installation
apt update

# query-digester
apt -y install percona-toolkit
git clone https://github.com/kazeburo/query-digester.git /home/ubuntu/query-digester
cd /home/ubuntu/query-digester && install query-digester /usr/local/bin

# dstat
apt -y install dstat

# alp
apt -y install alp

# netdata
curl https://my-netdata.io/kickstart.sh > /tmp/netdata-kickstart.sh && sh /tmp/netdata-kickstart.sh

# neovim
add-apt-repository ppa:neovim-ppa/stable && apt -y install neovim
git clone https://github.com/yuyamada/nvim-conf.git /home/ubuntu/.config/nvim
mkdir /root/.config && ln -s /home/ubuntu/.config/nvim /root/.config/nvim
