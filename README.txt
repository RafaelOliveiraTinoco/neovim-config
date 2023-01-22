Requirements:
	packer.nvim
	git
	curl
	linux: (unzip, tar, gzip)
	windows: (WinRar)
	C Compiler
	(Download and Apply a Nerd Font to your terminal)

How to setup this config:
	1. For linux place "init.lua" and "lua" folder inside ~/.config/nvim/. For windows place "init.lua" and "lua" folder inside ~/AppData/Local/nvim
		NOTE: If the folder doesn't exists, create it.
	2. Open neovim with "nvim" command, and type ":PackerSync". This will install or update all the plugins required.
	3. Restart neovim.

Download LSPs:
	1. Type :Mason
		NOTE: In Mason menu type g? to show the help menu.
	2. Find the LSP You want to download and press "i" on top of it.


Download Better Syntax Highlight for specific language with Treesitter:
	1. Type :TSInstallInfo and search for the wanted language.
	2. Type :TSInstall <language name>. Ex: :TSInstall cpp
	NOTE: Treesitter will update the installed languages automatically. If it doesn't run the command ":TSUpdate"

Important neovim Commands:
	- Download and sync all the plugins:
		":PackerSync" 
	":Mason"
