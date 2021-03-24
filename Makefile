.PHONY: packages vim

all: go vim stow end
stow: go-stow vim-stow

# Go #
go: go-stow go-deps

go-deps:
	go get -u github.com/uber/assume-role-cli

go-stow:
	stow go;
	export GOPATH=$(HOME)/go;
	export GO111MODULE=auto

nvim: nvim-stow nvim-plug

nvim-stow:
	stow nvim

nvim-plug:
	nvim +PlugInstall +qall

# Vim #
vim: vim-fzf vim-ycm vim-stow

vim-fzf:
	cd vim/.vim/pack/plugins/start/fzf;	\
	./install --all

vim-stow:
	stow vim

vim-ycm:
	cd vim/.vim/pack/plugins/start/YouCompleteMe;	\
	git submodule update --init --recursive;			\
	python3 install.py --go-completer

zsh-stow:
	stow zsh

# Warnings #
end:
	$(info Ensure autojump is installed.)
