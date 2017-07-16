" A full .vimrc for use within normal vim on macos

" Set folding to markers for .vimrc only 
" vim: foldmethod=marker

" vi compatibility
set nocompatible		

" Vundle {{{

filetype off			" required for Vundle

" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()		" required

Plugin 'VundleVim/Vundle.vim'	" required
Plugin 'plasticboy/vim-markdown'	" Better markdown syntax highlighting, indenting etc.
Plugin 'itchyny/lightline.vim'	" Status bar
Plugin 'itchyny/vim-gitbranch'	" Git branch in lightline
Plugin 'kien/ctrlp.vim'		" Fuzzy file finder
Plugin 'pangloss/vim-javascript'	" Javascript syntax highlighting
Plugin 'junegunn/goyo.vim'	" Toggle minimal writing environment
Plugin 'kshenoy/vim-signature'	" Mark locations in gutter
Plugin 'Valloric/MatchTagAlways'	" Highlight opposite html tag
Plugin 'christoomey/vim-tmux-navigator'	" Easy navigation of tmux and vim splits
Plugin 'itchyny/calendar.vim'	" Interact with google calendar using vim
Plugin 'lervag/vimtex'		" LaTeX editing in vim

call vundle#end()		" required
filetype plugin indent on	" required

" vundle help `:h vundle`
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" }}}

" Keymappings {{{ 

" map `A` (append at end of line) to `a` (append in place)
nnoremap a A

" Move by visual lines rather than actual lines with `k` `j`
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" Resize splits more conveniently using the leader key
nnoremap <Leader>h <C-W>>
nnoremap <Leader>j <C-W>+
nnoremap <Leader>k <C-W>-
nnoremap <Leader>l <C-W><

" Easier save and quit with `;`
noremap ;w :w<CR>
noremap ;q :q<CR>

" Open current buffer in finder with <Leader>o
nnoremap <Leader>o :!open -R %<CR> 

" Copy and paste from `+` register for interacting with mac clipboard
set clipboard=unnamed
vnoremap y "+y 
vnoremap p "+p
nnoremap p "+gp
vnoremap d "+d
nnoremap dd "+dd

" Remap word and space (dw) to delete word (de)
nnoremap dw de
nnoremap de dw

" Open netrw in current split
nnoremap <Leader>n :E<CR>

" Open new split/vsplit/tab with netrw open
nnoremap <Leader>v :vnew<CR>:E<CR>
nnoremap <Leader>s :new<CR>:E<CR>
nnoremap <Leader>t :tabnew<CR>:E<CR>

" }}}

" General Settings {{{

" Movement and resizing {{{

" Set mouse mode 
set mouse=n

" Don’t reset cursor to start of line when moving around
set nostartofline

" Preserve indentation on wrapped lines
set breakindent

" Normal backspace behaviour on OSX
set backspace=2

" }}}

" Appearance {{{

" enable syntax highlighting
syntax on

" Remove ugly vertlines in split bar (Note space after `\ `)
set fillchars+=vert:\ 

" Make end of file `~` the same colour as background
highlight EndOfBuffer ctermfg=black ctermbg=black

" enable line numbers
set number

" statusline always showing
set laststatus=2

" }}}

" Folding {{{

" Make folds with indent
set foldmethod=indent

" Open files with folds open
autocmd BufRead * normal zR

" Show folds in gutter
set foldcolumn=1

" Disable folding in certain filetypes
autocmd Filetype tex setlocal nofoldenable
autocmd Filetype markdown setlocal nofoldenable

" }}}

" Calendar {{{

" Use google calendar on calendar.vim
let g:calendar_google_calendar = 1

" }}}

" VimTeX {{{

" Always think tex files are xelatex - Also see latexmkrc in ~ (Root)
let g:tex_flavor = 'xelatex'

" When running vimtex compiler, don't automatically show quickfix list errors
let g:vimtex_quickfix_mode = 0

" }}}

" Markdown {{{

" Disable folding in markdown
let g:vim_markdown_folding_disabled = 1

" Disable syntax conceal in markdown
let g:vim_markdown_conceal = 0

" }}}

" netrw {{{

" Tree style file list
let g:netrw_liststyle = 3

" Open file in current split
let g:netrw_browse_split = 0

" Maintain current directory when opening netrw
let g:netrw_keepdir = 0

" Stop creating history in .netrwhist
let g:netrw_dirhistmax = 1

" }}}

" Lightline {{{ 

" Add whether file is modified and the current git branch
let g:lightline = {
      \ 'colorscheme': 'powerline', 
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ }}
" }}}

" Stop creating swp and ~ files
set nobackup
set noswapfile

" Default goyo width
let g:goyo_width = 150

" Open vim in Notes folder
cd ~/Google_Drive/Notes

" Ignore case of `/` searches unless an upper case letter is used
set ignorecase
set smartcase

" }}}
