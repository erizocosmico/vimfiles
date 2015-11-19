echo 'Installing pathogen...'
git clone https://github.com/tpope/vim-pathogen
mkdir -p .vim/autoload
cp vim-pathogen/autoload/pathogen.vim .vim/autoload/
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
wd=$(pwd)
unlink ~/.vim > /dev/null
unlink ~/.vimrc > /dev/null
ln -s "$wd/.vim" ~/.vim
ln -s "$wd/.vimrc" ~/.vimrc
echo 'Linked files. All setup!'

