Requirements
    NeoVim
    Git
    NvChad
        Download all the requirements for NvChad
    node.js -> npm

Load this config:
    After downloading NvChad
    Paste the files of this repository in ~/.config/nvim/lua/custom/ -> Linux
    Paste the files of this repository in ~\AppData\Local\nvim\lua\custom -> Windows

Deal with copy and past problems
    Run command :checkhealth provider
    If you don't have a clipboard provider run the command :help clipboard and download one of the clipboards providers in the list

LSP
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


Better syntax highlighter
    1. To dowload a better syntax highlighter for a language run the command :TSModuleInfo and search for your language in the list
    2. Once you find the language open plugins.lua file and add the language name to the list in "Better Syntax Highlighing" section, and save the file

Default vim commands in init.lua file
