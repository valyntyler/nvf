{ pkgs, ... }:

{
  config.vim.extraPlugins = {
    scrolleof = {
      package = pkgs.vimPlugins.scrolleof;
      setup = ''require('scrollEOF').setup()'';
    };
  };
}
