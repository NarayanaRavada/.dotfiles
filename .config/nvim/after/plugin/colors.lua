require('onedark').setup({
    style = 'darker'
})

require('catppuccin').setup({
    integrations = {
        treesitter = true,
    }
})

require('kanagawa').setup({
    keywordStyle = { italic = false, bold = false },
    statmentStyle = { bold = false },
    transparent = true,
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = "none"
                }
            }
        }
    },
    overrides = function(colors)
        local theme = colors.theme
        return {
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },

            -- Save an hlgroup with dark background and dimmed foreground
            -- so that you can use it where your still want darker windows.
            -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
            NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

            -- Popular plugins that open floats will link to NormalFloat by default;
            -- set their background accordingly if you wish to keep them dark and borderless
            MasonNormal = { bg = theme.ui.bg_d3, fg = theme.ui.fg_dim },

            -- Telescope 
            --TelescopeTitle = { fg = theme.ui.special, bold = true },
            --TelescopePromptNormal = { bg = theme.ui.bg_p1 },
            --TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
            --TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
            --TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
            --TelescopePreviewNormal = { bg = theme.ui.bg_dim },
            --TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
        }
    end,
})

require('tokyonight').setup({
    styles = {
        keywords = {italic = false}
    }
})

vim.g.gruvbox_contrast_dark = 'hard'

function Colorise(color)
    color = color or "onedark"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

Colorise('kanagawa-dragon')
