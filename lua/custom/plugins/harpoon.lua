return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup() -- REQUIRED

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = '[A]dd to Harpoon list' })
    vim.keymap.set('n', '<leader>pm', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle Har[P]oon Quick [M]enu' })

    -- vim.keymap.set('n', '<leader>Hu', function()
    --   harpoon:list():select(1)
    -- end, { desc = 'Select Item 1 on [H]arpoon list' })
    -- vim.keymap.set('n', '<leader>Hi', function()
    --   harpoon:list():select(2)
    -- end, { desc = 'Select Item 2 on [H]arpoon list' })
    -- vim.keymap.set('n', '<leader>Ho', function()
    --   harpoon:list():select(3)
    -- end, { desc = 'Select Item 3 on [H]arpoon list' })
    -- vim.keymap.set('n', '<leader>Hp', function()
    --   harpoon:list():select(4)
    -- end, { desc = 'Select Item 4 on [H]arpoon list' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<leader>j', function()
      harpoon:list():next()
    end, { desc = 'Select next item on Harpoon list' })
    vim.keymap.set('n', '<leader>k', function()
      harpoon:list():prev()
    end, { desc = 'Select previous item on Harpoon list' })
  end,
}
