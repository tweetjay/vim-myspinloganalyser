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

syn match sdkVersion      'SDK [vV]ersion: \d\.\d\.\d'
syn match protocolVersion 'Protocol: V\d\.\d\.\d'
syn match appUrl '[a-z]\+\.[a-z]\+\.[a-z]\+\.*[a-z-]*'
syn match fatalError '^.*FATAL\].*$'
syn match errorError '^.*ERROR/.*$'

let b:current_syntax = "mySPINLog"

hi def link appUrl          Title
hi def link sdkVersion      Number
hi def link protocolVersion Number
hi def link fatalError      Error
hi def link errorError      Number
