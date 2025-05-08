{
  config,
  lib,
  pkgs,
  ...
}: let
  inherit (lib.nvim.lua) toLuaObject;

  cfg = config.vim.scroll.scrolleof;
in {
  config = lib.mkIf cfg.enable {
    vim.extraPlugins.scrolleof = {
      package = pkgs.vimPlugins.scrolleof;
      setup = "
        require('scrollEOF').setup({
          pattern = '*',
          insert_mode = false,
          floating = true,
          disabled_filetypes = ${toLuaObject cfg.disabled_filetypes},
          disabled_modes = {},
        })
      ";
    };
  };
}
