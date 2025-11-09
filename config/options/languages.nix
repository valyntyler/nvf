{pkgs, ...}: {
  vim.languages = {
    enableTreesitter = true;
    enableFormat = true;
    enableExtraDiagnostics = true;

    assembly.enable = true;
    bash.enable = true;
    clang.enable = true;
    csharp.enable = true;
    css.enable = true;
    go.enable = true;
    haskell.enable = true;
    lua.enable = true;
    nix.enable = true;
    nu.enable = true;
    php.enable = true;
    ts.enable = true;

    html = {
      enable = true;
      lsp.servers = ["superhtml" "emmet-ls"];
    };
    markdown = {
      enable = true;
      format = {
        enable = true;
        type = "prettierd";
        package = pkgs.prettierd;
      };
      extensions.markview-nvim.enable = false;
    };
    python = {
      enable = true;
      lsp.servers = "pyright";
    };
    rust = {
      enable = true;
      extensions.crates-nvim.enable = false;
    };
    sql = {
      enable = true;
      format.enable = false;
      extraDiagnostics.enable = false;
    };
  };
}
