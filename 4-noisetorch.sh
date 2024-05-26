url="https://github.com/noisetorch/NoiseTorch/releases/download/v0.12.2/NoiseTorch_x64_v0.12.2.tgz"
#download tar -C $HOME -h -xzf NoiseTorch_x64_v0.12.2.tgz


curl -L $url -o noisetorch.tgz
tar -C $HOME -xzf noisetorch.tgz


rm noisetorch.tgz

gtk-update-icon-cache

sudo setcap 'CAP_SYS_RESOURCE=+ep' ~/.local/bin/noisetorch
