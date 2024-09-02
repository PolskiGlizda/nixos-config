{
  config,
  pkgs,
  pkgs-unstable,
  ...
}:
let
  unstable = pkgs-unstable;
in
{
  home.packages = with pkgs; [
    nixd
    luajitPackages.lua-lsp
    llvmPackages_12.clang-tools
    lua-language-server
    pyright
    nodePackages.typescript-language-server
    rust-analyzer
    gopls
    emmet-language-server
    htmx-lsp
    haskell-language-server
  ];
}
