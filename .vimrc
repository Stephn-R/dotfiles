execute pathogen#infect()
syntax on
set number
filetype plugin indent on

autocmd vimenter * NERDTree
map <C-b> :NERDTreeToggle<CR>

let g:indent_guides_enable_on_vim_startup = 1
set ts=4 sw=4 et
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1

set mouse=a
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * NERDTree | wincmd p
