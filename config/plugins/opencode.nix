{pkgs, ...}: {
  config.vim.lazy.plugins = {
    "opencode.nvim" = {
      enabled = true;
      package = pkgs.vimPlugins.opencode-nvim;
      setupModule = "opencode";
      keys = [
        {
          key = "<leader>ot";
          mode = "n";
          action = "<cmd>lua require('opencode').toggle()<CR>";
        }
        {
          key = "<leader>oa";
          mode = "n";
          action = "<cmd>lua require('opencode').ask()<CR>";
        }
        {
          key = "<leader>oa";
          mode = "v";
          action = "<cmd>lua require('opencode').ask('@selection: ')<CR>";
        }
        {
          key = "<leader>oe";
          mode = ["n" "v"];
          action = "<cmd>lua require('opencode').select_prompt()<CR>";
        }
        {
          key = "<leader>on";
          mode = "n";
          action = "<cmd>lua require('opencode').command('session_new')<CR>";
        }
      ];
    };
  };
}
