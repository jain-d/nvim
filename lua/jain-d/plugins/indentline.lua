-- vertical line for indentation
return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
        require("ibl").setup {
            scope = { show_start = false, show_end = false, show_exact_scope = false }
        }
    end
}
