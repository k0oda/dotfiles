return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    {
      "3rd/image.nvim",
      build = false,
      opts = {
        processor = "magick_cli",
      },
    },
  },
  opts = {
    lang = "python3",
    image_support = true,
  },
}
