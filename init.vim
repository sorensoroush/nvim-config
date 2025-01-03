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
"         UltiSnips Settings

let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = 'jk'
let g:UltiSnipsJumpBackwardsTrigger = '<S-Tab>'

let g:UltiSnipsSnippetDirectories=['UltiSnips', $HOME.'/.config/nvim/UltiSnips', ]

"----------------------------------------
"         EasyMotion Settings

let g:EasyMotion_do_mapping = 0
let mapleader = " "
map <Leader> <Plug>(easymotion-prefix)
map <Leader>a <Plug>(easymotion-overwin-w)
map <Leader>h <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-linebackward)

"----------------------------------------
"         ALE Settings

let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 0
let g:ale_lint_on_text_changed = 'never'

map <Leader>r <Plug>(ale_lint)
map <C-j> :lnext<CR>
map <C-k> :lprev<CR>

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
set timeoutlen=500

nnoremap <Leader>e <Cmd>Ex<CR>
nnoremap <Leader>w <Cmd>w<CR>
nnoremap <Leader>q <Cmd>qall<CR>
nnoremap <Leader>t <Cmd>split term://bash<CR><Cmd>put =getcwd()<CR>a<C-a>cd<Space><CR><C-l>
nnoremap <A-q> <Cmd>q!<CR>

"------------------------------------------------
"      Custom superscript/subscript digraphs

execute "digraphs as " . 0x2090
execute "digraphs es " . 0x2091
execute "digraphs hs " . 0x2095
execute "digraphs is " . 0x1D62
execute "digraphs js " . 0x2C7C
execute "digraphs ks " . 0x2096
execute "digraphs ls " . 0x2097
execute "digraphs ms " . 0x2098
execute "digraphs ns " . 0x2099
execute "digraphs os " . 0x2092
execute "digraphs ps " . 0x209A
execute "digraphs rs " . 0x1D63
execute "digraphs ss " . 0x209B
execute "digraphs ts " . 0x209C
execute "digraphs us " . 0x1D64
execute "digraphs vs " . 0x1D65
execute "digraphs xs " . 0x2093

execute "digraphs aS " . 0x1d43
execute "digraphs bS " . 0x1d47
execute "digraphs cS " . 0x1d9c
execute "digraphs dS " . 0x1d48
execute "digraphs eS " . 0x1d49
execute "digraphs fS " . 0x1da0
execute "digraphs gS " . 0x1d4d
execute "digraphs hS " . 0x02b0
execute "digraphs iS " . 0x2071
execute "digraphs jS " . 0x02b2
execute "digraphs kS " . 0x1d4f
execute "digraphs lS " . 0x02e1
execute "digraphs mS " . 0x1d50
execute "digraphs nS " . 0x207f
execute "digraphs oS " . 0x1d52
execute "digraphs pS " . 0x1d56
execute "digraphs rS " . 0x02b3
execute "digraphs sS " . 0x02e2
execute "digraphs tS " . 0x1d57
execute "digraphs uS " . 0x1d58
execute "digraphs vS " . 0x1d5b
execute "digraphs wS " . 0x02b7
execute "digraphs xS " . 0x02e3
execute "digraphs yS " . 0x02b8
execute "digraphs zS " . 0x1dbb

execute "digraphs AS " . 0x1D2C
execute "digraphs BS " . 0x1D2E
execute "digraphs DS " . 0x1D30
execute "digraphs ES " . 0x1D31
execute "digraphs GS " . 0x1D33
execute "digraphs HS " . 0x1D34
execute "digraphs IS " . 0x1D35
execute "digraphs JS " . 0x1D36
execute "digraphs KS " . 0x1D37
execute "digraphs LS " . 0x1D38
execute "digraphs MS " . 0x1D39
execute "digraphs NS " . 0x1D3A
execute "digraphs OS " . 0x1D3C
execute "digraphs PS " . 0x1D3E
execute "digraphs RS " . 0x1D3F
execute "digraphs TS " . 0x1D40
execute "digraphs US " . 0x1D41
execute "digraphs VS " . 0x2C7D
execute "digraphs WS " . 0x1D42


