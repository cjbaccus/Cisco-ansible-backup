set nocompatible
set relativenumber
colorscheme elflord
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
filetype plugin indent on
syntax enable

let @h = ':%s/^Protocol.\+Interfaces//g^M:g/^\s*$/d^M:%S/Internet\s\+//g^M:%s/-/0/g^M:%s/\(\(\d\{3,1\}\.\)\{3\}\d\{3,1\}\)/\1-/g^M:%s/-\s\+\d\{3,1\}\s\+/        /g^M:%s/\s\+ARPA.\+//g^M'
