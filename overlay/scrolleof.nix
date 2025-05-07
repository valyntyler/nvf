final: prev: {
  vimPlugins = prev.vimPlugins // {
    scrolleof = final.vimUtils.buildVimPlugin {
      name = "scrollEOF";
      src = final.fetchFromGitHub {
        owner = "Aasim-A";
        repo = "scrollEOF.nvim";
        rev = "a186f695b500e9f0b569102a4a5e8a255cd0d198";
        hash = "sha256-MHa53sHrqSrIKrWjM1Nqz9Lr3TWYGFLXZH6LGER0b18=";
      };
      meta = {
        description = "Scroll past the end of file just like scrolloff option";
        homepage = "https://github.com/Aasim-A/scrollEOF.nvim";
      };
    };
  };
}
