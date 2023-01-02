require('rose-pine').setup({
    disable_background = true,
    disable_italics = true,
})

require('onedark').setup({
    style = 'darker'
})

require('onedark').load()

function Colorise(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

    --vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

vim.g.gruvbox_contrast_dark = 'hard'

Colorise('onedark')
