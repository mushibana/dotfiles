return {
  { "LazyVim/LazyVim", opts = { colorscheme = "tokyonight" } },

  {
    "folke/tokyonight.nvim",
    lazy = false, -- load early
    priority = 1000, -- before everything else
    opts = {
      style = "moon",
      transparent = true,
      terminal_colors = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(hl, c)
        local groups = {
          "Normal",
          "NormalNC",
          "NormalFloat",
          "FloatBorder",
          "FloatTitle",
          "WinSeparator",
          "Pmenu",
          "PmenuSel",
          "PmenuSbar",
          "PmenuThumb",
          "StatusLine",
          "StatusLineNC",
          "TabLine",
          "TabLineFill",
          "TabLineSel",
          -- If you use Telescope sometimes:
          "TelescopeNormal",
          "TelescopeBorder",
          "TelescopePromptNormal",
          "TelescopePromptBorder",
          -- And for fzf-lua (LazyVim default now):
          "FzfLuaNormal",
          "FzfLuaBorder",
          "FzfLuaTitle",
        }
        for _, g in ipairs(groups) do
          hl[g] = vim.tbl_extend("force", hl[g] or {}, { bg = "none" })
        end
      end,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")

      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "tokyonight",
        callback = function()
          local colors = require("tokyonight.colors").setup()

          vim.api.nvim_set_hl(0, "NonText", { fg = colors.yellow })
          vim.api.nvim_set_hl(0, "Comment", { fg = "#7aa2f7", italic = true })
        end,
      })
    end,
  },
}
