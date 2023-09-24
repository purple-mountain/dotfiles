return {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
        {
            "mason.nvim",
            opts = function(_, opts)
                opts.ensure_installed = opts.ensure_installed or {}
                vim.list_extend(
                    opts.ensure_installed,
                    { "gomodifytags", "impl", "gofumpt", "goimports-reviser", "delve" }
                )
            end,
        },
        {
            "leoluz/nvim-dap-go",
            config = true,
        },
    },
}
