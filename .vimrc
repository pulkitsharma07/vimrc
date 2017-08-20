" Started with adding some commands from here https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
" but it has become a collection of things from random resources.
" Nothing is mine, as of now.

"Configuring Vundle, a package manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" List of Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'

call vundle#end()

filetype plugin indent on

" Turn on syntax highlighting
syntax on

" Display line numbers
set nu

" Shows a bar in the bottom when using tab completion for commands in the command mode, to see the available options conveniently.
set wildmenu

" Shows the cursor's position in bottom right
set ruler

" [DISABLING THIS FOR NOW] Ignore case when searching
" set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Awesome theme : https://github.com/sickill/vim-monokai
colorscheme monokai

" 1 TAB = 2 SPACES
set shiftwidth=2 softtabstop=2 expandtab

" Set auto identation. This is does not mean it will fix indentation, it means that when you go the next in line in Insert mode, the indentiation will persist.
set autoindent

" Search text selected in visual mode http://vim.wikia.com/wiki/Search_for_visually_selected_text
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" Highlight trailing spaces,etc
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" Keep text selected when changing indentation in visual mode using < >
vnoremap < <gv
vnoremap > >gv

