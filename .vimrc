set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" My Ones
Plugin 'wincent/command-t'
Plugin 'davidhalter/jedi-vim'
Plugin 'bling/vim-bufferline'
" End

Plugin 'VundleVim/Vundle.vim'
Plugin 'fugitive.vim'
" Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
" Bundle 'vim-scripts/ZoomWin'
Bundle 'airblade/vim-gitgutter'
" Bundle 'ctrlp/ctrlp.vim'
Plugin 'kien/ctrlp.vim'
Bundle 'easymotion/vim-easymotion'
Bundle 'edkolev/tmuxline.vim'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
Plugin 'valloric/youcompleteme'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'honza/vim-snippets'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'moll/vim-node'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sheerun/vim-polyglot'
Plugin 'stefandtw/quickfix-reflector.vim'
Plugin 'terryma/vim-expand-region'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/vis'
Plugin 'easytags'
Plugin 'misc'
Bundle 'geekjuice/vim-mocha'
Plugin 'janko-m/vim-test'
Plugin 'docunext/closetag.vim'
" Plugin 'alvan/vim-closetag'
" Plugin 'altercation/vim-colors-solarized'


" vim-test
" let test#strategy = "neovim"

call vundle#end() 
filetype plugin indent on

" YCM
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'


" Utilsnipperts
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"



" auto cmds
" remove fugitive buffers when hidden
autocmd BufReadPost fugitive://* set bufhidden=delete


"js library syntax
let g:used_javascript_libs = 'lo-dash,React,Chai'

" tagbar
nmap <F8> :TagbarToggle<CR>

" mouse support for scrolling
set mouse=a

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" easy motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

 " `s{char}{char}{label}`
 " Need one more keystroke, but on average, it may be more comfortable.
 nmap s <Plug>(easymotion-overwin-f2)

 " Turn on case insensitive feature
 let g:EasyMotion_smartcase = 1

 " JK motions: Line motions
 map <Leader>j <Plug>(easymotion-j)


" ctags
filetype plugin on
set tags=./tags;
let g:easytags_dynamic_files = 1
let g:easytags_events = ['BufWritePost']
" let g:easytags_opts = ["-R --exclude=.git --exclude=node_modules --exclude=test --exclude=.storybook --exclude=build --exclude=dist --exclude=coverage"]
let g:easytags_opts = ["-R"]
let g:easytags_use_wildignore = ".git"
let g:easytags_use_wildignore = "node_modules"
let g:easytags_use_wildignore = ".test"
let g:easytags_use_wildignore = ".storybook"
let g:easytags_use_wildignore = "build"
let g:easytags_use_wildignore = "dist"
let g:easytags_use_wildignore = "coverage"



let g:syntastic_mode_map = { 'mode': 'active',
                            \ 'active_filetypes': ['python', 'javascript'],
                            \ 'passive_filetypes': [] }
" Sfiletype plugin onyntactic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight SyntasticErrorSign ctermfg=009
highlight SyntasticWarningSign ctermfg=226
highlight SyntasticStyleErrorSign ctermfg=165
highlight SyntasticStyleErrorSign ctermfg=011
highlight LineNr ctermfg=251
" highlight link SyntasticErrorSign SignColumn
" highlight link SyntasticWarningSign SignColumn
" highlight link SyntasticStyleErrorSign SignColumn
" highlight link SyntasticStyleWarningSign SignColumn

" Buffer
set hidden
set autoread 
set autowriteall


" scroll
set scrolloff=10
set scrolljump=5

" search 
set ignorecase
set smartcase
set incsearch     " do incremental searching
nmap <silent> ,/ :nohlsearch<CR>

" Leader
let mapleader = ","

" ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard | grep -vE "\.(svg|ttf|eot|otf|wof|jpe?g|png|gif)"']

" NERDTree
nnoremap <Leader>f :NERDTreeFind<Enter>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


set backspace=indent,eol,start
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=5000
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
" set autowrite     " Automatically :write before running commands

" Copy Clipboard
set clipboard=unnamedplus

" Folding
if has('folding')
  if has('windows')
    let &fillchars='vert: '           " less cluttered vertical window separators
  endif
  set foldmethod=indent               " not as cool as syntax, but faster
  set foldlevelstart=999              " start fully folded
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif


augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile *.md set filetype=markdown

  " Enable spellchecking for Markdown
  autocmd FileType markdown setlocal spell

  " Automatically wrap at 80 characters for Markdown
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80

  " Automatically wrap at 72 characters and spell check git commit messages
  autocmd FileType gitcommit setlocal textwidth=72
  autocmd FileType gitcommit setlocal spell

  " Allow stylesheets to autocomplete hyphenated words
  autocmd FileType css,scss,sass setlocal iskeyword+=-
augroup END

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Make it obvious where 80 characters is
call matchadd('ColorColumn', '\%81v', 120)

" Numbers
set number
set numberwidth=5
set relativenumber  

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>


" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" No line wrapping
set tw=0


" Set spellfile to location that is guaranteed to exist, can be symlinked to
" Dropbox or kept in Git and managed outside of thoughtbot/dotfiles using rcm.
set spellfile=$HOME/.vim-spell-en.utf-8.add

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Use space always
:set expandtab

" Always use vertical diffs
set diffopt+=vertical

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

" let g:solarized_termcolors=256
" " set background=dark
" colorscheme solarized

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
" set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set  rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

" Use wild ignore on CtrlP"
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
