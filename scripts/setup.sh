#!/usr/bin/env bash
# Inspired by https://gist.github.com/lpimem/a83aa0b736d95a53beb049cc07511705

BOLD=$(tput bold)
NORMAL=$(tput sgr0)
GREEN=$(tput setaf 2)

# Source: https://stackoverflow.com/a/29436423/7834359
function yes_or_no {
	while true; do
		read -p "$* [y/n]: " yn
		case $yn in
			[Yy]*) return 0  ;;
			[Nn]*) return  1 ;;
		esac
	done
}

yes_or_no "${BOLD}${GREEN}?${NORMAL} ${BOLD}Install Neovim AppImage?${NORMAL}" && {
	NVIM_URL="https://github.com/neovim/neovim/releases/download/stable/nvim.appimage"
	NVIM_DIR=$HOME/app

	mkdir -p ${NVIM_DIR}
	cd ${NVIM_DIR}

	# Install Neovim
	mkdir nvim
	cd nvim
	curl -Ls $NVIM_URL --output nvim.appimage
	chmod +x nvim.appimage
	./nvim.appimage +qa
	ret=$?
	if [ $ret -ne 0 ]; then
		echo "Cannot run nvim as appimage"
		exit 1
	else
		# Update .bashrc
		echo "alias nvim=${NVIM_DIR}/nvim/nvim.appimage" >> $HOME/.bashrc
	fi
}

yes_or_no "${BOLD}${GREEN}?${NORMAL} ${BOLD}Install FiraCode Nerd Font?${NORMAL}" && {
	FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraCode.zip"
	FONT_NAME="fira-code-nf"
	FONT_DIR="${HOME}/.local/share/fonts/${FONT_NAME}"
	FONT_ZIP="${FONT_NAME}.zip"

	mkdir -p $FONT_DIR
	cd $FONT_DIR
	curl -Ls $FONT_URL --output $FONT_ZIP
	unzip -qq $FONT_ZIP
	rm $FONT_ZIP
}
