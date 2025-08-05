set number
syntax on
set relativenumber
set tabstop=4 shiftwidth=4 expandtab
set autoindent
set clipboard=unnamedplus

call plug#begin('~/.vim/plugged')

" Typescript, React, JSX için
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Dracula: Klasik koyu mor teması
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

colorscheme dracula

" COC auto complete için
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ "\<TAB>"

" COC dokümantasyon hover
nnoremap K :call CocActionAsync('doHover')<CR>
au BufNewFile,BufRead CMakeLists.txt set filetype=cmake
