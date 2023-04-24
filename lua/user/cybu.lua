local M = {
  "ghillb/cybu.nvim",
  branch = "main",
  event = "BufEnter",
  commit = "d15cd01439423ebf676b6d807049738be38d6582",
  dependencies = {
    {
      "nvim-lua/plenary.nvim",
      event = "VeryLazy"
    },
    {
      "nvim-tree/nvim-web-devicons",
      event = "VeryLazy"
    }
  },
}

function M.config()
  local ok, cybu = pcall(require, "cybu")
  if not ok then
    return
  end

  cybu.setup {
    position = {
      relative_to = "win", -- win, editor, cursor
      anchor = "topright", -- topleft, topcenter, topright,
      -- centerleft, center, centerright,
      -- bottomleft, bottomcenter, bottomright
      -- vertical_offset = 10, -- vertical offset from anchor in lines
      -- horizontal_offset = 0, -- vertical offset from anchor in columns
      -- max_win_height = 5, -- height of cybu window in lines
      -- max_win_width = 0.5, -- integer for absolute in columns
      -- float for relative to win/editor width
    },
    display_time = 700, -- time the cybu window is displayed
    style = {
      path = "relative", -- absolute, relative, tail (filename only)
      border = "rounded", -- single, double, rounded, none
      separator = " ", -- string used as separator
      prefix = "…", -- string used as prefix for truncated paths
      padding = 1, -- left & right padding in number of spaces
      hide_buffer_id = true,
      devicons = {
        enabled = true, -- enable or disable web dev icons
        colored = true, -- enable color for web dev icons
      },
    },
  }
  -- vim.keymap.set("n", "<up>", "<Plug>(CybuPrev)")
  -- vim.keymap.set("n", "<down>", "<Plug>(CybuNext)")
  vim.keymap.set("n", "<S-h>", "<Plug>(CybuPrev)")
  vim.keymap.set("n", "<S-l>", "<Plug>(CybuNext)")
end

return M
