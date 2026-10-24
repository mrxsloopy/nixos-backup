{ pkgs, ... }:

{
  programs.helix = {
    enable = true;
    defaultEditor = true;
    extraPackages = with pkgs; [
      # Nix
      nil
      nixfmt-rfc-style

      # Rust
      rust-analyzer
      # rustc cargo

      # C/C++
      clang-tools
      # cmake-language-server

      # Python
      pyright
      ruff

      # Bash
      nodePackages.bash-language-server
      shellcheck

      # Markdown
      marksman
    ];
  };
}
