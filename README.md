# 1. Requirements
* (OPTIONAL - highly recommended) [Git Bash](https://git-scm.com/downloads) - Bash shell for Windows
  * To make nvim work with the Git Bash, do not run the Git Bash program, use instead <Git Installation Folder>\bin\bash.exe
* [NeoVim](https://neovim.io/)
* [Git](https://git-scm.com/)
* [node.js and npm](https://nodejs.org/en)
* NvChad
   * Download all the requirements for NvChad
        * [Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip) as your terminal font.
            * Make sure the nerd font you set doesn't end with Mono to prevent small icons.
            * Example : JetbrainsMono Nerd Font and not JetbrainsMono Nerd Font Mono
        * (OPTIONAL) [Ripgrep](https://github.com/BurntSushi/ripgrep) is required for grep searching with Telescope.
        * **(For Windows Users: (gcc and make) are required for nvchad)** [Download Pack with GCC, Make, and more](https://github.com/skeeto/w64devkit/releases) after installation set on PATH
   * Delete old neovim folder
        * Linux / Macos (unix):
            * ~/.config/nvim
            * ~/.local/share/nvim
        * Windows:
            * ~\AppData\Local\nvim
            * ~\AppData\Local\nvim-data
   * Download nvchad: 
        * Linux / Macos (unix): git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
        * Windows: git clone https://github.com/NvChad/NvChad $HOME\AppData\Local\nvim --depth 1
   * Run nvim and press N to not install the default config

# 2. Load this config:
* Windows: git clone https://github.com/RafaelOliveiraTinoco/neovim-config $HOME\AppData\Local\nvim\lua\custom
* Linux: git clone https://github.com/RafaelOliveiraTinoco/neovim-config ~/.config/nvim/lua/custom

# Important Commands:
:MasonInstallAll -> Download all LSP in plugins.lua

# Deal with copy and past problems
Run command :checkhealth provider
If you don't have a clipboard provider run the command :help clipboard and download one of the clipboards providers in the list

# LSP
What is the Language Server Protocol?
    The Language Server Protocol (LSP) defines the protocol used between an editor or IDE and a language server that provides language features like auto complete, go to definition, find all references etc.
How to download more LSP:
    1. Use :Mason command press Ctrl + F to open the tab for language searching, and find the ID of the language you want
    2. In that same page go to the bottom of the page by scrolling or pressing upper "G" key, type the ID of the language and press enter
    3. Press "2" to switch to the LSP tab, choose which LSP you want to download, and to do that add the name of it to plugins.lua in "Mason LSP" section
    4. Save the plugins.lua file and run the command :MasonInstallAll
    5. To make the LSP usable run the command :Mason place your cursor above the installed LSP and press enter, you will find the executable name
    6. Open this url: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md press Ctrl + F in the website and search for that executable name
    7. Copy the LSP name that corresponds to the executable name, and add it to the file configs/lspconfig.lua in the servers list


# Better syntax highlighter
1. To dowload a better syntax highlighter for a language run the command :TSModuleInfo and search for your language in the list
2. Once you find the language open plugins.lua file and add the language name to the list in "Better Syntax Highlighing" section, and save the file

**Default vim commands in init.lua file**
