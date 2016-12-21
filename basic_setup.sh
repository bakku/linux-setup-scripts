sudo apt-get install git
git config --global user.name "Christian Paling"
git config --global user.email "christian.paling@googlemail.com"
git config --global push.default simple

cd $HOME
mkdir -p Development/bakku
cd Development/bakku
git clone https://github.com/bakku/dotfiles
cp dotfiles/.vimrc $HOME
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p .vim/tmp
