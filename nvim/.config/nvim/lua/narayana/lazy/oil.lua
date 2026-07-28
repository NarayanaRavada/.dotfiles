return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  lazy = false,
  config = function()
    require("oil").setup({
      view_options = {
        show_hidden = true,
      },
      lsp_file_methods = {
        enabled = true,
        timeout_ms = 1000,
        autosave_changes = true,
      }
    })
  end
}
