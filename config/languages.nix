{
  config.vim.languages = {
    enableFormat = true;
    enableTreesitter = true;
    enableLSP = true;

    go.enable = true;
    lua.enable = true;
    markdown.enable = true;
    nix.enable = true;
    nu.enable = true;
    rust = {
      enable = true;
      crates.enable = true;
    };
  };
}
