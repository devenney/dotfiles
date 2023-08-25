SHELL := /bin/bash

DOTFILES_DIR ?= ${HOME}/dotfiles
XDG_CONFIG_HOME ?= ${HOME}/.config

.PHONY:kitty
kitty:
	rm -rf "${XDG_CONFIG_HOME}/kitty" && mkdir -p "${XDG_CONFIG_HOME}"
	ln -fs "${DOTFILES_DIR}/kitty" "${XDG_CONFIG_HOME}/"

.PHONY: nvim
nvim:
	rm -rf "${XDG_CONFIG_HOME}/nvim" && mkdir -p "${XDG_CONFIG_HOME}"
	ln -fs "${DOTFILES_DIR}/nvim" "${XDG_CONFIG_HOME}/"
