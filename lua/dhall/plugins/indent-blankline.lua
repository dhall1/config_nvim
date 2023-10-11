-- This gives indentation indicators
return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("ibl").setup({
      indent = {
        char = "▏",
      },
      exclude = {
        filetypes = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
      },
    })
  end,
}
