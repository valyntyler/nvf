{
  config.vim = {
    options = {
      scrolloff = 999;
      showmode = false;

      shiftwidth = 2;
      tabstop = 2;

      winbar = " ";
    };

    theme = {
      enable = true;
      name = "gruvbox";
      style = "dark";
      transparent = true;
    };

    undoFile.enable = true;

    languages = {
      enableFormat = true;
      enableTreesitter = true;
      nix = {
        enable = true;
        extraDiagnostics.enable = true;
      };
      haskell.enable = true;
      assembly.enable = true;
      clang.enable = true;
      csharp.enable = true;
      go.enable = true;
      lua.enable = true;
      markdown = {
        enable = true;
        format.enable = true;
      };
      nu.enable = true;
      ts.enable = true;
      css.enable = true;
      html.enable = true;
      bash.enable = true;
      php.enable = true;
      rust = {
        enable = true;
        crates.enable = false;
      };
      python = {
        enable = true;
        format.enable = true;
        lsp.server = "pyright";
      };
    };

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
}
