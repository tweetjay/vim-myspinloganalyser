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

set colorcolumn=""

" General color assignment {{{
hi! Normal guifg=#E3E3E7 guibg=#303030 guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
" }}}

hi! Blue guifg=#00C0FF guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi! NeonGreen guifg=#00FF00 guibg=NONE guisp=NONE gui=NONE ctermfg=76 ctermbg=NONE cterm=NONE
hi! Green guifg=#2F8A71 guibg=NONE guisp=NONE gui=NONE ctermfg=114 ctermbg=NONE cterm=NONE
hi! Purple guifg=#c678dd guibg=NONE guisp=NONE gui=NONE ctermfg=177 ctermbg=NONE cterm=NONE

syn match comment '^//.*$'
hi! def link comment Comment

syn match basicHighlights '\([Ss]tart\|[Ss]top\|[Ee]rror\|fail\|false\|true\|\(timeout\|timer\).*[\d\.].*\|terminate\|shutdown\|nil\|null\|disconnect\|dealloc\)\w*'
hi! def link basicHighlights  Keyword

hi! Warning guifg=#FFCF00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi! Error guifg=#EEEEEE guibg=#B00000 guisp=NONE gui=bold ctermfg=30 ctermbg=NONE cterm=bold
hi! Fatal guifg=#FFFFFF guibg=#FF0000 guisp=NONE gui=bold ctermfg=NONE ctermbg=09 cterm=bold

syn match warningError '^.*WARNING/.*$'
syn match errorError   '^.*ERROR/.*$'
syn match fatalError   '^.*FATAL\].*$'

hi! def link warningError Warning
hi! def link errorError   Error
hi! def link fatalError   Fatal

" {{{ Notifications
hi! Notification guifg=cyan guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=09 cterm=bold

syn match notification '^.*Notification\].*$'

hi! def link notification Notification
" }}}

" {{{ Lifecycle
hi! Lifecycle guifg=#60BF00 guibg=NONE guisp=NONE gui=NONE ctermfg=114 ctermbg=NONE cterm=NONE
hi! LifecycleStart guifg=#60BF00 guibg=NONE guisp=NONE gui=NONE ctermfg=114 ctermbg=NONE cterm=NONE

syn match lifecycle '\[MySpinServerSDK \(did\|will\|application\).*$'
syn match lifecycleStart '-\[\b\w*\b start[a-zA-Z]*\b\]'

hi! def link lifecycle       Lifecycle
hi! def link lifecycleStart  LifecycleStart
" }}}

" {{{ Match versions like: 2.1.0
syn match sdkVersion   'SDK [vV]ersion: \d\.\d\.\d\(\.\d\)*'
syn match protocolVersion 'Protocol: V\d\.\d\.\d'
hi! def link sdkVersion       Number
hi! def link protocolVersion  Number
" }}}

" {{{ Match app urls like: com.test.test
syn match appUrl '[a-z]\+\.[a-z]\+\.[a-z]\+\(\.[a-zA-Z0-9-]*\)*'
hi! def link appUrl Title
" }}}

" {{{ Device Listener
hi! Device guifg=cyan guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi! DeviceListener guifg=#00A0F0 guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi! DeviceChecker guifg=cyan guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi! DeviceCheckerFail guifg=red guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE

syn match deviceListener '^.*\[MSSEAFDeviceListener \(accessoryDidDisconnectNotification\|connectToAccessories].*accessory candidate\).*$'
syn match deviceListenerReceive '^.*MSSUDPDeviceListener \(receiveIPAddressBroadcast\|connectTo:.*\(ignoring\|connecting\)\|checkUnavailable.*lost available\).*$'
syn match deviceChecker '\[MSAIVIAvailabilityChecker \(start\|handleDiscoveredNetService:\)\]'
syn match deviceCheckerFail '\[MSAIVIAvailabilityChecker handleLostNetService.*unavailable$'

hi! def link deviceListener        DeviceListener
hi! def link deviceListenerReceive DeviceListener
hi! def link deviceChecker         DeviceChecker
hi! def link deviceCheckerFail     DeviceCheckerFail
" }}}

" {{{ Streams
hi! DeviceStream guifg=cyan guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi! DeviceStreamFail guifg=red guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE

syn match streamDevice        '^.*\[MSSGenericStreamDevice \(init\|dealloc\).*$'
syn match streamDeviceWarning '^.*\[MSSGenericStreamDevice.*NSStreamEventEndEncountered.*$'
syn match streamDeviceError   '^.*\[MSSGenericStreamDevice.*NSStreamEventErrorOccurred.*$'

hi! def link streamDevice         DeviceStream
hi! def link streamDeviceWarning  DeviceStreamFail
hi! def link streamDeviceError    DeviceStreamFail
" }}}

" {{{ ScreenManager
hi! Screen guifg=#60AF00 guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi! ScreenRequest guifg=#60D000 guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi! ScreenAnswer guifg=#60DF00 guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE

syn match screenManagerRequest '\[MSSScreenManager \(requestFrameDataForRect.*Received framebuffer request\|.*received framebuffer request\)'
syn match screenManagerAnswer  '\[MSSScreenManager \(answerPendingRequests\].*answer pending request\|requestFrameDataForRect.*answer framebuffer.*\)'
syn match screenManagerIncremental '\[MSSScreenManager requestFrameDataForRect.*saving incremental request as pending'

hi! def link screenManagerRequest ScreenRequest
hi! def link screenManagerAnswer  ScreenAnswer
hi! def link screenManagerIncremental Screen
" }}}

" ScreenCapturer
hi! ScreenCapturer guifg=#60AF00 guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE

syn match screenCaptureMethod '\(MySpinScreenCapturingMethod.*\)'

hi! def link screenCaptureMethod ScreenCapturer
" }}}

syn match transitionManagerTimeout '^.*handleElapsedTimeoutTimer.*$'
hi! def link transitionManagerTimeout  Error

let b:current_syntax = "MySpinLogAnalyser"
