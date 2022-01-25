" Keybindings
" -----------

let mapleader = ","
let maplocalleader = ";"

" Make Y consistent with D and C
map Y           y$

" Search
nmap <leader>s  :%s/
vmap <leader>s  :s/

" Split screen
map <leader>v   :vsp<CR>

" Open .vimrc file in new tab. Think Command + , [Preferences...] but with Shift.
map <D-<>       :tabedit ~/.vimrc<CR>

" Reload .vimrc
map <leader>rv  :source ~/.vimrc<CR>

" Auto-indent whole file
nmap <leader>=  gg=G``

" File tree browser
map \           :NERDTreeToggle<CR>

" File tree browser showing current file - pipe (shift-backslash)
map \|          :NERDTreeFind<CR>

" Fuzzy find buffers
map <leader>rb  :FzfBuffers<CR>

" Fuzzy find files
nnoremap <expr> <leader>f (len(system('git rev-parse')) ? ':FzfFiles' : ':FzfGFiles --cached --others --exclude-standard')."\<cr>"

" ctags with rails load path
map <leader>rt :!bundle exec rails runner 'puts $LOAD_PATH.select{\|x\| x.include?(Dir.pwd) && x \!~ \%r{/(vendor\|spec)\b} }.join(" ")' \| xargs /usr/local/bin/ctags -R public/javascripts<CR>
map <leader>rT :!bundle exec rails runner 'puts $LOAD_PATH.select{\|x\| x.include?(Dir.pwd) && x \!~ \%r{/(vendor\|spec)\b} }.join(" ")' \| xargs bundle exec rdoc -f tags; /usr/local/bin/ctags --append -R public/javascripts<CR>

" Comment/uncomment lines
map <leader>/   <plug>NERDCommenterToggle

" In command-line mode, <C-A> should go to the front of the line, as in bash.
cmap <C-A> <C-B>

" Copy current file path to system pasteboard
map <leader>cp :let @* = fnamemodify(expand("%"), ":.")<CR>:echo "Copied: ".fnamemodify(expand("%"), ":.")<CR>
map <leader>C :let @* = fnamemodify(expand("%"), ":.").":".line(".")<CR>:echo "Copied: ".fnamemodify(expand("%"), ":.").":".line(".")<CR>
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>

" Disable middle mouse button, F1
map <MiddleMouse>   <Nop>
imap <MiddleMouse>  <Nop>
map <F1>            <Nop>
imap <F1>           <Nop>

" Global search
map <leader>r :FzfRg<CR>

" Recalculate diff when it gets messed up.
nmap du :diffupdate<CR>

" Undotree
map <leader>u :UndotreeToggle<CR> :UndotreeFocus<CR>

" vim-blockle.vim
let g:blockle_mapping = '<leader>l'

" Unmap arrow keys for happy wrists
" inoremap  <Up>     <NOP>
" inoremap  <Down>   <NOP>
" inoremap  <Left>   <NOP>
" inoremap  <Right>  <NOP>

" Don't rely on escape key
inoremap jj <esc>
