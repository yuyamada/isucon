#!/bin/bash

# ssh keys
curl https://github.com/yuyamada.keys >> /home/ubuntu/.ssh/authorized_keys
curl https://github.com/soya2222.keys >> /home/ubuntu/.ssh/authorized_keys
curl https://github.com/yutaro-t.keys >> /home/ubuntu/.ssh/authorized_keys

# query-digester
sudo apt update && sudo apt -y install percona-toolkit
git clone https://github.com/kazeburo/query-digester.git /home/ubuntu/query-digester
cd /home/ubuntu/query-digester && sudo install query-digester /usr/local/bin

# netdata

# dstat

# neovim
sudo add-apt-repository ppa:neovim-ppa/stable && sudo apt -y install neovim
git clone https://github.com/yuyamada/nvim-conf.git /home/ubuntu/.config/nvim
sudo mkdir /root/.config && sudo ln -s /home/ubuntu/.config/nvim /root/.config/nvim
