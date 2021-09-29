let $LANG = 'en'
call plug#begin('~/.vim/plugged')
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
" Plug 'GrzegorzKozub/vim-elixirls', { 'do': ':ElixirLsCompileSync' }
" Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'ntpeters/vim-better-whitespace'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-sensible'
Plug 'janko-m/vim-test'
Plug 'elixir-lang/vim-elixir'
Plug 'elmcast/elm-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'AndrewRadev/dsf.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'Shougo/vimproc.vim', {'do': 'make'}
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
map <Leader>gb :Git blame<CR>
map <Leader>gs :Git status<CR>
map <Leader>gd :Git diff<CR>
map <Leader>gl :Git log<CR>
map <Leader>gc :Git commit<CR>
map <Leader>n :NERDTreeToggle<CR>

let test#strategy = "neovim"
map <Leader>t :TestNearest<CR>
map <Leader>r :TestFile<CR>
map <Leader>a :TestSuite<CR>

let g:buffergator_suppress_keymaps = 1
map <Leader>bg :BuffergatorToggle<CR>
map <Leader>bb :bp<CR>
map <Leader>bB :bb<CR>
map <Leader>bd :bd<CR>

set mouse=a

set background=light
colorscheme solarized

let g:vim_json_syntax_conceal = 0
let &colorcolumn = 101

let g:airline_section_b = '%{fnamemodify(getcwd(), '':t'')} > %{airline#extensions#branch#head()}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:jsx_ext_required = 0

set statusline+=%#warningmsg#
set statusline+=%*

" BEGIN COC config
set updatetime=100
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" END COC config

let g:test#javascript#jest#file_pattern = '\v(__(test|tests|integrationtests)__/.*|(spec|unit|test|integration))\.(js|jsx|coffee|ts|tsx)$'
" let g:test#javascript#jest#file_pattern = '.(js|jsx|coffee|ts|tsx)'
let g:test#javascript#jest#executable = 'npx jest --config=jest.config.json --maxWorkers=1'

let NERDTreeShowHidden=1

let g:NERDSpaceDelims = 1

if executable('pt')
  let g:ackprg = 'pt --smart-case'
endif
