{pkgs, ...}: {
  vim.lsp = {
    enable = true;
    formatOnSave = true;
    lspkind.enable = true;
    trouble.enable = true;
  };
  vim.lsp.servers = {
    html-lsp = {
      enable = true;
      cmd = ["${pkgs.vscode-langservers-extracted}/bin/vscode-html-language-server" "--stdio"];
      init_options.provideFormatter = true;
      filetypes = ["html"];
      root_markers = ["index.html"];
    };
  };
}
