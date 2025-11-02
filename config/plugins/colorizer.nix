{
  vim.ui.colorizer = {
    enable = true;
    setupOpts.filetypes = {
      css = {
        RGB = true;
        RRGGBB = true;
        RRGGBBAA = true;
        names = true;
        rgb_fn = false;
        hsl_fn = false;
        css_fn = true;
        css = true;
        virtualtext = " ";
      };
    };
  };
}
