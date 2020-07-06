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

if exists("b:current_syntax")
  finish
endif

" I would like to highlight:
" - AppSDK Components
" - ServiceCore Components
" - ServiceSDK Components
" - INFO, DEBUG, WARNING, ERROR, FATAL
" - URLs from apps
"

syn keyword basicLanguageKeywords INFO DEBUG WARNING ERROR FATAL

syn match fatalError '^.*FATAL\].*$'
syn match errorError '^.*ERROR/.*$'

" match versions like: 2.1.0
syn match sdkVersion      'SDK [vV]ersion: \d\.\d\.\d'

" match protocol versions like V2.0.0
syn match protocolVersion 'Protocol: V\d\.\d\.\d'

" match app urls like: com.test.test
syn match appUrl '[a-z]\+\.[a-z]\+\.[a-z]\+\.*[a-z-]*'

syn match streamDevice 'MSSGenericStreamDevice \(init\|dealloc\)'
syn match deviceReck 'MSSUDPDeviceListener receiveIPAddressBroadcast'

let b:current_syntax = "mySPINLog"

hi def link appUrl          Title
hi def link sdkVersion      Number
hi def link protocolVersion Number
hi def link streamDevice    Error
hi def link deviceReck      Number
hi def link fatalError      Error
hi def link errorError      Number
