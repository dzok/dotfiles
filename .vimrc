set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'kchmck/vim-coffee-script'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-sensible'
Plugin 'janko-m/vim-test'
Plugin 'bodymindarts/vim-twitch'
Plugin 'elixir-lang/vim-elixir'
Plugin 'lambdatoast/elm.vim'

call vundle#end()
syntax enable
filetype plugin indent on

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

let mapleader = ","
set number
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab

set wildignore+=*/node_modules/*
set wildignore+=*/vendor/*
set wildignore+=*/generated/*
set wildignore+=*/dist/*
set wildignore+=*/bower_components/*
set wildignore+=*/tmp/*
set wildignore+=*/elm-stuff/*
set wildignore+=*/deps/*
set wildignore+=*/rel/*

noremap <up> <NOP>
noremap <down> <NOP>
noremap <left> <NOP>
noremap <right> <NOP>
map <Leader>c<space> <plug>NERDCommenterToggle<CR>
imap <Leader>c<space> <Esc><plug>NERDCommenterToggle<CR>i
map <Leader>gb :Gblame<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gd :Gdiff<CR>
map <Leader>gl :Glog<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>n :NERDTreeToggle<CR>

map <Leader>t :TestNearest<CR>
map <Leader>r :TestFile<CR>
map <Leader>a :TestSuite<CR>

map <Leader>gt :Twitch<CR>
map <Leader>vgt :VTwitch<CR>

set background=light
colorscheme solarized

let g:vim_json_syntax_conceal = 0
let &colorcolumn = 81

let g:airline_section_b = '%{fnamemodify(getcwd(), '':t'')} > %{airline#extensions#branch#head()}'

if executable('pt')
  let g:ackprg = 'pt'
endif
