# ctrlp-nerdtree

This [CtrlP](https://github.com/ctrlpvim/ctrlp.vim) extension allows you to open the [NERDTree](https://github.com/scrooloose/nerdtree) in a specified directory. It works only in Unix-like operating systems.

## How to use

``` vim
:CtrlPNerdTree
```

By default the plugin ignores hidden directories. You can change this by adding:

```vim
let g:ctrlp_nerdtree_show_hidden = 1
```

to your .vimrc

## Installation

If you use the MacOS you will need to install a `findutils` package:

```sh
brew install findutils
```

### Using [pathogen](https://github.com/tpope/vim-pathogen)

``` sh
git clone git://github.com/voronkovich/ctrlp-nerdtree.vim ~/.vim/bundle/ctrlp-nerdtree.vim
```

### Using [vundle](https://github.com/gmarik/vundle)

Add to vimrc:

``` vim
Bundle 'voronkovich/ctrlp-nerdtree.vim'
```

## License

Copyright (c) Voronkovich Oleg.  Distributed under the same terms as Vim itself.
See `:help license`.
