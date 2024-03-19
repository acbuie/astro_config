return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    local null_ls = require "null-ls"

    config.sources = {
      null_ls.builtins.diagnostics.mypy.with {
        only_local = ".venv/bin",
      },
      -- null_ls.builtins.formatting.black.with {
      --   prefer_local = ".venv/bin",
      -- },
      null_ls.builtins.formatting.jq.with {
        extra_filetyps = { "geojson" },
      },
    }
    return config -- return final config table
  end,
}
