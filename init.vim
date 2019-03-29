call plug#begin('~/.config/nvim/plugged') "Vim Plug
	source ~/.config/nvim/vimc/pluginlist.vim "VIM Plugin List for VimPlug
call plug#end()

source ~/.config/nvim/vimc/base.vim "VIM Base Configuration
source ~/.config/nvim/vimc/pluginc.vim "VIM Plugin Configuration
let whoami = "indra"


" <leader>ev :e ~/.config/nvim/init.vim<CR>
" <leader>ep :e ~/.config/nvim/vimc/pluginlist.vim<CR>
" <leader>eb :e ~/.config/nvim/vimc/base.vim<CR>
" <leader>ec :e ~/.config/nvim/vimc/pluginc.vim<CR>
