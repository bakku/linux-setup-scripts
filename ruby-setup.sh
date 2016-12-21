git clone https://github.com/rbenv/rbenv.git ~/.rbenv

if [ $SHELL == "/bin/bash" ]
then
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_rc
  echo 'eval "$(rbenv init -)"' >> ~/.bash_rc
else
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
  echo 'eval "$(rbenv init -)"' >> ~/.zshrc
fi

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# no documentation when installing gems
echo "gem: --no-document" >> $HOME/.gemrc
