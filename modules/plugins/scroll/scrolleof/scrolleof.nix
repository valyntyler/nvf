{ lib, ... }: let
  inherit (lib.options) mkEnableOption mkOption;
  inherit (lib.types) str listOf;
in {
  options.vim.scroll.scrolleof = {
    enable = mkEnableOption "Scroll past the end of file just like scrolloff option [scrollEOF.nvim]";
    disabled_filetypes = mkOption {
      type = listOf str;
      default = [];
      description = "List of filetypes to disable scrollEOF for.";
    };
  };
}
