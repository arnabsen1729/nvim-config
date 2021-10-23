" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes 
    Plug 'joshdick/onedark.vim'
    " Intellisense 
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Ariline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Markdown-preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    " Ale for C/C++ linting
    Plug 'dense-analysis/ale'
    " FZF 
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'liuchengxu/vim-which-key'
    " Golang
    Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
    Plug 'SirVer/ultisnips'
call plug#end()

