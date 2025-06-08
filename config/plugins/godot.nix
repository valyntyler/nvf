{pkgs, ...}: {
  config.vim.extraPlugins = {
    vim-godot = {
      package = pkgs.vimPlugins.vim-godot;
    };
  };
}
