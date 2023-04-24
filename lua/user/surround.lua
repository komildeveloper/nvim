local M = {
  "kylechui/nvim-surround",
  event = "Bufenter",
  commit = "e6047128e57c1aff1566fb9f627521d2887fc77a"
}
function M.config()
  local status_ok, surround = pcall(require, "nvim-surround")
  if not status_ok then
    return
  end

  surround.setup()
end

return M
