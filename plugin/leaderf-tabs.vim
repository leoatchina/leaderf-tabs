" ============================================================================
" File:        leaderf-tabs.vim
" Description:
" Author:      leo <leoatchina@outlook.com>
" Website:     https://github.com/leoatchina
" Note:
" License:     Apache License, Version 2.0
" ============================================================================

if !exists("g:Lf_Extensions")
    let g:Lf_Extensions = {}
endif

let g:Lf_Extensions.tabs = {
        \ "source": "leaderf#tabs#source",
        \ "highlights_def": {
        \   "Lf_hl_TabsText": '^\d\t[\S\s]\+',
        \ },
        \ "highlights_cmd": [
        \   "hi link Lf_hl_TabsText Text",
        \ ],
        \ "accept": "leaderf#tabs#select",
\ }

command! -bar -nargs=* LeaderfTabs  Leaderf tabs
