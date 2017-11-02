" set clipboard=unnamed
set backupcopy=yes
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

set guifont=Monaco:h12

execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set ruler

" set runtimepath^=~/.vim/bundle/ctrlp.vim
au BufNewFile,BufRead *.ejs set filetype=html
colorscheme zellner

autocmd FileType ruby map <F9> :w<CR>:!ruby -c %<CR>

map <s-left> :bprevious<CR>
map <s-right> :bnext<CR>

autocmd FileType php setlocal ts=4 sts=4 sw=4

set rtp+=/usr/local/opt/fzf

map ; :Buffers<CR>
map <leader>t :Files<CR>

let g:ackprg = 'ag --nogroup --nocolor --column'

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
