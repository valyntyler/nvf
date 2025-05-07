{ pkgs, ... }:

{
  config.vim.extraPlugins = {
    scrolleof = {
      package = pkgs.fetchFromGitHub {
        owner = "Aasim-A";
        repo = "scrollEOF.nvim";
        rev = "a186f695b500e9f0b569102a4a5e8a255cd0d198";
        hash = "sha256-MHa53sHrqSrIKrWjM1Nqz9Lr3TWYGFLXZH6LGER0b18=";
      };
      setup = ''require('scrollEOF').setup()'';
    };
  };
}
