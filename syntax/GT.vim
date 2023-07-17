" VIM syntax file for GuidedTrack language
" Made by Dylan Bevan

if exists("b:current_syntax")
	finish
endif

" operators
syn match GuidedTrackSpecial "\*"
syn match GuidedTrackSpecial "/"
syn match GuidedTrackSpecial "\-"
syn match GuidedTrackSpecial "+"
syn match GuidedTrackSpecial "<"
syn match GuidedTrackSpecial "->"

" keywords
" keywords without : following
syn match GuidedTrackKeyword '\(^\(\t\)*\)\@<=\(\*\(confirm\|blank\|multiple\|quit\|other\|shuffle\|yaxis\|xaxis\|trendline\|clear\|email\|body\|login\|navigation\|randomize\|group\|return\|everytime\|share\|events\|startup\|success\|error\|throwaway\|page\|list\|settings\|reset\|searchable\|purchase\|status\|management\|navigation\|component\|click\|xaxis\|yaxis\|wait\)\>\)\(:\)\@!'
" keyworkds with : following
syn match GuidedTrackKeyword '\(^\(\t\)*\)\@<=\(\*\(question\|type\|before\|after\|min\|max\|tip\|time\|date\|icon\|countdown\|header\|default\|tags\|summary\|chart\|data\|color\|opacity\|ticks\|position\|rollovers\|wait\|image\|caption\|repeat\|subject\|to\|when\|identifier\|every\|experiment\|group\|program\|required\|video\|button\|maintain\|audio\|start\|hide\|point\|progress\|randomize\|group\|repeat\|title\|picture\|description\|back\|menu\|classes\|trigger\|send\|service\|path\|method\|label\|goto\|switch\|points\|if\|while\|for\|with\|settings\|set\|answers\|name\|placeholder\|frequency\|save\|list\|cancel\|until\|what\|database\)\>\)\(:\)\@='

" matches
syn match GuidedTrackVariable '\({\)\@<=\<.*\>\(}\)\@='
syn match GuidedTrackVariable '\(\(^>>\|^\*\).*\)\@<=\<[a-zA-Z0-9-_]*\>'
syn match GuidedTrackVariable '\(->\(\_s\)*\)\@<=\<[a-zA-Z0-9-_]*\>'
syn match GuidedTrackNumber '\d'
syn match GuidedTrackVariable '\(\*[a-z]*:\(\_s\)\?\)\@<=[a-zA-Z?!:\/.,0-9 \-_'%@]*\>'
syn match GuidedTrackVariable '\(^\(\t*\)\?\*\(if\|for\)*:\(\_s\)\?\(.*\)\?\)\@<=\(\<[a-zA-Z0-9-_]*\>\)'
syn match GuidedTrackKeyword '\(\(^.*\)\?[a-zA-Z0-9_-]\>\.\)\@<=\(max\|mean\|size\|median\|min\|shuffle\|size\|unique\|keys\|text\|type\)\>\((\)\@!'
syn match GuidedTrackKeyword '\(\(^.*\)\?[a-zA-Z0-9_-]\>\.\)\@<=\(add\|combine\|count\|erase\|find\|insert\|remove\)\((.*)\)\@='
syn match GuidedTrackKeyword '\(\(^.*\)\?[a-zA-Z0-9_-]\>\.\)\@<=\(sort\)\((\("increasing"\|"decreasing"\))\)\@='
syn match GuidedTrackKeyword '\(\(^.*\)\?[a-zA-Z0-9_-]\>\.\)\@<=\(to\)\((\("seconds"\|"minutes"\|"hours"\|"days"\|"weeks"\|"months"\|"years"\))\)\@='
syn match GuidedTrackKeyword '\(calendar\)\(\(::\(date\|time\|now\)\)\>\)\@='
syn match GuidedTrackKeyword '\(calendar\)\(\(::\(date\|time\|now\)\)\>\)\@='
syn match GuidedTrackKeyword '\(data::\)\@<=\(store\)\>'
syn match GuidedTrackKeyword '\(date::\)\@<=\(store\)\>'
syn match GuidedTrackLink '\(\*\(image\|audio\):\(\_s\)\?\)\@<=http.*$'

