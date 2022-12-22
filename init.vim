lua << EOF
require("dylan")
print("hello")
EOF

let g:everforest_background = 'hard'
let g:everforest_better_performance = 1
colorscheme everforest
autocmd BufAdd,BufRead,BufEnter * if search('\%1l--.*$','w') > 0 | set syn=GT | endif
