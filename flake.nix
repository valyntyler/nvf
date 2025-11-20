{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:valyntyler/fork-nvf/nil-ls";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    nixpkgs,
    flake-utils,
    ...
  } @ inputs:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {
        inherit system;
        overlays = [(import ./overlay/scrolleof.nix)];
      };
    in {
      packages.default =
        (inputs.nvf.lib.neovimConfiguration {
          inherit pkgs;
          modules = [
            ./config
            ./modules
          ];
        })
      .neovim;
    });
}
