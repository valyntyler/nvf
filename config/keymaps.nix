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
      key = "<leader>y";
      desc = "Copy to clipboard";
      mode = ["n" "v"];
      silent = true;
      action = "\"+y";
    }
    {
      key = "<leader>p";
      desc = "Paste from clipboard";
      mode = ["n" "v"];
      silent = true;
      action = "\"+p";
    }
    {
      key = "<leader>p";
      desc = "Prev buffer";
      mode = ["n" "v"];
      silent = true;
      action = ":bp<CR>";
    }
    {
      key = "<leader>n";
      desc = "Next buffer";
      mode = ["n" "v"];
      silent = true;
      action = ":bn<CR>";
    }
    {
      key = "<leader>?";
      mode = "n";
      silent = true;
      action = ":WhichKey<CR>";
    }
  ];
}