" regions
syn region GuidedTrackVariable start=">>"lc=2 end="\>"
syn region GuidedTrackString start="\"" end="\""

"specials
syn match GTSpecial '='
syn match GTSpecial '\>:'
syn match GTSpecial '\(calendar\)\@<=::\(date\|time\|now\)\@='
syn match GTSpecial '\>}'
syn match GTSpecial '\({.*\)\@<=}'
syn match GTSpecial '\(\[.*\)\@<=\]'
syn match GTSpecial '{\<'
syn match GTSpecial '{\(.*}\)\@='
syn match GTSpecial '\[\(.*\]\)\@='
syn match GTSpecial '>>'
syn match GTSpecial '\>\.\<'
syn match GTSpecial '\((\|)\)'
syn match GuidedTrackSpecial '\(^\(\t*\)\?\*\(if\|for\)*:\(\_s\)\?\(.*\)\?\)\@<=\( in \| not \| or \| and \)'

"comments
syn match GuidedTrackComment '^--.*$'
syn match GuidedTrackDebug '^--DEBUG.*$'

"error highlighting
syn match GuidedTrackError '\*\(confirm\|blank\|multiple\|quit\|other\|shuffle\|yaxis\|xaxis\|yaxis\|trendline\|clear\|email\|body\|login\|return\|everytime\|share\|events\|startup\|success\|error\|throwaway\|page\|searchable\)\(:\)\@='
syn match GuidedTrackError '\*\(question\|type\|before\|after\|min\|max\|tip\|time\|date\|icon\|countdown\|header\|default\|tags\|summary\|chart\|data\|color\|opacity\|ticks\|position\|rollovers\|image\|caption\|repeat\|subject\|to\|when\|identifier\|every\|experiment\|program\|required\|video\|button\|maintain\|audio\|start\|hide\|point\|progress\|repeat\|title\|picture\|description\|back\|menu\|classes\|trigger\|send\|service\|path\|method\|label\|goto\|switch\|points\|if\|while\|for\|with\|set\|answers\|save\|name\|placeholder\)\>\(:\)\@!'

syn match GuidedTrackError '\(\(^.*\)\?[a-zA-Z0-9_-]\>\.\)\@<=\(max\|mean\|size\|median\|min\|shuffle\|size\|unique\|keys\|text\|type\)\((\)\@='
syn match GuidedTrackError '\(\(^.*\)\?[a-zA-Z0-9_-]\>\.\)\@<=\(add\|combine\|count\|erase\|find\|insert\|remove\)\((.*)\)\@!'
syn match GuidedTrackError '\(\(^.*\)\?[a-zA-Z0-9_-]\>\.\)\@<=\(sort\)\((\("increasing"\|"decreasing"\))\)\@!'
syn match GuidedTrackError '\(\(^.*\)\?[a-zA-Z0-9_-]\>\.\)\@<=\(to\)\((\("seconds"\|"minutes"\|"hours"\|"days"\|"weeks"\|"months"\|"years"\))\)\@!'
syn match GuidedTrackError '\(calendar\)\(\(::\(date\|time\|now\)\)\>\)\@!'

syn match GuidedTrackError '\(\*\(if\|for\):.*\n\)\(\(\n\)*\t\)\@!'

let b:current_syntax = "GuidedTrack"

highlight link GuidedTrackLink underlined
highlight link GuidedTrackAnswer function
highlight link GuidedTrackText macro
highlight link GuidedTrackComment comment
highlight link GuidedTrackDebug debug
highlight link GuidedTrackVariable constant
highlight link GuidedTrackKeyword function
highlight link GuidedTrackURL Underlined
highlight link GuidedTrackString string
highlight link GTSpecial operator
highlight link GuidedTrackSpecial operator
highlight link GuidedTrackNumber number
highlight link GuidedTrackError error
