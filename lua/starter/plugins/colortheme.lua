return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "ellisonleao/gruvbox.nvim",
    config =  function ()
      vim.cmd.colorscheme 'gruvbox'
    end
  },
}

-- return {
--   { -- You can easily change to a different colorscheme.
--     -- Change the name of the colorscheme plugin below, and then
--     -- change the command in the config to whatever the name of that colorscheme is.
--     --
--     -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
--     'folke/tokyonight.nvim',
--     priority = 1000, -- Make sure to load this before all the other start plugins.
--     init = function()
--       -- Load the colorscheme here.
--       -- Like many other themes, this one has different styles, and you could load
--       -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
--       -- vim.cmd.colorscheme 'tokyonight-night'

--       -- You can configure highlights by doing something like:
--       -- vim.cmd.hi 'Comment gui=none'
--     end,
--   },
--   -- nord theme
--   {
--     'shaunsingh/nord.nvim',
--     lazy = false,
--     priority = 1000,
--     config = function()
--       -- Example config in lua
--       vim.g.nord_contrast = true
--       vim.g.nord_borders = false
--       vim.g.nord_disable_background = true
--       vim.g.nord_italic = false
--       vim.g.nord_uniform_diff_background = true
--       vim.g.nord_bold = false

--       -- Load the colorschemes
--       require('nord').set()

--       -- Local Variable for toggling background transparent
--       local bg_transparent = true
--       local toggle_transparency = function()
--           bg_transparent = not bg_transparent
--           vim.g.nord_disable_background = bg_transparent
--           vim.cmd [[colorscheme nord]]
--       end

--       -- Keymap for toggle_transparent
--       vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
--     end
--   },
--   {
--     "catppuccin/nvim", name = "catppuccin", priority = 1000,
--     config =  function ()
--       require("catppuccin").setup()
--       vim.cmd.colorscheme "catppuccin"
--     end
--   },
--   { 'morhetz/gruvbox', priority = 1000, },
--   { 'joshdick/onedark.vim', priority = 1000, },
--   { 'rebelot/kanagawa.nvim', priority = 1000 },
--   { 'Mofiqul/dracula.nvim', priority = 1000 },
--   { 'romainl/Apprentice', priority = 1000 },
--   { 'shaunsingh/solarized.nvim', priority = 1000 },
--   { 'Shatur/neovim-ayu', priority = 1000 },
--   { 'rose-pine/neovim', as = 'rose-pine', priority = 1000 },
--   { 'nyoom-engineering/oxocarbon.nvim', priority = 1000 },
--   { 'sainnhe/forest-night', priority = 1000 },
--   { 'ntk148v/komau.vim', priority = 1000 },
--   { 'embark-theme/vim', priority = 1000 },
--   { 'cocopon/iceberg.vim', priority = 1000 },
--   { 'whatyouhide/vim-gotham', priority = 1000 },
--   { 'arcticicestudio/nord-vim', priority = 1000 },
--   { 'sainnhe/everforest', priority = 1000 },
--   { 'marko-cerovac/material.nvim', priority = 1000 },
--   { 'sainnhe/edge', priority = 1000 },
--   { 'mhartington/oceanic-next', priority = 1000 },
--   { 'drewtempelmeyer/palenight.vim', priority = 1000 },
--   { 'sainnhe/gruvbox-material', priority = 1000 },
--   { 'sainnhe/sonokai', priority = 1000 },
--   { 'rakr/vim-one', priority = 1000 },
--   { 'liuchengxu/space-vim-dark', priority = 1000 },
--   { 'tomasiser/vim-code-dark', priority = 1000 },
--   { 'EdenEast/nightfox.nvim', priority = 1000 },
--   { 'NTBBloodbath/doom-one.nvim', priority = 1000 },
--   { 'jnurmine/Zenburn', priority = 1000 },
--   { 'tomasr/molokai', priority = 1000 },
--   { 'craftzdog/solarized-osaka.nvim',
--     priority = 1000,
--     lazy = false,
--     opts = {
--       transparent = true
--     }
--   }
-- }
