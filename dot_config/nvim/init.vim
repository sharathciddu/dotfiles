" Change the setting to make sure vim and nvim share the rc files
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc



lua require'nvim-tree'.setup {}
"Config Section
