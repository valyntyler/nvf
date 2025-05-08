{ pkgs, ... }:

{
  config.vim.extraPlugins = {
    scrolleof = {
      package = pkgs.vimPlugins.scrolleof;
      setup = "
        require('scrollEOF').setup({
          pattern = '*',
          insert_mode = false,
          floating = false,
          disabled_filetypes = { '' },
          disabled_modes = {},
        })
      ";
    };
  };
}
