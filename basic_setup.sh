sudo apt-get install git
git config --global user.name "Christian Paling"
git config --global user.email "christian.paling@googlemail.com"

cd $HOME
mkdir -p Development/bakku
cd Development/bakku
git clone https://github.com/bakku/dotfiles
cp dotfiles/.vimrc $HOME

