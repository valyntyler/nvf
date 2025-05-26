final: prev: {
  vimPlugins =
    prev.vimPlugins
    // {
      scrolleof = final.vimUtils.buildVimPlugin {
        pname = "scrolleof";
        version = "1.2.7";
        src = final.fetchFromGitHub {
          owner = "Aasim-A";
          repo = "scrollEOF.nvim";
          rev = "9dd748a45c61acb7d70c4990cd770c3531700596";
          hash = "sha256-6AHLT/XQnFYiAOO2yGQeDLYt5m4PMWZdtTjz8So0IGA=";
        };
        meta = {
          description = "Scroll past the end of file just like scrolloff option";
          homepage = "https://github.com/Aasim-A/scrollEOF.nvim";
        };
      };
    };
}
