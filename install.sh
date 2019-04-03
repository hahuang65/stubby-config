#!/bin/sh

if [ $(uname) = "Linux" ]; then
  sudo pacman -S --noconfirm stubby

  sudo cp -f "${PWD}/config" "/etc/stubby/stubby.yml"
  sudo cp -f "${PWD}/resolv.conf" "/etc/resolv.conf"

  sudo chattr +i /etc/resolv.conf

  systemctl enable stubby.service
  systemctl start stubby.service
fi
