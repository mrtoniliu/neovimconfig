" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Stable version of coc
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Keeping up to date with master
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
    "Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

    Plug 'jackguo380/vim-lsp-cxx-highlight'

    " Syntax checking
    Plug 'scrooloose/syntastic'

    " fzf for fuzzy find
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " commenter
    Plug 'scrooloose/nerdcommenter'

    " gitgutter
    "Plug 'mhinz/vim-signify'
    Plug 'airblade/vim-gitgutter'
    "Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "Python syntax highlight
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}





    " End
    call plug#end()
