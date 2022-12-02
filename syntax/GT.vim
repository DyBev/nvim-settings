" VIM syntax file for GuidedTrack language
" Made by Dylan Bevan
" Github Repro: 
" maintained by Dylan Bevan

if exists("b:current_syntax")
	finish
endif

" operators
syn match GuidedTrackSpecial "\*"
syn match GuidedTrackSpecial "/"
syn match GuidedTrackSpecial "\-"
syn match GuidedTrackSpecial "+"
syn match GuidedTrackSpecial "<"

" keywords

" matches
syn match GuidedTrackComment '\v--.*$'
syn match GuidedTrackDebug '\v--DEBUG.*$'
syn match GuidedTrackKeyword '\*\(confirm\|blank\|multiple\|quit\|other\|shuffle\|yaxis\|xaxis\|trendline\|clear\|email\|body\|cancel\|login\|navigation\|randomize\|group\|return\|everytime\|share\|events\|startup\|settings\|success\|error\|throwaway\|page\|reset\|list\|save\|answers\)'
syn match GuidedTrackKeyword '\*\(question\|type\|before\|after\|min\|max\|tip\|time\|date\|icon\|countdown\|header\|default\|tags\|summary\|chart\|data\|color\|opacity\|ticks\|position\|rollovers\|wait\|image\|caption\|repeat\|subject\|to\|when\|identifier\|every\|experiment\|group\|program\|set\|required\|video\|button\|maintain\|audio\|start\|hide\|navigation\|point\|progress\|randomize\|group\|repeat\|title\|picture\|description\|back\|menu\|classes\|trigger\|send\|service\|path\|method\|label\|goto\|xaxis\|yaxis\|switch\|points\|if\|while\|for\)'
syn match GuidedTrackVariable '{\<.*\>'lc=1
syn match GuidedTrackVariable '\(^.*{\)\@<=\<\a*\>'
syn match GuidedTrackVariable '\(\_s=\|=\_s\|=.*\)\@<=\a*\>'
syn match GuidedTrackNumber '\d'

" regions
syn region GuidedTrackVariable start=">>"lc=2 end="\>"
syn region GuidedTrackString start="\"" end="\""
syn match GuidedTrackTag '\(\a:\|\a:\_s\)\@<=.*$'
syn match GuidedTrackVariable '*save:.*$'lc=6
syn match GuidedTrackVariable '*answers:.*$'lc=9
syn match GuidedTrackVariable '\(*for:\_s*\|*for:\)\a*\>'lc=5
syn match GuidedTrackTag '\(\(*for:\|*for:\_s*\)\a*\>\_s\)\@<=in'
syn match GuidedTrackVariable '\(\(\(*for:\|*for:\_s*\)\a*\>\_s\)in\_s\)\@<=\a*\>'
syn match GuidedTrackVariable '\(if:\|*if:\_s*\)\a*\>'lc=4
syn match GuidedTrackImageLink '\(*image.*\)\@<=http.*$'

"specials
syn match GTSpecial '='
syn match GTSpecial '\>:'
syn match GTSpecial '\>}'
syn match GTSpecial '{\<'
syn match GTSpecial '>>'

let b:current_syntax = "GuidedTrack"

highlight link GuidedTrackImageLink underlined
highlight link GuidedTrackAnswer function
highlight link GuidedTrackText macro
highlight link GuidedTrackComment comment
highlight link GuidedTrackDebug debug
highlight link GuidedTrackVariable constant
highlight link GuidedTrackKeyword keyword
highlight link GuidedTrackURL Underlined
highlight link GuidedTrackString string
highlight link GTSpecial operator
highlight link GuidedTrackSpecial operator
highlight link GuidedTrackTag tag
highlight link GuidedTrackNumber number
