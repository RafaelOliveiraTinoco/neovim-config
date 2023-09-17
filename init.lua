-- Neovim default commands

-- Set tab width
vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')

-- Enable copy and paste from system clipboard with "p" and "y" without having to use "+p "*p "+y "*y
vim.cmd('set clipboard+=unnamedplus')

-- Remove background
vim.cmd[[autocmd VimEnter * highlight Normal guibg=none]]
