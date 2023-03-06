vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  actions = {
    open_file = { quit_on_open = false }
  },
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
  view = {
    transparent = true
  },
  filters = {
    custom = { '^.git$', '^node_modules$' }
  },
  git = {
    enable = false
  },
  log = {
    enable = true,
    types = {
      diagnostics = true
    }
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    debounce_delay = 50,
    icons = {
      hint = '',
      info = '',
      warning = '',
      error = ''
    }
  }
})
vim.api.nvim_set_option('winblend', 10)
vim.keymap.set('n', '<c-d>', '<cmd>NvimTreeToggle<cr>')
