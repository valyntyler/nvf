{
  config.vim.keymaps = [
    {
      key = "-";
      mode = "n";
      silent = true;
      action = ":Oil<CR>";
    }
    {
      key = "<leader>e";
      mode = "n";
      silent = true;
      action = ":Neotree toggle right<CR>";
    }
    {
      key = "<leader>?";
      mode = "n";
      silent = true;
      action = ":WhichKey<CR>";
    }
  ];
}
