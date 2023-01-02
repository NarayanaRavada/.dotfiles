local ls = require("luasnip")

local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node

local date = function ()
    local fmt = "%d.%m.%Y %H:%M:%S"
    return os.date(fmt)
end

ls.add_snippets(nil, {
    all = {
        s("sn", {
            t({"","author: lakshmi_narayana", "created: "}),
            f(date, {}),
            t({"", ""})
        })
    }
})
