{ pkgs, ... }:

{
  environment = {
    enableAllTerminfo = true;
    systemPackages = with pkgs; [
      btop
      fd
      nix-search
    ];
    sessionVariables.GOPATH = "$HOME/.go";
  };
}
