"See vim documentation at
"https://vimhelp.org/options.txt.html#%27background%27"
syntax  on

source $VIMRUNTIME/defaults.vim

"Myself settings
set background=dark
set hlsearch
set tabstop=4
set shiftwidth=4
set number

"Automatically append end character
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"Setting onedark.vim
packadd! onedark.vim

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:onedark_termcolors=256
let g:airline_theme='onedark'

colorscheme onedark

"Setting vim-plug
call plug#begin('~/.vim/plugged')
	Plug 'vim-airline/vim-airline'
	Plug 'preservim/nerdtree'
	Plug 'mattn/emmet-vim'
call plug#end()

"Emmet config
let g:user_emmet_leader_key=','
