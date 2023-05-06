set bg=dark
syntax on
set t_Co=256
colorscheme avt
autocmd VimEnter * hi Normal ctermbg=none
"let g:gruvbox_contrast_dark = hard
set number
set cursorline!
hi CursorColumn cterm=NONE ctermbg=240
hi Directory ctermfg=green

if has("termguicolors")
  set termguicolors
  if &t_8f == ''
    " The first characters after the equals sign are literal escape characters.
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum
  endif
endif

"let g:airline#extensions#tabline#enabled = 1

" Lightline
set laststatus=2

let g:lightline = {
	\ 'colorscheme' : '16color',
	\ }

nnoremap <C-e> <End> 
inoremap <C-e> <End>

" Nerdtree
"autocmd VimEnter * NERDTree
map <C-n> :NERDTreeToggle <CR>
map <C-j> :NERDTreeOpen<CR>
nnoremap <C-f> :NERDTreeToggle<Enter>

map <C-a> :set cursorline! <CR> 

" Disabling arrow keys
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>

inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <nop>
vnoremap <Up> <Nop>
