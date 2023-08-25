SHELL := /bin/bash

DOTFILES_DIR ?= ${HOME}/newdotfiles
XDG_CONFIG_HOME ?= ${HOME}/.config

.PHONY: nvim
nvim:
	rm -rf "${XDG_CONFIG_HOME}/nvim" && mkdir -p "${XDG_CONFIG_HOME}"
	ln -fs "${DOTFILES_DIR}/nvim" "${XDG_CONFIG_HOME}/"
