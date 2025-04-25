{
  config.vim.autocomplete.nvim-cmp = {
    enable = true;
    mappings = {
      next = "<C-j>";
      previous = "<C-k>";
      scrollDocsDown = "<C-l>";
      scrollDocsUp = "<C-h>";
    };
    sources = {
      nvim-cmp = null;
      path = "[Path]";
    };
  };
}
