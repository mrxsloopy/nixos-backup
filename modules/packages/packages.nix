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
    eza
    tmux
    curl
    nmap
    tcpdump
    ripgrep
    zip
    unzip
    ncdu
    iotop
    dig
    rsync
    openssl
  ];
}
