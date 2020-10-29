let
  sources = import ../nix/sources.nix;
  nixpkgs = import sources.nixpkgs (import sources."haskell.nix" {}).nixpkgsArgs;
  project = nixpkgs.haskell-nix.stackProject {
    src = nixpkgs.haskell-nix.haskellLib.cleanGit { src = ./.; };
  };
in project.foo.components.exe.foo
