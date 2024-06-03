return {
    "romgrk/barbar.nvim",
    lazy = false,
    dependencies = {
        "lewis6991/gitsigns.nvim"
    },
    keys = {
        { "<leader><Tab>", "<cmd>BufferNext<cr>" },
        { "<leader><S-Tab>", "<cmd>BufferPrevious<cr>" }
    }
}
