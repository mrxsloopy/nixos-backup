{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim-full
    wget
    git
    tree
    btop
    fastfetch
    bat
    helix
    rust-analyzer
    basedpyright
    ruff
    nil
    rustfmt
    eza
    pyright
    tmux
  ];
}
