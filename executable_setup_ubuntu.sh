#!/bin/bash

install_tools() {
	sudo apt install -y autojump
	sudo apt install -y tmux
	sudo apt install -y neovim
}

install_pyenv() {
	sudo apt install -y make build-essential libssl-dev zlib1g-dev \
		libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
		libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev curl
	curl https://pyenv.run | bash
}

if [ `uname` != "Linux" ]; then
    echo "Run on Linux (not on Mac OS X)"; exit 1
fi

sudo apt update
install_tools
install_pyenv
