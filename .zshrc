# Start sway automatically
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    sway && exit
fi

# path
PATH=~/Downloads/plat/platform-tools:$PATH:/var/lib/flatpak/exports/bin:~/.local/bin/

# exports
export PATH=~/bin:$PATH
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock
export XDG_DATA_DIRS="~/.local/share/flatpak/exports/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}"

# aliases
alias ll='ls -a'
alias nvim=io.neovim.nvim
alias up='upgrade-nonroot -y && torsocks flatpak update -y'
alias cl='sudo apt autoremove --purge -y'
alias clean=cl
alias flatpak='torsocks flatpak'
alias lock='swaylock -f -c 000000'

## Kittens
alias diff='kitty +kitten diff'
alias icat='kitty +kitten icat'

## FZF
tf() {
    rg . --files --hidden 2>/dev/null | rg -S $1
}
tg() {
    rg . --hidden 2>/dev/null | rg -S $1
}
