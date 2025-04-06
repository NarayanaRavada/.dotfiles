require('rose-pine').setup({
    disable_background = true,
    styles = {
        italic = false,
    },
})

require('kanagawa').setup({
    require("kanagawa").setup({
        transparent = true,
        theme = 'dragon',
        commentStyle = { italic = false },
        keywordStyle = { italic = false },
        overrides = function()
            return {
                ["@variable.builtin"] = { italic = false },
            }
        end
    })
})

function Colorit(color)
    color = color or 'rose-pine'
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

Colorit()
