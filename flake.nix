{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils }: {
    devShell.x86_64-linux =
        let
            pkgs = nixpkgs.legacyPackages.x86_64-linux;
        in pkgs.mkShell {
            buildInputs = [
            pkgs.python312
            pkgs.python312Packages.alembic
            ];
        };
  };




}
