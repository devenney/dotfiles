return {
  {
    'folke/which-key.nvim',
    opts = function()
      local icons = require('user.icons')
      local side_margin = math.floor(vim.fn.winwidth(0) / 10)
      return {
        icons = {
          group = icons.ui.list_ul .. ' ',
          breadcrumb = icons.ui.breadcrumb,
        },
        window = {
          border = 'rounded',
          margin = { 2, side_margin, 2, side_margin },
          padding = { 1, 1, 1, 1 },
        },
        layout = {
          align = 'center',
        },
      }
    end,
  },
}
