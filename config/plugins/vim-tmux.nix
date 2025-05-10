{pkgs, ...}: {
  config.vim.extraPlugins = {
    vim-tmux-navigator = {
      package = pkgs.vimPlugins.vim-tmux-navigator;
      setup = ''
        vim.g.tmux_navigator_no_mappings = 1

        vim.keymap.set('n', '<a-h>', '<cmd>TmuxNavigateLeft<CR>', { silent = true })
        vim.keymap.set('n', '<a-j>', '<cmd>TmuxNavigateDown<CR>', { silent = true })
        vim.keymap.set('n', '<a-k>', '<cmd>TmuxNavigateUp<CR>', { silent = true })
        vim.keymap.set('n', '<a-l>', '<cmd>TmuxNavigateRight<CR>', { silent = true })
      '';
    };
  };
}
