vim.g.firenvim_config = {
  globalSettings = { alt = "all" },
  localSettings = {
    [".*"] = {
      cmdline = "neovim",
      content = "text",
      priority = 0,
      selector = "textarea",
      takeover = "always",
    },
  },
}

return {
  {
    vscode = true,
    "glacambre/firenvim",

    -- Lazy load firenvim
    -- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
    lazy = false,
    build = function()
      require("lazy").load({ plugins = "firenvim", wait = true })
      vim.fn["firenvim#install"](0)
    end,
  },

  -- "glacambre/firenvim",
  -- build = function()
  --   require("lazy").load({ plugins = "firenvim", wait = true })
  --   vim.fn["firenvim#install"](0)
  -- end,
  -- cond = not vim.g.started_by_firenvim,
  -- -- configure FireNvim here:
  -- config = function()
  --   vim.g.firenvim_config = {
  --     -- config values, like in my case:
  --     localSettings = {
  --       [".*"] = {
  --         takeover = "never",
  --       },
  --     },
  --   }
  -- end,
}
