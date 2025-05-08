{
  imports = [
    ./diagnostics.nix
    ./languages.nix
    ./theme.nix
    ./ui.nix
  ];

  config.vim.undoFile.enable = true;

  config.vim.options = {
    scrolloff = 999;

    shiftwidth = 2;
    tabstop = 2;

    showmode = false;
  };
}
