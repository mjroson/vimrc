ON LINUX MINT V 17.1  KDE 
 
 # Deleted vim to system
      sudo apt-get autoremove vim vim-tiny
      sudo rm -rf /usr/share/vim
      sudo rm -rf /etc/vim
    
    
    Installs ṕackages requirements:

    # Lib dependence to install vim
      sudo apt-get install libghc-vty-dev

    # Added Support to tagbar Pluggin to vim
      sudo apt-get install exuberant-ctags

    # Added support to flake8
      sudo pip3 install flake8

    # Downloaded and install vim with support python3
      cd Downloads/
      git clone https://github.com/vim/vim.git
      cd vim/
      ./configure --enable-python3interp --enable-cscope --enable-gui=auto --enable-multibyte -with-python3-config-dir=/usr/lib/python3.4/config-3.4m-x86_64-linux-gnu --prefix=/usr/ --with-features=huge
      make
      sudo make install
      
    # Downloaded my vimrc
      cd ~
      git clone git@github.com:mjroson/vimrc.git ~/.my_vimrc
      ln -s ~/.my_vimrc/.vimrc ~/.vimrc
	    
      git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    
    # When first open vim run:
      :PluginInstall


    
    
