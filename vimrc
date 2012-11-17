" Reference:
"     1. Vim as a Python IDE, Martin Brochhaus, https://github.com/mbrochh/vim-as-a-python-ide
"
" Note:
"     1. <C+x><C+o> to show omnicomplete option list.
"     2. "What is the <leader> in a .vimrc file?" => '\'
"         http://stackoverflow.com/questions/1764263/what-is-the-leader-in-a-vimrc-file


" Pathogen load
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on


" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

