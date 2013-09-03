set autoindent
set background=dark
set et                        " Tabs are converted to spaces, use only when required
set expandtab
set guifont=Monaco:h12
set hid                       " Change buffer without saving
set hlsearch                  " Highlight searches
set incsearch                 " Do incremental searching
set nocindent
set nocompatible              " Use vim defaults
set number
set ruler                     " Show the cursor position all the time
set scrolloff=3               " Keep 3 lines when scrolling
set shiftwidth=4
set showcmd                   " Show incomplete commands
set showmatch                 " Show matching bracets
set smartindent               " Smart indent
set smarttab
set softtabstop=4
set sts=2                     " Soft tab stop
set sw=2                      " Numbers of spaces to (auto)indent
set textwidth=80
set title                     " Show title in console title bar
set ts=2                      " Numbers of spaces of tab character
set wildmenu
set wildmode=longest,list,full
set wrap
set ofu=syntaxcomplete#Complete

set rtp+=~/dotfiles/vim/bundle/vundle/
call vundle#rc()

colorscheme xoria256
filetype off		              " required!
syntax on		                  " turn on syntax highlighting

Bundle 'gmarik/vundle'
Bundle 'lucapette/vim-ruby-doc'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rake'

map <Esc><Esc> :w<CR>
map <D-s> :w<CR>
map <F8> :NERDTreeToggle<CR>
map <F9> :TagbarToggle<CR>
map <F5> :w<CR>:make<CR>
map <Leader>cd :cd %:p:h<CR>

let g:ruby_doc_command='open'

if has("autocmd")
  filetype on
  autocmd FileType ruby setlocal makeprg=rake
  autocmd FileType groovy setlocal makeprg=groovy\ %
  autocmd FileType python setlocal makeprg=/Users/guillaume/.pythonbrew/pythons/Python-3.3.0/bin/python\ %
"  autocmd bufnewfile *.rb exe "silent 0read !insert_header_comment.rb %"
"  autocmd bufnewfile *.rb exe "normal +1ma"
"  autocmd Bufwritepre,filewritepre *.rb exe "silent !update_header_comment.rb %"
"  autocmd Bufwritepre,filewritepre *.rb exe "normal +1ma"
"  autocmd bufwritepost,filewritepost *.rb execute "normal `a"
endif
