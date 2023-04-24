local M = {
  "NvChad/nvim-colorizer.lua",
  commit = "dde3084106a70b9a79d48f426f6d6fec6fd203f7",
}
function M.config()
  local status_ok, colorizer = pcall(require, "colorizer")
  if not status_ok then
    return
  end

  colorizer.setup {
    filetypes = { "*" }
  }
end

return M
