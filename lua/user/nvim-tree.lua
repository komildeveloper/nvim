local M = {
  "kyazdani42/nvim-tree.lua",
  commit = "bb375fb20327c49920c41d2b51c1ce2f4fe7deb3",
  event = "VimEnter"
}

function M.config()
  require("nvim-tree").setup {
    update_focused_file = {
      enable = true,
    },
    renderer = {
      icons = {
        glyphs = {
          default = "",
          symlink = "",
          folder = {
            arrow_open = "",
            arrow_closed = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = "",
          },
          git = {
            unstaged = "",
            staged = "S",
            unmerged = "",
            renamed = "➜",
            untracked = "U",
            deleted = "",
            ignored = "◌",
          },
        },
      },
    },
    diagnostics = {
      enable = true,
      show_on_dirs = true,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      },
    },
    filters = {
      dotfiles = false,
      git_clean = false,
      no_buffer = false,
      custom = {},
      exclude = {},
    },
    view = {
      width = 30,
      side = "left",
    },
  }
end

return M
