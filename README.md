# ctrlp-nerdtree

This CtrlP extension allows you to open NERDTree in specified directory. Works only in Unix-like operating systems.

## How to use

``` vim
:CtrlPNerdTree
```

By default plugin ignore hidden directories. You change this by adding:

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
