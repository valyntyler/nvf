{lib, ...}: {
  config.vim = {
    options = {
      scrolloff = 999;
      showmode = false;

      shiftwidth = 2;
      tabstop = 2;
      expandtab = true;
      wrap = false;

      winbar = " ";
    };

    theme = {
      enable = true;
      name = "gruvbox";
      style = "dark";
      transparent = true;
    };

    undoFile.enable = true;

    diagnostics = {
      enable = true;
      config.signs = true;
    };

    ui.breadcrumbs = {
      enable = true;
      lualine.winbar = {
        enable = true;
        alwaysRender = false;
      };
    };
  };

  config.vim.autocmds = [
    {
      enable = true;
      event = ["FileType"];
      pattern = ["haskell"];
      callback = lib.generators.mkLuaInline ''
        function()
          vim.schedule(function()
            vim.opt_local.conceallevel = 2
            vim.opt_local.concealcursor = "nc"
            vim.cmd([[syntax match hsLambda "\\" conceal cchar=λ]])
          end)
        end
      '';
    }
  ];
}
