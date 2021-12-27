require("toggleterm").setup{
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 1,
    direction = 'float',
    shell = 'flatpak-spawn --host --env=TERM="$TERM" zsh',
    float_opts = {
        border = "curved",
        height = 25,
        width = 100,

    },
}
