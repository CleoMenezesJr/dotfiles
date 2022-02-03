require("bufferline").setup {
  options = {
    close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
    buffer_close_icon = '',
    modified_icon = '',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 14,
    max_prefix_length = 13, -- prefix used when a buffer is de-duplicated
    tab_size = 20,
    diagnostics = false,
    custom_filter = function(buf_number)
        local present_type, type = pcall(function()
            return vim.api.nvim_buf_get_var(buf_number, "term_type")
        end)

        if present_type then
            if type == "vert" then
                return false
            elseif type == "hori" then
                return false
            end
            return true
        end

        return true
        end,
        offsets = { { filetype = "NvimTree", highlight = "Directory", text_align = "left", text = "  File Explorer"} },
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = "thin",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        view = "multiwindow",
    },
}
