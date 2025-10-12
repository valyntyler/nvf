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
    html.enable = true;
    lua.enable = true;
    nix.enable = true;
    nu.enable = true;
    php.enable = true;
    ts.enable = true;

    markdown = {
      enable = true;
      format = {
        enable = true;
        type = "prettierd";
        package = pkgs.prettierd;
      };
    };
    python = {
      enable = true;
      lsp.server = "pyright";
    };
    rust = {
      enable = true;
      crates.enable = false;
    };
    sql = {
      enable = true;
      lsp = {
        enable = false;
        package = ["${pkgs.sqls}/bin/sqls"];
      };
    };
  };
}
