"inoremap <expr> <Enter> g:vimtex#syntax#in_mathzone() ? eval(<Plug>(vimtex-cmd-toggle-break)) : eval(<CR>)

call vimtex#imaps#add_map({
    \ 'lhs' : ',',
    \ 'rhs' : '\dotsc',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'oR',
    \ 'rhs' : '\mathbb{R}',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'oZ',
    \ 'rhs' : '\mathbb{Z}',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'oQ',
    \ 'rhs' : '\mathbb{Q}',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'oN',
    \ 'rhs' : '\mathbb{N}',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'oC',
    \ 'rhs' : '\mathbb{C}',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'ou',
    \ 'rhs' : '\cup',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'oi',
    \ 'rhs' : '\cap',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'oe',
    \ 'rhs' : '\in',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'oE',
    \ 'rhs' : '\notin',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'o<',
    \ 'rhs' : '\leq',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'o>',
    \ 'rhs' : '\geq',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'o=',
    \ 'rhs' : '\neq',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'op',
    \ 'rhs' : '\prec',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'oP',
    \ 'rhs' : '\succ',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'od',
    \ 'rhs' : '\mid',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'oD',
    \ 'rhs' : '\nmid',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'oo',
    \ 'rhs' : '\vee',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'oa',
    \ 'rhs' : '\wedge',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'on',
    \ 'rhs' : '\neg',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'ohl',
    \ 'rhs' : '\leftandright',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'os',
    \ 'rhs' : '\star',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'o(',
    \ 'rhs' : '\not\subset',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'o[',
    \ 'rhs' : '\not\subseteq',
    \})

call vimtex#imaps#add_map({
    \ 'lhs' : 'ow',
    \ 'rhs' : '\mathcal{P}',
    \})

set iskeyword-=:
