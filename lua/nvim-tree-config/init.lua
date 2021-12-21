require'nvim-tree'.setup {
    update_to_buf_dir = {
        enable = true,
        auto_open = false,
        auto_close = false,
        open_on_tab = true,
    },
    diagnostics = {
        enable = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        }
    },
    view = {
        width = 30,
        height = 30,
        hide_root_folder = false,
        side = 'right',
        auto_resize = false,
    }
}

