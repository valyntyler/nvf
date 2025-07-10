{pkgs, ...}: {
  vim.lsp = {
    enable = true;
    formatOnSave = true;
    lspkind.enable = true;
    trouble.enable = true;
  };
  vim.lsp.servers = {
    html = {
      enable = true;
      cmd = ["${pkgs.vscode-langservers-extracted}/bin/vscode-html-language-server" "--stdio"];
      init_options.provideFormatter = true;
      filetypes = ["html"];
    };
    emmet = {
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
