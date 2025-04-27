{
  imports = [
    ./languages.nix
    ./theme.nix
    ./ui.nix
  ];

  config.vim.options = {
    scrolloff = 12;

    shiftwidth = 2;
    tabstop = 2;

    showmode = false;
  };
}
