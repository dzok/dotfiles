let $LANG = 'en'

call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'ntpeters/vim-better-whitespace'
Plug 'kchmck/vim-coffee-script'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-sensible'
Plug 'janko-m/vim-test'
Plug 'elixir-lang/vim-elixir'
Plug 'elmcast/elm-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
call plug#end()

syntax enable

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

let mapleader = " "
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
map <Leader>cc <plug>NERDCommenterToggle<CR>
map <Leader>gb :Gblame<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gd :Gdiff<CR>
map <Leader>gl :Glog<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>n :NERDTreeToggle<CR>

let test#strategy = "neovim"
map <Leader>t :TestNearest<CR>
map <Leader>r :TestFile<CR>
map <Leader>a :TestSuite<CR>

let g:buffergator_suppress_keymaps = 1
map <Leader>bg :BuffergatorToggle<CR>
map <Leader>bb :bn<CR>
map <Leader>bB :bp<CR>
map <Leader>bd :bd<CR>

set mouse=a

set background=light
colorscheme solarized

let g:vim_json_syntax_conceal = 0
let &colorcolumn = 81

let g:airline_section_b = '%{fnamemodify(getcwd(), '':t'')} > %{airline#extensions#branch#head()}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:jsx_ext_required = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

if executable('pt')
  let g:ackprg = 'pt'
endif
