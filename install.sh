echo 'Installing pathogen...'
git clone https://github.com/tpope/vim-pathogen
mkdir -p .vim/autoload/pathogen.vim
cp vim-pathogen/autoload/pathogen.vim .vim/autoload/pathogen.vim
rm -rf vim-pathogen
echo 'Pathogen installed'

echo 'Installing plugins...'
mkdir -p .vim/bundle
git submodule init
git submodule update
echo 'Plugins installed'

echo 'Installing theme...'
mkdir -p .vim/colors
wget https://raw.githubusercontent.com/mvader/vim-materialtheme/master/colors/materialtheme.vim -O .vim/colors/materialtheme.vim
echo 'Theme installed'

echo 'Linking files...'
ln -s .vim ~/.vim
ln .vimrc ~/.vimrc
echo 'Linked files. All setup!'

