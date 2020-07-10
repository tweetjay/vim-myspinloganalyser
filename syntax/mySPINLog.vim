" {{{
"   Name:        tweetjay
"   Author:      tweetjay <tweetjay2@icloud.com>
"   Url:         https://github.com/tweetjay/vim-tweetjay-syntax
"   License:     The MIT License (MIT)
"
"   Language: mySPIN logfile Keywords
"   Vim syntax file
"
" }}}

" if exists("b:current_syntax")
  " finish
" endif

" I would like to highlight:
" - AppSDK Components
" - ServiceCore Components
" - ServiceSDK Components
" - INFO, DEBUG, WARNING, ERROR, FATAL
" - URLs from apps
"
hi! Warning guifg=#008787 guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi! Error guifg=#e06c75 guibg=NONE guisp=NONE gui=bold ctermfg=30 ctermbg=NONE cterm=bold
hi! Fatal guifg=NONE guibg=#e06c75 guisp=NONE gui=bold ctermfg=30 ctermbg=NONE cterm=bold
hi! Blue guifg=#365C8A guibg=#e06c75 guisp=NONE gui=NONE ctermfg=075 ctermbg=NONE cterm=NONE

syn match basicHighlights '\([Ss]tart\|[Ss]top\|[Ee]rror\|fail\|false\|true\|timeout\|terminate\|shutdown\)\w*'

syn match fatalError '^.*FATAL\].*$'
syn match warningError '^.*WARNING/.*$'
syn match errorError '^.*ERROR/.*$'

" match versions like: 2.1.0
syn match sdkVersion      'SDK [vV]ersion: \d\.\d\.\d\(\.\d\)*'

" match protocol versions like V2.0.0
syn match protocolVersion 'Protocol: V\d\.\d\.\d'

" match app urls like: com.test.test
syn match appUrl '[a-z]\+\.[a-z]\+\.[a-z]\+\(\.[a-z0-9-]*\)*'

syn match streamDevice '^.*MSSGenericStreamDevice \(init\|dealloc\).*$'
syn match deviceReck '^.*MSSUDPDeviceListener\( receiveIPAddressBroadcast\|.*ignoring\).*$'

let b:current_syntax = "mySPINLog"

hi def link basicHighlights Keyword
hi def link appUrl          Title
hi def link sdkVersion      Number
hi def link protocolVersion Number
hi def link streamDevice    Error
hi def link deviceReck      Blue
hi def link fatalError      Fatal
hi def link warningError    Warning
hi def link errorError      Error
