wget https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/easy-term.omp.json \
    -O /etc/ohmyposh/themes/paradox.omp.json
echo 'eval "$(oh-my-posh init bash --config /etc/ohmyposh/themes/easy-term.omp.json)"' >> /root/.bashrc
echo 'eval "$(oh-my-posh init bash --config /etc/ohmyposh/themes/easy-term.omp.json)"' >> /etc/skel/.bashrc
