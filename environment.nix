{ pkgs, ... }:

let
  duf = pkgs.writeShellScriptBin "duf" ''
    exec ${pkgs.duf}/bin/duf --theme ansi "$@"
  '';
in
{
  environment = {
    enableAllTerminfo = true;
    systemPackages = with pkgs; [
      btop
      duf
      dust
      fd
      lf
      nix-search
    ];
    sessionVariables.GOPATH = "$HOME/.go";
  };
}
