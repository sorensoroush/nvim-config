" --- Marks ---
"  N = /home/soren-wsltp/.config/nvim/init.vim
"  M = /snap/nvim/3186/usr/share/nvim/runtime/doc/usr_toc.txt
"  S = /home/soren-wsltp/.config/nvim/UltiSnips/snippets.snippets


"----------------------------------------
"         Vim Plugins

call plug#begin()

" --- Themes ---

Plug 'ray-x/aurora'
Plug 'rakr/vim-one'
Plug 'EdenEast/nightfox.nvim'
Plug 'diegoulloao/neofusion.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'loctvl842/monokai-pro.nvim'
Plug 'maxmx03/solarized.nvim'
Plug 'tiagovla/tokyodark.nvim'
Plug 'altercation/vim-colors-solarized'
Plug 'ghifarit53/tokyonight-vim'
Plug 'wolandark/Mitra-Vim'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'oxfist/night-owl.nvim'

" --- Functional ---

Plug 'easymotion/vim-easymotion'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'SirVer/ultisnips'
Plug 'lervag/vimtex'

call plug#end()

"----------------------------------------
"         Vimtex Settings

nnoremap <LocalLeader>lS <Plug>(vimtex-compile-ss)
let g:vimtex_quickfix_mode = 1

"----------------------------------------
"         UltiSnips Settings

nnoremap <Leader>s <Cmd>UltiSnipsEdit<CR>
nnoremap <Leader>S <Cmd>call UltiSnips#RefreshSnippets()<CR>

let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = 'jk'
let g:UltiSnipsJumpBackwardsTrigger = '<S-Tab>'

let g:UltiSnipsSnippetDirectories=['UltiSnips', $HOME.'/.config/nvim/UltiSnips', ]
let g:UltiSnipsEditSplit = 'context'

"----------------------------------------
"         EasyMotion Settings

let g:EasyMotion_do_mapping = 0
map <Leader> <Plug>(easymotion-prefix)
map <Leader>a <Plug>(easymotion-overwin-w)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
"map <Leader>h <Plug>(easymotion-lineforward)
"map <Leader>l <Plug>(easymotion-linebackward)

"----------------------------------------
"         ALE Settings

let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 0
let g:ale_lint_on_text_changed = 'never'

nnoremap <Leader>r <Plug>(ale_lint)
nnoremap <C-j> :lnext<CR>
nnoremap <C-k> :lprev<CR>

"----------------------------------------
"         Vim Settings

color neofusion

set hidden
filetype on
filetype plugin on
filetype indent on
syntax on

set incsearch
set hlsearch
set expandtab
set tabstop=4
set shiftwidth=4

set iskeyword-=/()_{}[]
set linebreak
set breakindent
set autoindent
set backspace=indent,eol,start

"----------------------------------------
"         Vim Mappings

inoremap kj <Esc>
let mapleader = " "
set timeoutlen=500

nnoremap <Leader>e <Cmd>Ex<CR>
nnoremap <Leader>w <Cmd>w<CR>
nnoremap <Leader>q <Cmd>qall<CR>
nnoremap <Leader>t <Cmd>split term://bash<CR><Cmd>put =getcwd()<CR>a<C-a>cd<Space><CR><C-l><C-\><C-n>
nnoremap <A-q> <Cmd>q!<CR>
nnoremap <Leader>m <Cmd>mks!<CR>
nnoremap <Leader>f <Cmd>so %<CR>

