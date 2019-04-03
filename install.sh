#!/bin/sh

if [ $(uname) = "Linux" ]; then
  sudo pacman -S --noconfirm stubby

  sudo cp -f config /etc/stubby/stubby.yml
  sudo cp -f resolv.conf /etc/resolv.conf

  sudo chattr +i /etc/resolv.conf

  systemctl enable stubby.service
  systemctl start stubby.service
fi
