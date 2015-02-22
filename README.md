# vimrc
Qvim

git clone https://bitbucket.org/equalsraf/vim-qt

cd ./vim-qt/src

./configure --enable-python3interp --enable-cscope --enable-gui=auto --enable-multibyte -with-python3-config-dir=/usr/lib/python3.4/config-3.4m-x86_64-linux-gnu --prefix=/usr/ --with-features=huge --with-vim-name=qvim --enable-gui=qt


make

make-install