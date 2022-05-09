local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]
return require('packer').startup({function()
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter',
        config = function() require'setup.treesitter' end,
        run = ':TSUpdate'
    }

    -- Telescope
    use { 'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function() require'setup.telescope' end
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { "ahmedkhalf/project.nvim", config = function() require'setup.project' end }
    use { "nvim-telescope/telescope-file-browser.nvim" }

   -- LSP
    use {
        { 'neovim/nvim-lspconfig', config = function() require'setup.lsp.lsp-config' end },
        { 'williamboman/nvim-lsp-installer', config = function() require'setup.lsp.lsp-installer' end },
    }
    use { 'hrsh7th/nvim-cmp',
        requires = { 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline', },
        config = function() require'setup.lsp.cmp' end
    }

  -- Comments
  use 'b3nj5m1n/kommentary'

  -- Asynchronous
  use { 'skywind3000/asyncrun.vim', config = function() require'setup.asyncrun' end }

  -- Terminal
  use 'voldikss/vim-floaterm'
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require"setup.gitsigns"
    end
  }

  -- Notes
  use 'vimwiki/vimwiki'

  -- Looks
  use { 'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function() require'setup.lualine' end
  }
  use { 'sainnhe/gruvbox-material', config = function() require'setup.gruvbox' end }

  if packer_bootstrap then
    require('packer').sync()
  end
end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})
