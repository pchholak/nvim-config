-- Colorscheme
return {
  {
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other plugins start .
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = true }, -- Disable/Enable italics in comments
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'tokyonight-storm'
    end,
  },

  -- {
  --   'navarasu/onedark.nvim',
  --   priority = 1000,
  --   config = function()
  --     require('onedark').setup {
  --       style = 'deep', -- Options: dark, darker, cool, deep, warm, warmer, light
  --       transparent = false,
  --       code_style = {
  --         comments = 'none',
  --         keywords = 'bold',
  --         functions = 'italic',
  --         strings = 'none',
  --         variables = 'none',
  --       },
  --     }
  --     require('onedark').load()
  --   end,
  -- },

  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    config = function()
      require('rose-pine').setup {
        variant = 'main', -- other options: "moon", "dawn"
        dark_variant = 'main',
        disable_background = false, -- set to true if you use transparent terminals
        styles = {
          bold = true,
          italic = false,
          transparency = false,
        },
      }
      -- vim.cmd.colorscheme 'rose-pine'
    end,
  },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'latte', -- "latte", "frappe", "macchiato", "mocha"
      }
      -- vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
