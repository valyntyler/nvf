{
  config.vim.telescope = {
    enable = true;
    setupOpts.defaults.file_ignore_patterns = [
      "node_modules"
      "%.git/"
      "%.uid"
      "dist/"
      "target/"
      "result/"
    ];
  };
}
