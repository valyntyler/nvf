{pkgs, ...}: {
  config.vim.lazy.plugins = {
    "avante.nvim" = {
      package = pkgs.vimPlugins.avante-nvim;
      setupModule = "avante";
    };
  };
}
