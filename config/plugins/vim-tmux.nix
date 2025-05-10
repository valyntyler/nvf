{pkgs, ...}: {
  config.vim.extraPlugins = {
    vim-tmux-navigator = {
      package = pkgs.vimPlugins.vim-tmux-navigator;
    };
  };
}
