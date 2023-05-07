set number
set numberwidth=1

set confirm
set cursorline
set termguicolors

set list
set listchars=tab:⇥\ ,eol:↵,trail:␣,extends:>,precedes:<

set ignorecase
set smartcase

set expandtab
set tabstop=4
set shiftwidth=0

set spell
set spelllang=en_us,cjk

set fileencodings=ucs-bom,utf-8,default,euc-jp,sjis,latin1

set cdhome

func LessInitFunc()
    set nocursorline
    set laststatus=0
endfunc


"https://neovim.io/doc/user/provider.html#provider-clipboard
"OSC 52 を用いる方が現代的
set clipboard+=unnamedplus
let g:clipboard = {
    \ 'name': 'WslClipboard',
    \ 'copy': {
    \   '+': '/mnt/c/Windows/System32/clip.exe',
    \   '*': '/mnt/c/Windows/System32/clip.exe',
    \ },
    \ 'paste': {
    \   '+': '/mnt/c/Users/d0nt8/AppData/Local/Scoop/apps/pwsh/current/pwsh.exe -nop -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    \   '*': '/mnt/c/Users/d0nt8/AppData/Local/Scoop/apps/pwsh/current/pwsh.exe -nop -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    \ },
    \ 'cache_enabled': 0,
    \ }
