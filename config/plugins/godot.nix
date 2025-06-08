{pkgs, ...}: {
  config.vim.extraPlugins = {
    vim-godot = {
      package = pkgs.vimPlugins.vim-godot;
    };
  };
  config.vim.luaConfigRC.vim-godot = ''
    require'lspconfig'.gdscript.setup{capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())}
  '';
}
