final: prev: {
  vimPlugins = prev.vimPlugins // {
    scrolleof = final.vimUtils.buildVimPlugin {
      pname = "scrolleof";
      version = "1.2.7";
      src = final.fetchFromGitHub {
        owner = "Aasim-A";
        repo = "scrollEOF.nvim";
        rev = "bf2714c64c2ac2b701b4aa1d70aa25243b702e80";
        hash = "sha256-egUZYybiakDs0AZY1h02qBQtIXiUQY8JTy4YjBjUkiQ=";
      };
      meta = {
        description = "Scroll past the end of file just like scrolloff option";
        homepage = "https://github.com/Aasim-A/scrollEOF.nvim";
      };
    };
  };
}
