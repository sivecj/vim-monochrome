hi clear

if exists('syntax on')
	syntax reset
endif

let g:colors_name='monochrome'

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
	execute "highlight" a:group
	      \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
	      \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
	      \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
	      \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
	      \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
	      \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
	      \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" Definitions {{{1
let s:black           = { "gui" : "#0a0a0a", "cterm": "233" }
let s:blue            = { "gui" : "#0000ff", "cterm": "12"  }
let s:dark_blue       = { "gui" : "#000080", "cterm": "4"   }
let s:dark_cyan       = { "gui" : "#008080", "cterm": "6"   }
let s:dark_green      = { "gui" : "#008000", "cterm": "2"   }
let s:dark_purple     = { "gui" : "#800080", "cterm": "5"   }
let s:dark_red        = { "gui" : "#800000", "cterm": "1"   }
let s:dark_red        = { "gui" : "#df0000", "cterm": "160" }
let s:dark_yellow     = { "gui" : "#808000", "cterm": "3"   }
let s:darker_blue     = { "gui" : "#000087", "cterm": "18"  }
let s:light_black     = { "gui" : "#808080", "cterm": "8"   }
let s:light_black_2   = { "gui" : "#3a3a3a", "cterm": "237" }
let s:light_blue      = { "gui" : "#afdfff", "cterm": "153" }
let s:light_cyan      = { "gui" : "#00ffff", "cterm": "14"  }
let s:light_gray      = { "gui" : "#808080", "cterm": "245" }
let s:light_gray_2    = { "gui" : "#d0d0d0", "cterm": "252" }
let s:light_green     = { "gui" : "#00ff00", "cterm": "35"  }
let s:light_purple    = { "gui" : "#ff00ff", "cterm": "13"  }
let s:light_red       = { "gui" : "#800000", "cterm": "1"   }
let s:lighter_black   = { "gui" : "#585858", "cterm": "240" }
let s:lighter_gray    = { "gui" : "#eeeeee", "cterm": "255" }
let s:medium_gray     = { "gui" : "#767676", "cterm": "243" }
let s:nice_green      = { "gui" : "#00af5f", "cterm": "29"  }
let s:nice_yellow     = { "gui" : "#ffff00", "cterm": "214" }
let s:orange          = { "gui" : "#df5f5f", "cterm": "166" }
let s:pink            = { "gui" : "#ff0000", "cterm": "162" }
let s:subtle_black    = { "gui" : "#1c1c1c", "cterm": "238" }
let s:white           = { "gui" : "#ffffff", "cterm": "231" }
let s:yellow          = { "gui" : "#fffa00", "cterm": "11"  }
" Accent - For strings, etc.
let s:accent          = { "gui" : "#fffa00", "cterm": "72"  }

let g:old_bg=&background

if &background == "dark"
	let s:bg              = s:black
	let s:bg_subtle       = s:light_black
	let s:bg_mild_subtle  = s:light_black_2
	let s:bg_very_subtle  = s:subtle_black
	let s:norm_strong     = s:white
	let s:norm_inverse    = s:black
	let s:norm            = s:lighter_gray
	let s:norm_subtle     = s:light_gray
	let s:purple          = s:dark_purple
	let s:cyan            = s:light_cyan
	let s:green           = s:light_green
	let s:red             = s:light_red
	let s:visual          = s:lighter_black
else
	let s:bg              = s:white
	let s:bg_subtle       = s:light_gray
	let s:bg_mild_subtle  = s:light_gray_2
	let s:bg_very_subtle  = s:lighter_gray
	let s:norm_strong     = s:black
	let s:norm_inverse    = s:white
	let s:norm            = s:black
	let s:norm_subtle     = s:light_gray
	let s:purple          = s:dark_purple
	let s:cyan            = s:dark_cyan
	let s:green           = s:dark_green
	let s:red             = s:dark_red
	let s:visual          = s:light_blue
