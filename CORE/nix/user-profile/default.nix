{ config, pkgs, stdenv, lib, ... }: {
  

  # -------------------------------------------------------
  # Create custom user profile picture 
  # -------------------------------------------------------

  system.activationScripts.setGnomeProfilePicture = ''
    mkdir -p /var/lib/AccountsService/icons
    if [[ ! -h /var/lib/AccountsService/icons/tolga ]]; then
      cp /etc/nixos/SETUP/profile-pics/cool-tolga-2.png /var/lib/AccountsService/icons/brian
      cp /etc/nixos/SETUP/profile-pics/cool-tolga-2.png /var/lib/AccountsService/icons/brian2
    fi
  '';
}
