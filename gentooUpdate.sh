#!/bin/bash
sudo emerge --sync
sudo emerge --update --deep --newuse -avq @world
sudo emerge --depclean
sudo revdep-rebuild
