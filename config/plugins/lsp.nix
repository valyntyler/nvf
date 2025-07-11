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
  vim.lsp.servers = {
    html-lsp = {
      enable = true;
      cmd = ["${pkgs.vscode-langservers-extracted}/bin/vscode-html-language-server" "--stdio"];
      init_options.provideFormatter = true;
      filetypes = ["html"];
    };
    emmet-ls = {
      enable = true;
      cmd = ["${pkgs.emmet-ls}/bin/emmet-ls" "--stdio"];
      filetypes = [
        "html"
        "css"
        "javascript"
        "typescript"
      ];
    };
  };
}
