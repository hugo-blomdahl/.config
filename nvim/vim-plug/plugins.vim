" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'neoclide/coc.nvim'
Plug 'itchyny/lightline.vim'
Plug 'xavierd/clang_complete'
Plug 'yegappan/taglist'
Plug 'junegunn/fzf'
Plug 'vim-syntastic/syntastic'
Plug 'jiangmiao/auto-pairs'

" Has to be last
Plug 'ryanoasis/vim-devicons'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()