endif
"}}}1
" Generic colours {{{1
call s:h("ColorColumn",           { "bg": s:bg_very_subtle})
call s:h("Comment",               { "fg": s:norm_subtle, "gui": "italic"})
call s:h("Constant",              { "fg": s:accent})
call s:h("Cursor",                { "bg": s:blue, "fg": s:norm})
call s:h("CursorColumn",          { "bg": s:bg_very_subtle})
call s:h("CursorLine",            { "bg": s:bg_very_subtle})
call s:h("CursorLineNr",          { "cterm": "bold"})
call s:h("DiffAdd",               { "bg": s:bg_mild_subtle})
call s:h("DiffChange",            { "bg": s:bg_very_subtle})
call s:h("DiffDelete",            { "fg": s:bg_subtle, "bg": s:bg_mild_subtle})
call s:h("DiffText",              { "fg": s:red})
call s:h("Directory",             { "fg": s:norm_strong})
call s:h("Error",                 { "fg": s:red, "cterm": "bold"})
call s:h("ErrorMsg",              { "fg": s:pink})
call s:h("FoldColumn",            { "fg": s:bg_subtle})
call s:h("Folded",                { "fg": s:medium_gray})
call s:h("GitGutterAdd",          { "fg": s:nice_green, "cterm": "bold"})
call s:h("GitGutterChange",       { "fg": s:nice_yellow, "cterm": "bold"})
call s:h("GitGutterChangeDelete", { "fg": s:yellow, "cterm": "bold"})
call s:h("GitGutterDelete",       { "fg": s:dark_red, "cterm": "bold"})
call s:h("Identifier",            { "fg": s:norm})
call s:h("Ignore",                { "fg": s:bg})
call s:h("IncSearch",             { "bg": s:purple, "fg": s:white})
call s:h("LineNr",                { "fg": s:norm_subtle})
call s:h("MatchParen",            { "bg": s:lighter_gray, "fg": s:norm})
call s:h("MoreMsg",               { "fg": s:medium_gray, "cterm": "bold", "gui": "bold"})
call s:h("Noise",                 { "fg": s:norm_subtle})
call s:h("NonText",               { "fg": s:medium_gray})
call s:h("Normal",                { "fg": s:norm, "bg": s:bg})
call s:h("EndOfBuffer",           { "fg": s:bg, "bg": s:bg})
call s:h("Pmenu",                 { "fg": s:norm, "bg": s:bg_very_subtle})
call s:h("PmenuSbar",             { "fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuSel",              { "fg": s:norm_inverse, "bg": s:accent})
call s:h("PmenuThumb",            { "fg": s:norm, "bg": s:bg_subtle})
call s:h("Question",              { "fg": s:red})
call s:h("Search",                { "bg": s:purple, "fg": s:white})
call s:h("SignColumn",            { "fg": s:light_green})
call s:h("Special",               { "fg": s:norm_subtle})
call s:h("SpecialKey",            { "fg": s:light_green})
call s:h("SpellBad",              { "cterm": "underline", "fg": s:red})
call s:h("SpellCap",              { "cterm": "underline", "fg": s:light_green})
call s:h("SpellLocal",            { "cterm": "underline", "fg": s:dark_green})
call s:h("SpellRare",             { "cterm": "underline", "fg": s:pink})
call s:h("Statement",             { "fg": s:norm, "cterm": "bold", "gui": "bold"})
call s:h("StatusLine",            { "bg": s:bg_very_subtle})
call s:h("StatusLineNC",          { "bg": s:bg_very_subtle, "fg": s:medium_gray})
call s:h("TabLine",               { "fg": s:norm_subtle, "bg": s:bg})
call s:h("TabLineFill",           { "fg": s:norm, "bg": s:bg})
call s:h("TabLineSel",            { "fg": s:accent, "bg": s:bg})
call s:h("Title",                 { "fg": s:accent})
call s:h("Todo",                  { "fg": s:black, "bg": s:nice_yellow, "gui": "bold", "cterm": "bold"})
call s:h("Type",                  { "fg": s:norm_strong, "cterm": "bold"})
call s:h("Underlined",            { "fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("VertSplit",             { "bg": s:bg_very_subtle, "fg": s:bg_very_subtle})
call s:h("Visual",                { "bg": s:visual})
call s:h("VisualNOS",             { "bg": s:bg_subtle})
call s:h("WarningMsg",            { "fg": s:red})
call s:h("WildMenu",              { "fg": s:norm_inverse, "bg": s:accent})
call s:h("diffAdded",             { "fg": s:nice_green})
call s:h("diffRemoved",           { "fg": s:dark_red})
call s:h("qfLineNr",              { "fg": s:medium_gray})

" Links {{{1
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
hi! link String           Constant

hi! link Function         Identifier

hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Operator         Noise
hi! link Keyword          Statement
hi! link Exception        Statement

hi! link PreProc          Normal
hi! link Include          Statement
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special
hi! link ModeMsg          MoreMsg

" My custom groups {{{1
call s:h("Status0",         {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("Status1",         {"fg": s:norm_strong, "bg": s:bg_mild_subtle})
call s:h("FoundGroup",      {"fg": s:blue})
call s:h("NoteSign",        {"fg": s:blue})

" Haskell {{{1
hi! link haskellBlockComment Comment
hi! link hsVarSym Statement
hi! link ConId Statement
"}}}1

execute (":set background=" . g:old_bg)
