VIM Dotfiles
============

## New System Setup

Uses [Vundle](/gmarik/vundle) for package management, 

1. Get dotfiles
	```
	$ git clone https://github.com/joshperry/vim-dotfiles.git ~/.vim
	```

2. Install Vundler
     ```
     $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
     ```

3. Link .vimrc
	```
	$ ln -s ~/.vim/config-vimrc ~/.vimrc
	```

4. Install Packages
	```
	$ vim +BundleInstall +qall
	```
