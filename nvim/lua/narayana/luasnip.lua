require("narayana.snippets.all")
require("luasnip.loaders.from_vscode").lazy_load()

local snippets_folder = vim.fn.stdpath "config" .. "/lua/narayana/snippets/"
local sn = "hello_world"
require("luasnip.loaders.from_snipmate").lazy_load({ paths = snippets_folder })
require("luasnip.loaders.from_snipmate").lazy_load({ paths = {"./snippets"} })
