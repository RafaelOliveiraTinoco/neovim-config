vim.cmd("" .. "set relativenumber") -- Relative number on the left

-- Colorscheme
colorschemes = {"nightfox", "dayfox", "dawnfox", "duskfox", "nordfox", "terafox", "carbonfox"} -- Colorschemes list from the nightfox plugin
vim.cmd("colorscheme " .. colorschemes[1]) -- Change colorscheme
