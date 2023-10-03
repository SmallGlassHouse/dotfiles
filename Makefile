XDG_CONFIG_HOME := $(HOME)/.config

all: core-arch link

core-arch:
	sudo pacman -Sqyu --noconfirm

stow-arch:
	sudo pacman -Sq stow --noconfirm

link: stow-arch
	mkdir -p $(XDG_CONFIG_HOME)
	stow -t $(HOME) homedir
	stow -t $(XDG_CONFIG_HOME) config

