-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'folke/tokyonight.nvim',
    config = function()
      vim.cmd('colorscheme tokyonight-night')

      -- transparent background
      --vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      --vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
      --vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })

      -- line number colors
      vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51b3ec', bold = true })
      vim.api.nvim_set_hl(0, 'LineNr', { fg='#ffffff', bold = true })
      vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#fb508f', bold = true })
    end
  }

  use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use ('nvim-treesitter/playground')

  use ('tpope/vim-fugitive')
end)

