" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Pathogen and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.

source ~/.vim/config/vimplug.vim

source ~/.vim/config/init.vim
source ~/.vim/config/settings.vim
source ~/.vim/config/filetypes.vim
source ~/.vim/config/mappings.vim
source ~/.vim/config/plugins.vim

runtime config/init/**.vim

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

autocmd VimEnter * echo "Mike's config!"

