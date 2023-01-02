local snippets_folder = vim.fn.stdpath "config" .. "/lua/narayana/snippets/"

require("luasnip.loaders.from_snipmate").lazy_load({ paths = snippets_folder })
require("luasnip.loaders.from_snipmate").lazy_load({ paths = {"./snippets"} })
require("luasnip.loaders.from_vscode").lazy_load()
