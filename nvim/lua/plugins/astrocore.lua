-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = {
        colorcolumn = "+1",
        signcolumn = "auto",
        textwidth = 100,
        wrap = true,
        expandtab = true,
        smartindent = true,
        tabstop = 2,
        shiftwidth = 2,
        breakindent = true,
        breakindentopt = "list:4",
      },
    },
  },
}
