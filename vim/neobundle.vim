set nocompatible               " Be iMproved

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

" My Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'Lokaltog/vim-easymotion'
" messo fuzzyfinder NeoBundle 'scrooloose/nerdtree'
" nmap <Leader>n :NERDTreeToggle<CR>
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'
map <Leader>oc :Rcontroller<Space>
map <Leader>ov :Rview<Space>
map <Leader>om :Rmodel<Space>
map <Leader>oh :Rhelper<Space>
map <Leader>oj :Rjavascript<Space>
map <Leader>os :Rstylesheet<Space>
map <Leader>oi :Rintegration<Space>
NeoBundle 'Shougo/unite.vim'
NeoBundle "scrooloose/syntastic"
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=0
let g:syntastic_ruby_checkers = ['mri']
" let g:syntastic_disabled_filetypes = ['sass']
NeoBundle 'ecomba/vim-ruby-refactoring'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'terryma/vim-multiple-cursors'


" NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
" NeoBundle 'rails.vim'
" Non github repos
" NeoBundle 'git://git.wincent.com/command-t.git'
" gist repos
" NeoBundle 'gist:Shougo/656148', {
" \ 'name': 'everything.vim',
" \ 'script_type': 'plugin'}
" Non git repos
" NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
" NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'

" ...

NeoBundle 'junza/Spink'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'jacoborus/tender'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'evanleck/vim-svelte'

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck
