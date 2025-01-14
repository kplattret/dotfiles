-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    config = {
      remark_ls = {
        settings = {
          remark = {
            requireConfig = true,
          },
        },
      },
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              -- Make rust-analyzer use its own profile
              -- Uses more disk space as it will create a separate folder in `targets`
              -- Allows to run `cargo build` without being blocked
              extraEnv = { CARGO_PROFILE_RUST_ANALYZER_INHERITS = "dev" },
              extraArgs = { "--profile", "rust-analyzer" },
            },
          },
        },
      },
    },
    formatting = {
      timeout_ms = 3000,
    },
  },
}
