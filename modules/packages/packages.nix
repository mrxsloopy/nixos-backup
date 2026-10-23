{ ... }:

{
  environment.systemPackages = with pkgs; [
    vim-full
    wget
    git
    tree
    btop
    fastfetch
    bat
  ];
}
