"for wsl only
set mouse=a

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/vim-plug/coc.vim

let mapleader = ","

" Save temp files
set backupdir=~/.config/nvim/temp
set directory=~/.config/nvim/temp

"Filtype plugin
filetype plugin on

"error fixes
let g:coc_start_at_startup = v:true
let g:airline_powerline_fonts = 1

"fzf shortcut
:nnoremap <C-p> :FZF<Enter>
" Ctrl+V - opens a file in new vertical split, Ctrl+X - opens a file in new horizontal split, Ctrl+T opens a fine in a new tab.

"alternate settings for nerdTree right below
"let NERDTreeWinPos=1 

"let g:NERDTreeWinPos = "right"
:nnoremap <Leader>p :NERDTreeToggle<CR>

" Line no
"set rnu

"THIS AUTOSETS GRUVBOX AS DEFAULT THEME
colorscheme gruvbox
set background=dark

" Mapping ctrl k to save
:nmap <c-k> :w<CR>
:imap <c-k> <Esc>:w<CR><Esc>

"Emmet leader
let g:user_emmet_mode='n' " only normal mode
let g:user_emmet_settings = {
			\  'javascript' : {
			\      'extends' : 'jsx',
			\  },
			\}



"insert tag using ysw of vim surround
:nmap <Leader>it ysit
:nmap <Leader>at ysat
:nmap <Leader>w ysw
:nmap <Leader>W ysW
:nmap <Leader>iw ysiw
:nmap <Leader>iW ysiW


set statusline=\PATH:\ %r%F\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \LINE:\ %l/%L/%P\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ TIME:\ %{strftime('%T')}

"TABS AND SPACES
:set tabstop=4 shiftwidth=4 expandtab

"Insert blank Line
:nmap <Leader>o a<CR><Esc>$
"Insert Comment
:nmap <Leader><Space> gcc
:vmap <Leader><Space> gcc
"Space before cursor
:nmap <Leader>b i<Space><Esc>l
"Search and indentation
:nmap <Leader>/ /\c
:nnoremap <Leader>? :vim // **/*<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
:nnoremap <Leader>cp :cope<CR>
:nnoremap <Leader>= gg=G
:nnoremap <Leader><CR> :!touch ./js<LEFT><LEFT>
:nnoremap <Leader>4<CR> :!mkdir ./


"Wrap
"set nowrap


"TIP FOR LATER
" autocmd BufEnter * :syntax sync fromstart

"TIPS FOR VIM
"use 'ctrl and [ / alt and l' instead of escape
"use :b and then name sutocomplete to jump between buffers


"Coc extensions -> coc-pairs coc-eslint coc-tsserver

"For navigation
:nnoremap <Leader>, gt
:nnoremap <Leader>< gT
:nnoremap <Leader>n nzz
:nnoremap <Leader>N Nzz
:nmap <Leader>. <C-w>w
:nmap <Leader>< gT
:inoremap <c-l> <right>
:inoremap <c-h> <left>


:let g:UltiSnipsListSnippets="<C-e>"
:let g:UltiSnipsJumpForwardTrigger="<C-f>"
:let g:UltiSnipsJumpBackwardTrigger="<C-g>"
:let g:UltiSnipsExpandTrigger = '<C-d>'

"Mapping for using recording with Coc pairs
:nnoremap <Leader>q :CocDisable<CR> 
:nnoremap <Leader>@ :CocEnable<CR>

:set completeopt=menu,noinsert


"TIPS
"USE ctrl o insert mode more often

"USe scrolloff fro centering cursor at screen. Beware can cause
"dissappearing issues. Trial for now.
" :set so=999 Not useful tried
set so=5
"
