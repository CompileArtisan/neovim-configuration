return {
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
    dependencies = { "folke/which-key.nvim" },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "jdtls" })
    end,
  }
}
