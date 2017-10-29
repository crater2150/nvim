call plug#begin(expand('<sfile>:p:h') . '/plugged')

" basic stuff
Plug 'pbrisbin/vim-mkdir'
Plug 'embear/vim-localvimrc'
Plug 'Soares/smarttab.vim'

Plug 'crater2150/vim-theme-chroma'

" tim pope stuff
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'

" motions and textobjects
Plug 'kana/vim-textobj-user'
Plug 'glts/vim-textobj-comment'
Plug 'vim-scripts/argtextobj.vim'

Plug 'mhinz/vim-signify'
Plug 'neomake/neomake'

" completion and snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }


Plug 'nixprime/cpsm', { 'do': 'PY3=ON ./install.sh' } | Plug 'Shougo/denite.nvim' 


Plug 'bling/vim-airline'

Plug 'vim-scripts/SyntaxRange'

" ruby
Plug 'depuracao/vim-rdoc'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'

" git
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'gisphm/vim-gitignore'

" C
Plug 'derekwyatt/vim-fswitch'

" other filetype specific plugins

Plug 'derekwyatt/vim-scala'
Plug 'jamessan/vim-gnupg'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'tpope/vim-markdown'
Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'ledger/vim-ledger'
Plug 'elzr/vim-json'
Plug 'kchmck/vim-coffee-script'

call plug#end()

" vim:ft=vim foldmethod=marker
