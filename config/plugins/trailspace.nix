{lib, ...}: {
  vim.mini.trailspace.enable = true;
  vim.autocmds = [
    {
      enable = true;
      event = ["BufWritePre"];
      callback = lib.generators.mkLuaInline ''
        function()
          require('mini.trailspace').trim()
        end
      '';
    }
  ];
}
