so ~/.vim/neobundle.vim

set ai
set ruler
set modeline
syntax on
set ruler
set textwidth=80
set shiftwidth=4
set expandtab
set tabstop=2
set hlsearch
set nowrap
set nu

" Fix: backspace only deletes characters of current edit
set backspace=2

runtime ftplugin/man.vim
filetype plugin indent on " Enable filetype-specific indenting and plugins
" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim
augroup myfiletypes
" Clear old autocmds in group
autocmd!
" autoindent with two spaces, always expand tabs
autocmd FileType ruby,eruby,yaml,xml set ai sw=2 sts=2 et
autocmd FileType perl set ai sw=4 sts=4 et
augroup END


syn region texZone start="\\begin{code}" end="\\end{code}\|%stopzone\>"

" Vim syntax file
" Language: SCSS (Sassy CSS)
" Author: Daniel Hofstetter (daniel.hofstetter@42dh.com)
" Inspired by Tim Pope's sass syntax file

if exists("b:current_syntax")
  finish
endif

runtime! syntax/css.vim

syn match scssVariable "$[[:alnum:]_-]\+"
syn match scssMixin "^@mixin.*"
syn match scssMixing "@include.*"

syn region scssComment	start="^\z(\s*\)//" end="^\%(\z1 \)\@!"

hi def link scssVariable  Identifier
hi def link scssMixin	  PreProc
hi def link scssMixing	  PreProc
hi def link scssComment	  Comment

let b:current_syntax = "scss"

set tags=.tags,.gemtags
nmap <c-s> :update<cr>
vmap <c-s> <c-c>:update<cr>
imap <c-s> <c-o>:update<cr>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
colorscheme tender
" vim-airline
set laststatus=2
set timeoutlen=50
