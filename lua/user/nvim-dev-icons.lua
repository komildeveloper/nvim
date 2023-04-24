local M = {
  "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
  commit = "0568104bf8d0c3ab16395433fcc5c1638efc25d4"
}

function M.config()
  require("nvim-web-devicons").setup {
    override = {
      zsh = {
        icon = "",
        color = "#428850",
        cterm_color = "65",
        name = "Zsh",
      },
      sh = {
        icon = "",
        color = "#1DC123",
        cterm_color = "61",
        name = "Sy",
      },
      [".gitattributes"] = {
        icon = "",
        color = "#e24329",
        cterm_color = "59",
        name = "GitAttributes",
      },
      [".gitconfig"] = {
        icon = "",
        color = "#e24329",
        cterm_color = "59",
        name = "GitConfig",
      },
      [".gitignore"] = {
        icon = "",
        color = "#e24329",
        cterm_color = "59",
        name = "GitIgnore",
      },
      [".gitlab-ci.yml"] = {
        icon = "",
        color = "#e24329",
        cterm_color = "166",
        name = "GitlabCI",
      },
      [".gitmodules"] = {
        icon = "",
        color = "#e24329",
        cterm_color = "59",
        name = "GitModules",
      },
      ["diff"] = {
        icon = "",
        color = "#e24329",
        cterm_color = "59",
        name = "Diff",
      },
      [".dockerignore"] = {
        icon = "",
        color = "#4D5A5E",
        cterm_color = "59",
        name = "dockerignore",
      },
      ["Dockerfile"] = {
        icon = "",
        color = "#519ABA",
        cterm_color = "59",
        name = "Dockerfile",
      },
      ["docker-compose.yml"] = {
        icon = "",
        color = "#F55385",
        cterm_color = "59",
        name = "DockerCompose",
      },
      ["tsconfig.json"] = {
        icon = "ﯤ",
        color = "#519ABA",
        cterm_color = "59",
        name = "tsconfig",
      },
    },
    color_icons = true,
    default = true,
  }
end

return M
