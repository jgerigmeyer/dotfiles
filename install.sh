#!/bin/sh

if [ ! -f "$HOME/dot/install.sh" ]; then
  echo "must be cloned at ~/dot/"
  exit 1
fi

for fn in gitconfig screenrc emacs.d bash_aliases; do
  src="$HOME/dot/${fn}"
  dest="$HOME/.${fn}"
  if [ -e $dest ]; then
    echo "skipping $fn; already exists in homedir"
  else
    echo "linking $fn"
    ln -s $src $dest
  fi
done
