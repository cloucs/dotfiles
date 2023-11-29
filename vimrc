" enable filetype detection:
filetype on
filetype plugin on
filetype indent on

" colorscheme
set t_Co=256
set background=dark
colorscheme PaperColor
"colorscheme dracula

" syntax highlighting
syntax on
"syntax enable

" tab length
setlocal noexpandtab
set tabstop=4
set shiftwidth=4

" hotkeys
" switch tabs with Shift + h/l
nnoremap <S-h> :tabprevious<CR>
nnoremap <S-l> :tabnext<CR>
" switch splitzs with Ctrl + h/l
nnoremap <C-h> <C-W><C-H>
nnoremap <C-l> <C-W><C-L>

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" show line numbers
set number

" statusbar
set laststatus=2

" python
augroup python_files
	autocmd!
	autocmd FileType python setlocal noexpandtab
	autocmd FileType python set tabstop=4
	autocmd FileType python set shiftwidth=4
augroup END
