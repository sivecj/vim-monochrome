set background=dark

hi clear
if exists('syntax_on')
   syntax reset
endif

let g:colors_name = 'monochrome'

hi Normal ctermfg=253 ctermbg=233 cterm=NONE term=NONE
hi Cursor ctermfg=15 ctermbg=15 cterm=NONE term=NONE
hi iCursor ctermfg=15 ctermbg=15 cterm=NONE term=NONE
hi CursorLine ctermfg=NONE ctermbg=235 cterm=NONE term=NONE
hi CursorLineNr ctermfg=15 ctermbg=NONE cterm=bold term=bold
hi diffAdded ctermfg=35 ctermbg=NONE cterm=NONE term=NONE
hi diffRemoved ctermfg=1 ctermbg=NONE cterm=NONE term=NONE
hi DiffAdd ctermfg=35 ctermbg=232 cterm=NONE term=NONE
hi DiffChange ctermfg=20 ctermbg=NONE cterm=NONE term=NONE
hi DiffDelete ctermfg=1 ctermbg=NONE cterm=NONE term=NONE
hi DiffText ctermfg=226 ctermbg=NONE cterm=NONE term=NONE
hi FoldColumn ctermfg=248 ctermbg=NONE cterm=NONE term=NONE
hi Folded ctermfg=243 ctermbg=NONE cterm=NONE term=NONE
hi TabLine ctermfg=243 ctermbg=233 cterm=NONE term=NONE
hi TabLineFill ctermfg=233 ctermbg=233 cterm=NONE term=NONE
hi TabLineSel ctermfg=35 ctermbg=233 cterm=NONE term=NONE
hi StatusLine ctermfg=250 ctermbg=233 cterm=NONE term=bold
hi StatusLineNC ctermfg=245 ctermbg=233 cterm=NONE term=NONE
hi SignColumn ctermfg=252 ctermbg=NONE cterm=NONE term=NONE
hi vertsplit ctermfg=233 ctermbg=234
hi ColorColumn ctermfg=252 ctermbg=233 cterm=NONE term=NONE
hi LineNr ctermfg=238 ctermbg=NONE cterm=NONE term=NONE
hi Statement ctermfg=15 ctermbg=NONE cterm=bold term=bold
hi PreProc ctermfg=15 ctermbg=NONE cterm=bold term=bold
hi String ctermfg=35 ctermbg=NONE cterm=NONE term=NONE
hi Comment ctermfg=243 ctermbg=NONE cterm=NONE term=NONE
hi Constant ctermfg=35 ctermbg=NONE cterm=NONE term=NONE
hi Type ctermfg=15 ctermbg=NONE cterm=bold term=bold
hi Function ctermfg=15 ctermbg=NONE cterm=NONE term=NONE
hi Identifier ctermfg=252 ctermbg=NONE cterm=NONE term=NONE
hi Special ctermfg=243 ctermbg=NONE cterm=NONE term=NONE
hi MatchParen ctermfg=251 ctermbg=239 cterm=underline term=underline
hi Conceal ctermfg=15 ctermbg=NONE cterm=bold term=bold
hi rubyConstant ctermfg=252 ctermbg=NONE cterm=NONE term=NONE
hi rubySharpBang ctermfg=243 ctermbg=NONE cterm=NONE term=NONE
hi javaScriptFunction ctermfg=15 ctermbg=NONE cterm=bold term=bold
hi Search ctermfg=15 ctermbg=35 cterm=NONE term=NONE
hi Visual ctermfg=16 ctermbg=255 cterm=NONE term=NONE
hi NonText ctermfg=248 ctermbg=NONE cterm=NONE term=NONE
hi Directory ctermfg=15 ctermbg=NONE cterm=bold term=bold
hi Title ctermfg=15 ctermbg=NONE cterm=bold term=bold
hi markdownHeadingDelimiter ctermfg=15 ctermbg=NONE cterm=bold term=bold
hi markdownHeadingRule ctermfg=15 ctermbg=NONE cterm=bold term=bold
hi markdownLinkText ctermfg=255 ctermbg=NONE cterm=underline term=underline
hi Todo ctermfg=16 ctermbg=226 cterm=bold term=bold
hi Pmenu ctermfg=15 ctermbg=243 cterm=NONE term=NONE
hi PmenuSel ctermfg=15 ctermbg=235 cterm=NONE term=NONE
hi helpSpecial ctermfg=252 ctermbg=NONE cterm=NONE term=NONE
hi helpHyperTextJump ctermfg=35 ctermbg=NONE cterm=underline term=underline
hi helpNote ctermfg=252 ctermbg=NONE cterm=NONE term=NONE
hi vimOption ctermfg=252 ctermbg=NONE cterm=NONE term=NONE
hi vimGroup ctermfg=252 ctermbg=NONE cterm=NONE term=NONE
hi vimHiClear ctermfg=252 ctermbg=NONE cterm=NONE term=NONE
hi vimHiGroup ctermfg=252 ctermbg=NONE cterm=NONE term=NONE
hi vimHiAttrib ctermfg=252 ctermbg=NONE cterm=NONE term=NONE
hi vimHiCTerm ctermfg=252 ctermbg=NONE cterm=NONE term=NONE
hi vimHiCTermFgBg ctermfg=252 ctermbg=NONE cterm=NONE term=NONE
hi vimSynType ctermfg=252 ctermbg=NONE cterm=NONE term=NONE
hi vimCommentTitle ctermfg=243 ctermbg=NONE cterm=NONE term=NONE
hi Error ctermbg=196
hi SpellBad ctermfg=NONE ctermbg=1 cterm=undercurl

hi haskellBlockComment ctermfg=246 ctermbg=NONE cterm=NONE term=NONE

hi SignColumn ctermbg=233
hi GitGutterAdd ctermbg=233 ctermfg=245
hi GitGutterChange ctermbg=233 ctermfg=245
hi GitGutterDelete ctermbg=233 ctermfg=245
hi GitGutterChangeDelete ctermbg=233 ctermfg=245
hi EndOfBuffer ctermfg=237 ctermbg=233

hi haskellDeclKeyword ctermfg=NONE
hi haskellDecl ctermfg=NONE
hi haskellWhere ctermfg=NONE

hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special
