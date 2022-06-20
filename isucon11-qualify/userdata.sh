#!/bin/bash
HOME=/home/ubuntu

# ssh keys
curl https://github.com/yuyamada.keys >> $HOME/ssh/authorized_keys
curl https://github.com/soya2222.keys >> $HOME/ssh/authorized_keys
curl https://github.com/yutaro-t.keys >> $HOME/ssh/authorized_keys

# tool installation
apt update

# query-digester
apt -y install percona-toolkit
git clone https://github.com/kazeburo/query-digester.git $HOME/query-digester
cd $HOME/query-digester && install query-digester /usr/local/bin

# dstat
apt -y install dstat

# alp
wget https://github.com/tkuchiki/alp/releases/download/v1.0.9/alp_linux_amd64.tar.gz -O alp.tar.gz
tar -zxvf alp.tar.gz
install ./alp /usr/loal/bin

# newrelic
curl -Ls https://download.newrelic.com/install/newrelic-cli/scripts/install.sh | bash && sudo /usr/local/bin/newrelic install

# discord.sh
apt -y install jq
curl https://raw.githubusercontent.com/ChaoticWeg/discord.sh/master/discord.sh > $HOME/discord.sh
chmod +x $HOME/discord.sh

# neovim
add-apt-repository -y ppa:neovim-ppa/stable && apt -y install neovim
git clone https://github.com/yuyamada/nvim-conf.git $HOME/config/nvim
mkdir /root/.config && ln -s $HOME/config/nvim /root/.config/nvim
