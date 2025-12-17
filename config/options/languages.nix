{
  vim.languages = {
    enableTreesitter = true;
    enableFormat = true;
    enableExtraDiagnostics = true;

    assembly.enable = true;
    bash.enable = true;
    csharp.enable = true;
    css.enable = true;
    go.enable = true;
    haskell.enable = true;
    java.enable = true;
    just.enable = true;
    kotlin.enable = true;
    lua.enable = true;
    markdown.enable = true;
    nix.enable = true;
    nu.enable = true;
    php.enable = true;
    ts.enable = true;

    clang = {
      enable = true;
      # lsp.servers = ["ccls"];
    };
    html = {
      enable = true;
      # lsp.servers = ["superhtml" "emmet-ls"];
    };
    python = {
      enable = true;
      # lsp.servers = ["pyright"];
    };
    rust = {
      enable = true;
      # extensions.crates-nvim.enable = false;
    };
    sql = {
      enable = true;
      format.enable = false;
      extraDiagnostics.enable = false;
    };
  };
}
