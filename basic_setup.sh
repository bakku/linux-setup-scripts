# install necessary software
sudo apt-get -y install git curl build-essential

# configure git
git config --global user.name "Christian Paling"
git config --global user.email "christian.paling@googlemail.com"
git config --global push.default simple

# create dev folder
mkdir -p $HOME/Development/bakku

# clone dotfiles
mkdir -p $HOME/Development/bakku/misc
cd $HOME/Development/bakku/misc
git clone https://github.com/bakku/dotfiles

# configure vim
cp $HOME/Development/bakku/misc/dotfiles/.vimrc $HOME
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p $HOME/.vim/tmp

# configure zsh
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
