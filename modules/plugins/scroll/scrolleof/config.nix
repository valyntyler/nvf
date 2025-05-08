{
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.vim.scroll.scrolleof;
in {
  config = lib.mkIf cfg.enable {
    vim.extraPlugins = {
      scrolleof = {
        package = pkgs.vimPlugins.scrolleof;
        setup = "require('scrollEOF').setup()";
      };
    };
  };
}
