lua << EOF
require("dylan")
print("hello")
EOF

set nobackup
set noswapfile

autocmd BufAdd,BufRead,BufEnter * if search('\%1l--.*$','w') > 0 | set syn=GT | endif
