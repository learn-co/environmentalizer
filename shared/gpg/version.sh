#!/bin/bash
function gpg_version {
  if [[ $(is_homebrew_installed) -eq "installed" ]]; then
    if [[ $is_installed -eq true ]]; then
      echo $(brew ls --versions gnupg | perl -lne 'print $& if /\d.*/')
    else
      echo false
    fi
  else
    echo false
  fi
}