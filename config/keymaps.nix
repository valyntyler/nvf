{
  config.vim.keymaps = [
    {
      key = "-";
      mode = "n";
      silent = true;
      action = ":Oil<CR>";
    }
    {
      key = "<leader>?";
      mode = "n";
      silent = true;
      action = ":WhichKey<CR>";
    }
  ];
}
