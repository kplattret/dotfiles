return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        hide_by_name = { ".git" },
        hide_dotfiles = false,
        hide_gitignored = true,
        visible = true,
      },
    },
  },
}
