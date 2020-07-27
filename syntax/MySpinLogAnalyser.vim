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
hi! Warning guifg=#FFFF00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi! Error guifg=#e06c75 guibg=NONE guisp=NONE gui=bold ctermfg=30 ctermbg=NONE cterm=bold
hi! Fatal guifg=#FFFFFF guibg=#FF1010 guisp=NONE gui=bold ctermfg=NONE ctermbg=09 cterm=bold
hi! Blue guifg=#00C0FF guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi! NeonGreen guifg=#00FF00 guibg=NONE guisp=NONE gui=NONE ctermfg=76 ctermbg=NONE cterm=NONE
hi! Green guifg=#2F8A71 guibg=NONE guisp=NONE gui=NONE ctermfg=114 ctermbg=NONE cterm=NONE
hi! Purple guifg=#c678dd guibg=NONE guisp=NONE gui=NONE ctermfg=177 ctermbg=NONE cterm=NONE

syn match basicHighlights '\([Ss]tart\|[Ss]top\|[Ee]rror\|fail\|false\|true\|timeout.*[\d\.].*\|terminate\|shutdown\|nil\|null\|disconnect\)\w*'
syn match mySpinHighlights '\(MySpinScreenCapturingMethod.*\)'
syn match componentStart '-\[\b\w*\b start[a-zA-Z]*\b\]'

syn match fatalError   '^.*FATAL\].*$'
syn match warningError '^.*WARNING/.*$'
syn match errorError   '^.*ERROR/.*$'

syn match comment      '^//.*$'

" match versions like: 2.1.0
syn match sdkVersion   'SDK [vV]ersion: \d\.\d\.\d\(\.\d\)*'

" match protocol versions like V2.0.0
syn match protocolVersion 'Protocol: V\d\.\d\.\d'

" match app urls like: com.test.test
syn match appUrl '[a-z]\+\.[a-z]\+\.[a-z]\+\(\.[a-zA-Z0-9-]*\)*'

syn match streamDevice        '^.*\[MSSGenericStreamDevice \(init\|dealloc\).*$'
syn match streamDeviceWarning '^.*\[MSSGenericStreamDevice.*NSStreamEventEndEncountered.*$'
syn match streamDeviceError   '^.*\[MSSGenericStreamDevice.*NSStreamEventErrorOccurred.*$'
syn match deviceReck          '^.*MSSUDPDeviceListener \(receiveIPAddressBroadcast\|connectTo:.*\(ignoring\|connecting\)\|checkUnavailable.*lost available\).*$'

syn match screenManagerRequest '\[MSSScreenManager \(requestFrameDataForRect.*Received framebuffer request\|.*received framebuffer request\)'
syn match screenManagerAnswer  '\[MSSScreenManager \(answerPendingRequests\].*answer pending request\|requestFrameDataForRect.*answer framebuffer.*\)'
syn match screenManagerPending '\[MSSScreenManager requestFrameDataForRect.*saving incremental request as pending'

syn match accessoryConnection  '^.*\[MSSEAFDeviceListener \(accessoryDidDisconnectNotification\|connectToAccessories].*accessory candidate\).*$'
syn match transitionManagerTimeout '^.*handleElapsedTimeoutTimer.*$'

let b:current_syntax = "MySpinLogAnalyser"

" Specific stuff
hi def link screenManagerRequest Green
hi def link screenManagerAnswer  NeonGreen
hi def link screenManagerPending Purple
hi def link componentStart       Green

hi def link appUrl               Title
hi def link sdkVersion           Number
hi def link protocolVersion      Number
hi def link streamDevice         Error
hi def link streamDeviceWarning  Error
hi def link streamDeviceError    Fatal
hi def link accessoryConnection  Error
hi def link transitionManagerTimeout  Error
hi def link deviceReck           Blue
" General stuff
hi def link comment          Comment
hi def link basicHighlights  Keyword
hi def link mySpinHighlights Keyword
hi def link fatalError       Fatal
hi def link warningError     Warning
hi def link errorError       Error
