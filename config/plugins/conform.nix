{pkgs, ...}: {
  config.vim.formatter.conform-nvim = {
    setupOpts = {
      format_after_save = null;
      format_on_save = {
        timeout_ms = 500;
        lsp_format = "fallback";
      };
      formatters_by_ft = {
        # kdl = ["kdlfmt"];
        php = ["php-cs-fixer"];
        vue = ["prettier"];
        gdscript = ["gdformat"];
      };
      formatters = {
        "php-cs-fixer" = {
          command = "${pkgs.php83Packages.php-cs-fixer}/bin/php-cs-fixer";
          args = [
            "fix"
            "--rules=@PSR12"
            "$FILENAME"
          ];
          stdin = false;
        };
        "kdlfmt" = {
          command = "${pkgs.kdlfmt}/bin/kdlfmt";
          args = [
            "format"
            "-"
          ];
          stdin = true;
        };
      };
    };
  };
}
