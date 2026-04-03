return 	{
  "ThePrimeagen/99",
  config = function()

    local _99 = require("99")

    local cwd = vim.uv.cwd()
    local basename = vim.fs.basename(cwd)
    _99.setup({
      provider = _99.Providers.OpenCodeProvider,
      model = "github-copilot/gpt-5-mini",
      logger = {
        level = _99.DEBUG,
        path = "/tmp/" .. basename .. ".99.debug",
        print_on_error = true,
      },
       custom_rules = {
         "./skills/*.md",
       },
      tmp_dir = "./tmp",
    })

    -- take extra note that i have visual selection only in v mode
    -- technically whatever your last visual selection is, will be used
    -- so i have this set to visual mode so i dont screw up and use an
    -- old visual selection
    --
    -- likely ill add a mode check and assert on required visual mode
    -- so just prepare for it now
    vim.keymap.set("v", "<leader>9v", function()
      _99.visual()
    end)

    vim.keymap.set("n", "<leader>9p", function()
      _99.vibe()
    end)

    --- if you have a request you dont want to make any changes, just cancel it
    vim.keymap.set("n", "<leader>9x", function()
      _99.stop_all_requests()
    end)

    vim.keymap.set("n", "<leader>9s", function()
      _99.search()
    end)

    vim.keymap.set("n", "<leader>9tp", function()
      require("99.extensions.telescope").select_provider()
    end)

    vim.keymap.set("n", "<leader>9tm", function()
      require("99.extensions.telescope").select_model()
    end)
  end,
}
