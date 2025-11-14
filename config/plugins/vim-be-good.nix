{pkgs, ...}: {
  config.vim.extraPlugins = {
    vim-be-good = {
      package = pkgs.vimPlugins.vim-be-good;
      setup = ''
      '';
    };
  };
}
