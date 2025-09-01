"echo '>^.^<'
"----------------------------------------
"         Vim Settings

"set hidden
filetype on
filetype plugin on
filetype indent on
syntax on

set incsearch
set hlsearch
set expandtab
set tabstop=4
set shiftwidth=4
set shiftround
set iskeyword-=_
set iskeyword-=:
set linebreak
set breakindent
set autoindent
set backspace=indent,eol,start
set ignorecase smartcase
set splitbelow
set nrformats=alpha
set foldmethod=indent
set spelloptions=camel

let g:netrw_keepdir = 0
let g:netrw_banner = 0
let g:netrw_list_hide= '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_liststyle = 1
let g:netrw_sort_by = "time"
let g:netrw_sort_direction = "reverse"


"----------------------------------------
"         Vim Mappings

inoremap kj <Esc>
let mapleader = " "
set timeoutlen=500

nnoremap <Leader>e <Cmd>Ex<CR>
nnoremap <A-e> <C-w>s<Cmd>Ex<CR>
nnoremap <Leader>E <Cmd>Ex ~<CR>
nnoremap <A-n> <C-w>s'N
nnoremap <Leader>w <Cmd>w<CR>
nnoremap <Leader>q <Cmd>q<CR>
nnoremap <Leader>Q <Cmd>qall<CR>
nnoremap <Leader>t <Cmd>let @p = expand('%:h:p')<CR><Cmd>split term://bash<CR><Cmd>put p<CR>a<C-a>cd<Space><CR><C-l>
nnoremap <A-q> <Cmd>q!<CR>
nnoremap <Leader>m <Cmd>so $NVIM/session.vim<CR>
nnoremap <Leader>M <Cmd>mks! $NVIM/session.vim<CR>
nnoremap <Leader>o <Cmd>so %<CR>
nnoremap <Leader>r @:
nnoremap <Leader>v <C-w>s<Cmd>e $NVIM/ftplugin/%:e.vim<CR>
nnoremap <A-f> <C-w>s'F<Cmd>Ex<CR>
nnoremap <A-t> <C-w>s<C-w>T<Cmd>Ex<CR>
nnoremap <A-h> <C-w>s'H
nnoremap <Leader>c <Cmd>setlocal invspell spelllang=en_us<CR>
nnoremap <Leader>g viwzg
nnoremap <Leader>G viwzug
nnoremap <Leader>D <Cmd>vertical diffsplit [diff-file]<CR>
"nnoremap <A-z> mfmx zathura %<CR>
nnoremap <A-w> <C-w>s<Cmd>e questions<CR>


tnoremap <A-q> <C-\><C-n><Cmd>q<CR>

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
Plug 'hat0uma/csvview.nvim'
"Plug 'triglav/vim-visual-increment'
Plug 'numirias/semshi'

call plug#end()

lua require('csvview').setup()

"----------------------------------------
"         Semshi Settings

let g:semshi#mark_selected_nodes = 2
nmap <silent> <Leader>f <Cmd>Semshi toggle<CR>

"----------------------------------------
"         Vimtex Settings

let maplocalleader = " "
let g:vimtex_view_method = 'zathura'
let g:vimtex_imaps_leader = ";"
let g:vimtex_quickfix_open_on_warning = 0
"let g:vimtex_quickfix_mode = 1
"let g:vimtex_quickfix_ignore_filters = [
"            \ 'window ID'
"            \]

nnoremap <LocalLeader>lS <Plug>(vimtex-compile-ss)
nnoremap <LocalLeader>lh <Cmd>h vimtex-motions<CR>
nnoremap <LocalLeader>lH <Cmd>h vimtex-default-mappings<CR>

"----------------------------------------
"         Theme Settings

color neofusion

"----------------------------------------
"         UltiSnips Settings

let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = 'jk'
let g:UltiSnipsJumpBackwardsTrigger = '<S-Tab>'

let g:UltiSnipsSnippetDirectories=['UltiSnips', $HOME.'/.config/nvim/UltiSnips', ]
let g:UltiSnipsEditSplit = 'context'

nnoremap <Leader>s <Cmd>UltiSnipsEdit<CR>
nnoremap <Leader>S <Cmd>call UltiSnips#RefreshSnippets()<CR>

"----------------------------------------
"         EasyMotion Settings

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_skipfoldedline = 0

map <Leader> <Plug>(easymotion-prefix)
map <Leader>d <Plug>(easymotion-overwin-w)
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

nnoremap <Leader>a <Plug>(ale_lint)
nnoremap <Leader>A <Plug>(ale_reset_buffer)
nnoremap <A-a> <Cmd>ALEDetail<CR>
nnoremap <C-j> <Cmd>ALENext<CR>
nnoremap <C-k> <Cmd>ALEPrevious<CR>


"========================================
"         Miscellaneous Notes

" --- Custom Colors (Neofusion) ---
" bright_yellow = '#fdee3a',
" bright_orange = '#fdae3a'
" bright_blue = '#9289c5', (Reverted)
  "neutral_red = '#ad3e2a',
" neutral_red = '#ad5e3a',
" neutral_yellow = '#fdae3a'
" neutral_aqua = '#66aeb9', (Reverted)

" --- Default Colors (Neofusion) ---
" light1 = '#33ABC6', ???
" bright_yellow = '#fd5e3a',
" bright_orange = '#fd5e3a',
" bright_blue = '#e2d9c5',
" bright_red = '#fd5e3a',
" neutral_red = '#fd5e3a',
" neutral_yellow = '#fd5e3a',
" neutral_aqua = '#66def9',
  "faded_red = '#fd5e3a',
  "faded_orange = '#fa7a61',
  "light_red = '#fc9487',
  "dark_red = '#a22529',

" --- Marks ---
"  N = /home/soren-wsltp/.config/nvim/init.vim
"  M = /snap/nvim/current/usr/share/nvim/runtime/doc/usr_toc.txt
"  S = /home/soren-wsltp/.config/nvim/UltiSnips/snippets.snippets
"  P = /home/soren-wsltp/.local/share/nvim/plugged/neofusion.nvim/lua/neofusion/palette.lua
"  T = /home/soren-wsltp/.todo
"  F = /home/soren-wsltp/college-files/spring-2025/.fig
"  Z = [csci-135]
"  X = [csci-160]
"  C = [math-150]
