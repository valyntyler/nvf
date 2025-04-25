{
  imports = [
    ./languages.nix
    ./theme.nix
  ];

  config.vim.options = {
    shiftwidth = 2;
    tabstop = 2;
  };
}
