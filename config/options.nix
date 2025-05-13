{
  config.vim = {
    options = {
      scrolloff = 999;
      showmode = false;

      shiftwidth = 2;
      tabstop = 2;
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

      go.enable = true;
      lua.enable = true;
      markdown.enable = true;
      nix.enable = true;
      nu.enable = true;
      ts.enable = true;
      css.enable = true;
      html.enable = true;
      rust = {
        enable = true;
        crates.enable = true;
      };
    };

    diagnostics = {
      enable = true;
      config.signs = true;
    };
  };
}
