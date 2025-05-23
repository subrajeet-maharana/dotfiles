vim.opt.clipboard = "unnamedplus"

vim.g.clipboard = {
    name = "copyq",
    copy = {
        ["+"] = "copyq copy -",
        ["*"] = "copyq copy -",
    },
    paste = {
        ["+"] = "copyq clipboard",
        ["*"] = "copyq clipboard",
    },
    cache_enabled = 0,
}

