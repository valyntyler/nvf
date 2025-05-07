{
  imports = [
    ./diagnostics.nix
    ./languages.nix
    ./theme.nix
    ./ui.nix
  ];

  config.vim.options = {
    scrolloff = 16;

    shiftwidth = 2;
    tabstop = 2;

    showmode = false;
  };
}
