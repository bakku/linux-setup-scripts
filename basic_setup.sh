# setup git
sudo apt-get install git
git config --global user.name "Christian Paling"
git config --global user.email "christian.paling@googlemail.com"
git config --global push.default simple

# create dev folder
cd $HOME
mkdir -p Development/bakku
cd Development/bakku

# clone dotfiles
git clone https://github.com/bakku/dotfiles

# configure vim
cp $HOME/Development/bakku/dotfiles/.vimrc $HOME
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p .vim/tmp

# configure zsh
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
