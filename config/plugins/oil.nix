{lib, ...}: {
  config.vim.utility.oil-nvim = {
    enable = true;
    setupOpts = {
      win_options.wrap = true;
      delete_to_trash = "true";
      skip_confirm_for_simple_edits = "false";
      watch_for_changes = "true";
      view_options = {
        show_hidden = false;
        is_hidden_file = lib.generators.mkLuaInline ''
          function(name, bufnr)
            local dot = name:match("^%.")
            local uid = name:match("(.+%.%w+)%.uid$")
            return dot ~= nil or uid ~= nil
          end
        '';
      };
    };
  };
}
