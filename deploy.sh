#!/usr/bin/env bash

if [ -d "~/.vim/bundle/Vundle.vim" ]; then
  echo "Vundle already install..."
else
  git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi

if [ -e "$PWD/vimrc" ]; then
  ln -sf $PWD/vimrc $HOME/.vimrc
else
  echo "There is no vimrc file!"
  exit 1
fi

if command -v gem >/dev/null 2>&1; then
  gem install rcodetools
else
  echo "gem install rcodetools required gem/ruby!"
fi

if command -v go >/dev/null 2>&1; then
  if [ -n "$GOPATH" ]; then
    go get -u github.com/nsf/gocode
  else
    echo "you have not set GOPATH!"
  fi
else
  echo "golang autocompletion required install golang!"
fi

echo "Ready for plugin install..."
echo "1. Open the vim"
echo "$ vim"
echo ""
echo "2. Input some command, as follow:"
echo ": PluginInstall"
echo ""
echo "3. PluginInstall may be wait a minutes..."
