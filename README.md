Dotfiles
============

## New System Setup

Uses:

 - [Vundle](/gmarik/vundle) for VIM package management
 - bash for install script

Provides For:

 - tmux
 - vim


### Installation

1. Get dotfiles
	```
	$ git clone https://github.com/joshperry/dotfiles.git ~/.dotfiles
	```

2. Bind dotfiles to home directory
   	```
    $ ~/.dotfiles/bind.sh
    ```


### Additional VIM Setup:

1. Install Vundler
     ```
     $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
     ```

2. Install Packages
	```
	$ vim +BundleInstall +qall
	```
