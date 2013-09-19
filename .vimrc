source ~/dotfiles/bundles.vim
runtime macros/matchit.vim

syntax enable
filetype plugin indent on
colorscheme darkzen

set guifont=Source\ Code\ Pro:h14
set number relativenumber
set ignorecase smartcase
set cursorline
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999
set history=10000
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch

:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

let g:solarized_termcolors=256

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>x :edit %%
map <leader>v :view %%
nmap <leader>es :sp <C-R>=expand('%:h').'/'<cr>
nmap <leader>ev :vsp <C-R>=expand('%:h').'/'<cr>
nmap <leader>et :tabe <C-R>=expand('%:h').'/'<cr>

" Git Mappings
vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
vmap <Leader>gi :Gist<cr>
map <Leader>gw :!git add . && git commit -m 'WIP' && git push<cr>
map <Leader>gd :Gdiff<cr>
map <Leader>gs :Gstatus<cr>
map <Leader>gc :Gcommit<cr>

" Misc Mappings
map <Leader>i mmgg=G`m<CR>

let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_post_private = 1
let g:gist_open_browser_after_post = 1
