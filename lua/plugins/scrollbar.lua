-- lua/plugins/scrollbar.lua
return {
  {
    "petertriho/nvim-scrollbar",
    event = "VeryLazy",
    config = function()
      require("scrollbar").setup({
        show = true,
        show_in_active_only = false,
        set_highlights = true,
        throttle_ms = 0,
        handle = {
          text = " ",
          color = "#3a3d5c",
          cterm = nil,
          highlight = "CursorColumn",
          hide_if_all_visible = false,
        },
        marks = {
          Search = { color = "orange" },
          Error = { color = "red" },
          Warn = { color = "yellow" },
          Info = { color = "blue" },
          Hint = { color = "green" },
          Misc = { color = "purple" },
        },
        handlers = {
          cursor = true,
          diagnostic = true,
          gitsigns = false,
          handle = true,
          search = false,
        },
        excluded_buftypes = {},  
        excluded_filetypes = {}, 
        autocmd = { 
          render = {
            "BufWinEnter",
            "TabEnter",
            "TermEnter",
            "WinEnter",
            "CmdwinLeave",
            "TextChanged",
            "VimResized",
            "WinScrolled",
          },
        },
      })
    end,
  }
}
