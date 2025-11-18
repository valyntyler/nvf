{pkgs, ...}: {
  vim.lsp = {
    enable = true;
    formatOnSave = true;
    lspSignature.enable = true;
    lspconfig.enable = true;
    lspkind.enable = true;
    trouble.enable = true;
    otter-nvim.enable = true;
  };

  vim.extraPlugins.mason-nvim = {
    package = pkgs.vimPlugins.mason-nvim;
    setup = ''require("mason").setup()'';
  };

  vim.luaConfigRC.vue-language-server = ''
    require("vue-language-server")
  '';

  vim.lsp.servers.vue_ls = {
    enabled = true;
    cmd = ["${pkgs.lib.getExe pkgs.vue-language-server}" "--stdio"];
    filetypes = ["vue"];
  };
}
