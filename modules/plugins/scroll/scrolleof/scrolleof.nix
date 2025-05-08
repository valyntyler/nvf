{ lib, ... }:

{
  options.vim.scroll.scrolleof = {
    enable = lib.mkEnableOption "Scroll past the end of file just like scrolloff option [scrollEOF.nvim]";
  };
}
