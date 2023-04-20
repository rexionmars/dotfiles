local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

-- LOAD PACKER MANAGER
vim.cmd [[ packadd packer.nvim ]]

packer.startup(function(use)
  -- COMMONS PLUGIN'S
  use 'hoob3rt/lualine.nvim'                    -- Status Line
  use 'neovim/nvim-lspconfig'                   -- Language server protocol
  use 'onsails/lspkind-nvim'                    -- Vscode-like pictograms
  use 'hrsh7th/cmp-buffer'                      -- Nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'                    -- Nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'                        -- Completion
  use 'L3MON4D3/LuaSnip'                        -- Lua Snippet
  use 'windwp/nvim-autopairs'                   -- Set autopairs
  use 'kyazdani42/nvim-web-devicons'            -- Icons
  use 'akinsho/nvim-bufferline.lua'             -- Bufferline
  use 'glepnir/lspsaga.nvim'                    -- LSP Saga UIs
  use 'lukas-reineke/indent-blankline.nvim'     -- Indentline
  use 'ofirgall/ofirkai.nvim'                   -- Theme
  use 'n1ghtmare/noirblaze-vim'                 -- Pink theme
  use 'mhinz/vim-startify'
  use 'nvim-tree/nvim-tree.lua'                 -- File explorer Nerd tree alternative
  use 'rcarriga/nvim-notify'                 -- File explorer Nerd tree alternative

  -- TELESCOPE CONFIGURATION
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-lua/plenary.nvim'

  -- PLUGIN'S WITH CONFIGURATION
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use { 'gen740/SmoothCursor.nvim',
  config = function()
    require('smoothcursor').setup()
      end
  }
end)
