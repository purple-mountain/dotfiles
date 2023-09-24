return {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji", { "roobert/tailwindcss-colorizer-cmp.nvim", config = true } },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
        local cmp = require("cmp")
        opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
        local format_kinds = opts.formatting.format
        opts.formatting.format = function(entry, item)
            format_kinds(entry, item) -- add icons
            return require("tailwindcss-colorizer-cmp").formatter(entry, item)
        end
    end,
}
