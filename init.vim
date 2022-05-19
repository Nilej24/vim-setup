syntax enable

" useful settings
set nowrap
set ruler
set mouse=a
set tabstop=2
set shiftwidth=2
set showtabline=2
set smarttab
set expandtab
set smartindent
set autoindent
set number
set cursorline
set clipboard=unnamedplus
set relativenumber

" other stuff
set hidden
set encoding=utf-8
set fileencoding=utf-8
set pumheight=10
set cmdheight=2
set splitbelow
set splitright
set t_Co=256
set conceallevel=0
set laststatus=0
set background=dark
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=500

" functions for key remaps
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" key remaps
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>
let g:user_emmet_mode='nv'
let g:user_emmet_leader_key=','

" plugins
call plug#begin('~/.config/nvim/autoload/plugged')

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  " autocomplete and stuff
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " emmet
  Plug 'mattn/emmet-vim'
  " cool themes
  Plug 'joshdick/onedark.vim'
  Plug 'tomasiser/vim-code-dark'
  Plug 'morhetz/gruvbox'
  " prettier plugin
  Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
  " linter plugin
  Plug 'dense-analysis/ale'

call plug#end()

" theme
colorscheme onedark
hi Normal guibg=NONE ctermbg=NONE
