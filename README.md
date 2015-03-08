ON LINUX MINT V 17.1  KDE 
 
 # Deleted vim to system
      sudo apt-get autoremove vim
      sudo rm -rf /usr/share/vim/
      sudo rm -rf /etc/vim/
      sudo rm /usr/bin/vim.tiny 
      sudo rm /usr/bin/vimtutor
      sudo rm /usr/bin/ex
      sudo rm /usr/bin/view
      sudo rm /usr/bin/rview
    
    

    # Lib dependence to install vim
      sudo apt-get install libghc-vty-dev

    # Downloaded and install vim with support python3
      cd Downloads/
      hg clone https://vim.googlecode.com/hg/ vim
      cd vim/
      ./configure --enable-python3interp --enable-cscope --enable-gui=auto --enable-multibyte -with-python3-config-dir=/usr/lib/python3.4/config-3.4m-x86_64-linux-gnu --prefix=/usr/ --with-features=huge
      make
      sudo make install
      
    # Downloaded my vimrc
      cd ~
      git clone git@github.com:mjroson/vimrc.git ~/.my_vimrc
      ln -s ~/.my_vimrc/.vimrc ~/.vimrc
      # Para usar los paquetes ya instalados que trae el repository o si se instalan los paquetes por Vundle Seguir las siguientes intrucciones
	ln -s ~/.my_vimrc/.vim/ ~/.vim/
      
    ################## PASOS PARA INSTALAR TODOS LOS PAQUETES DE VIM CON VUNDLE #################
    #	  mkdir ~/.vim/										#
    #	  #Downloaded plugin Vundle 								#
    #	    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim		#
    #	  											#
    #	  # In vim										#
    #	    :BundleInstall									#
    #	  											#
    #	  # Installed colorscheme TODO: la config del .vimrc no descarga el paquete		#
    #	    git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/colorschemes	#
    #	    cp -r ~/.vim/bundle/colorschemes/colors/ ~/.vim/colors  				#
    #############################################################################################
    
    # Added Support to tagbar Pluggin to vim
      sudo apt-get install exuberant-ctags