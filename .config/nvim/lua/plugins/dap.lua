return {
  "mfussenegger/nvim-dap",

  opts = function(_, opts)
    local dap = require("dap")

    dap.defaults.fallback.exception_breakpoints = { "all", "raised", "uncaught" }

    return opts
  end,
  -- opts = { require("dap").defaults.fallback.exception_breakpoints = { 'raised', 'uncaught'}},
  -- keys = {
  --   {
  --     "<leader>dx",
  --     function()
  --       require("dap").defaults.fallback.exception_breakpoints = { "raised", "uncaught" }
  --     end,
  --     desc = "Enable exception breakpoints",
  --   },
  -- },
}
