cd ..
if [[ -d ~/.config/nvim/ ]]; then
  rm -rf ~/.config/nvim/
  cp -r nvim/ ~/.config/nvim/
else
  mkdir -p ~/.config/nvim/
fi

cd ~/.config/nvim/ && nvim
