#!/bin/sh
ls -ad ~/.dotfiles/.* | xargs -n1 basename | grep -vx -e '.' -e '..' -e '.git' | xargs -n1 -i ln -s .dotfiles/{} ~
