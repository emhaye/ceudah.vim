" Ceudah - A 24-bit Material color scheme for Vim
" Author: GatheuX Gogasi
" License: MIT

highlight clear

if exists('syntax_on')
    syntax reset
endif

set background=dark
let g:colors_name = 'ceudah'

let g:enable_ceudah_italics = get(g:, 'ceudah_italics', 1)
let g:ceudah_black = get(g:, 'ceudah_black', 1)

" Color Palette
let s:black     = '#181A1F'
let s:gray1     = '#282828'
let s:gray2     = '#3C3836'
let s:gray3     = '#474646'
let s:gray4     = '#6a6c6c'
let s:gray5     = '#b7bdc0'
let s:gray6     = '#504945'
let s:red       = '#f44336'
let s:green     = '#4caf50'
let s:yellow    = '#ff9800'
let s:blue      = '#0198D8'
let s:purple    = '#AA46BB'
let s:cyan      = '#00bcd4'
let s:orange    = '#F26213'
let s:indigo    = '#BF4D99'

function! s:HL(group, fg, bg, attr)
    let l:attr = a:attr
    if !g:enable_ceudah_italics && l:attr ==# 'italic'
        let l:attr = 'none'
    endif

    if !empty(a:fg)
        exec 'hi ' . a:group . ' guifg=' . a:fg
    endif
    if !empty(a:bg)
        exec 'hi ' . a:group . ' guibg=' . a:bg
    endif
    if !empty(a:attr)
        exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
    endif
endfun

" Vim Editor
call s:HL('ALEErrorSign',                   s:red,      s:gray6,    '')
call s:HL('ALEStyleErrorSign',              s:red,      s:gray6,    '')
call s:HL('ALEWarningSign',                 s:yellow,   s:gray6,    '')
call s:HL('ALEStyleWarningSign',            s:yellow,   s:gray6,    '')
call s:HL('ALEInfoSign',                    s:cyan,     s:gray6,    '')
call s:HL('ColorColumn',                    '',         s:gray2,    '')
call s:HL('Cursor',                         s:gray2,    s:gray4,    '')
call s:HL('CursorColumn',                   '',         s:gray2,    'none')
call s:HL('CursorLine',                     '',         s:gray2,    'none')
call s:HL('CursorLineNr',                   s:cyan,     s:gray2,    'none')
call s:HL('Directory',                      s:blue,     '',         '')
call s:HL('DiffAdd',                        s:green,    s:gray2,    'none')
call s:HL('DiffChange',                     s:yellow,   s:gray2,    'none')
call s:HL('DiffDelete',                     s:red,      s:gray2,    'none')
call s:HL('DiffText',                       s:blue,     s:gray2,    'none')
call s:HL('ErrorMsg',                       s:red,      s:gray1,    'bold')
call s:HL('FoldColumn',                     s:gray4,    s:gray1,    '')
call s:HL('Folded',                         s:gray3,    s:gray1,    '')
call s:HL('IncSearch',                      s:yellow,   '',         '')
call s:HL('LineNr',                         s:gray4,    s:gray2,    '')
call s:HL('MatchParen',                     s:cyan,     s:cyan,     'bold')
call s:HL('ModeMsg',                        s:green,    '',         '')
call s:HL('MoreMsg',                        s:green,    '',         '')
call s:HL('NonText',                        s:gray4,    '',         'none')
call s:HL('Normal',                         s:gray5,    s:gray1,    'none')
call s:HL('Pmenu',                          s:gray5,    s:gray3,    '')
call s:HL('PmenuSbar',                      '',         s:gray2,    '')
call s:HL('PmenuSel',                       s:gray2,    s:cyan,     '')
call s:HL('PmenuThumb',                     '',         s:gray4,    '')
call s:HL('Question',                       s:blue,     '',         'none')
call s:HL('Search',                         s:gray1,    s:yellow,   '')
call s:HL('SignColumn',                     '',         s:gray6,    '')
call s:HL('SpecialKey',                     s:gray4,    '',         '')
call s:HL('SpellCap',                       s:blue,     s:gray2,    'undercurl')
call s:HL('SpellBad',                       s:red,      s:gray2,    'undercurl')
call s:HL('StatusLine',                     s:gray5,    s:gray3,    'none')
call s:HL('StatusLineNC',                   s:gray2,    s:gray4,    '')
call s:HL('TabLine',                        s:gray4,    s:gray2,    'none')
call s:HL('TabLineFill',                    s:gray4,    s:gray2,    'none')
call s:HL('TabLineSel',                     s:yellow,   s:gray3,    'none')
call s:HL('Title',                          s:green,    '',         'none')
call s:HL('VertSplit',                      s:black,    '',    'none')
call s:HL('Visual',                         '',    s:gray3,    '')
call s:HL('WarningMsg',                     s:red,      '',         '')
call s:HL('WildMenu',                       s:gray2,    s:cyan,	    '')
hi  MatchParen      guibg=NONE
hi  Cursor          gui=reverse         guibg=NONE      guifg=NONE
"hi  Normal          ctermbg=NONE        guibg=NONE
"hi  NonText         ctermbg=NONE        guibg=NONE

" Standard Syntax
call s:HL('Boolean',                        s:yellow,   '',         'italic')
call s:HL('Character',                      s:green,    '',         'italic')
call s:HL('Class',                          s:purple,   '',         '')
call s:HL('Comment',                        s:gray4,    '',         'italic')
call s:HL('Conditional',                    s:indigo,   '',         '')
call s:HL('Constant',                       s:orange,   '',         '')
call s:HL('Define',                         s:purple,   '',         'none')
call s:HL('Delimeter',                      s:purple,   '',         '')
call s:HL('Error',                          s:red,      s:gray1,    'bold')
call s:HL('Exception',                      s:red,      '',         'italic')
call s:HL('Float',                          s:red,      '',         '')
call s:HL('Function',                       s:blue,     '',         '')
call s:HL('Identifier',                     s:red,      '',         'none')
call s:HL('Ignore',                         s:yellow,   '',         '')
call s:HL('Include',                        s:blue,     '',         '')
call s:HL('Keyword',                        s:cyan,     '',         '')
call s:HL('Label',                          s:indigo,   '',         '')
call s:HL('Macro',                          s:purple,   '',         '')
call s:HL('Number',                         s:red,      '',         '')
call s:HL('Operator',                       s:cyan,     '',         '')
call s:HL('PreProc',                        s:cyan,     '',         '')
call s:HL('PreCondit',                      s:cyan,     '',         '')
call s:HL('Repeat',                         s:indigo,   '',         '')
call s:HL('Special',                        s:indigo,   '',         '')
call s:HL('Statement',                      s:cyan,     '',         'none')
call s:HL('String',                         s:green,    '',         '')
call s:HL('Structure',                      s:cyan,     '',         '')
call s:HL('Symbol',                         s:red,      '',         'italic')
call s:HL('Todo',                           s:gray1,    '',         'bold')
call s:HL('Type',                           s:yellow,   '',         'italic')
call s:HL('Underlined',                     s:blue,     '',         'none')

" CSS
call s:HL('cssAttrComma',                   s:gray5,    '',         '')
call s:HL('cssPseudoClassId',               s:yellow,   '',         '')
call s:HL('cssBraces',                      s:gray5,    '',         '')
call s:HL('cssClassName',                   s:yellow,   '',         '')
call s:HL('cssClassNameDot',                s:yellow,   '',         '')
call s:HL('cssFunctionName',                s:blue,     '',         '')
call s:HL('cssImportant',                   s:cyan,     '',         '')
call s:HL('cssIncludeKeyword',              s:purple,   '',         '')
call s:HL('cssTagName',                     s:red,      '',         '')
call s:HL('cssMediaType',                   s:orange,   '',         '')
call s:HL('cssProp',                        s:gray5,    '',         '')
call s:HL('cssSelectorOp',                  s:cyan,     '',         '')
call s:HL('cssSelectorOp2',                 s:cyan,     '',         '')

" Commit Messages (Git)
call s:HL('gitcommitHeader',                s:purple,   '',         '')
call s:HL('gitcommitUnmerged',              s:green,    '',         '')
call s:HL('gitcommitSelectedFile',          s:green,    '',         '')
call s:HL('gitcommitDiscardedFile',         s:red,      '',         '')
call s:HL('gitcommitUnmergedFile',          s:yellow,   '',         '')
call s:HL('gitcommitSelectedType',          s:green,    '',         '')
call s:HL('gitcommitSummary',               s:blue,     '',         '')
call s:HL('gitcommitDiscardedType',         s:red,      '',         '')
hi link gitcommitNoBranch       gitcommitBranch
hi link gitcommitUntracked      gitcommitComment
hi link gitcommitDiscarded      gitcommitComment
hi link gitcommitSelected       gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow  gitcommitSelectedFile
hi link gitcommitUnmergedArrow  gitcommitUnmergedFile

" HTML
call s:HL('htmlArg',                        s:cyan,     '',         '')
call s:HL('htmlEndTag',                     s:purple,   '',         '')
call s:HL('htmlLink',                       s:red,      '',         '')
call s:HL('htmlTag',                        s:indigo,   '',         '')
call s:HL('htmlTagN',                       s:purple,   '',         '')
call s:HL('htmlTagName',                    s:purple,   '',         '')
call s:HL('htmlTitle',                      s:gray5,    '',         '')
call s:HL('htmlSpecialTagName',             s:indigo,   '',         '')

" Javascript
call s:HL('javaScriptBraces',               s:gray5,    '',         '')
call s:HL('javaScriptNull',                 s:orange,   '',         '')
call s:HL('javaScriptIdentifier',           s:purple,   '',         '')
call s:HL('javaScriptNumber',               s:orange,   '',         '')
call s:HL('javaScriptRequire',              s:cyan,     '',         '')
call s:HL('javaScriptReserved',             s:purple,   '',         '')
" pangloss/vim-javascript
call s:HL('jsArrowFunction',                s:purple,   '',         '')
call s:HL('jsAsyncKeyword',                 s:purple,   '',         '')
call s:HL('jsExtendsKeyword',               s:purple,   '',         '')
call s:HL('jsClassKeyword',                 s:purple,   '',         '')
call s:HL('jsDocParam',                     s:green,    '',         '')
call s:HL('jsDocTags',                      s:cyan,     '',         '')
call s:HL('jsForAwait',                     s:purple,   '',         '')
call s:HL('jsFlowArgumentDef',              s:yellow,   '',         '')
call s:HL('jsFrom',                         s:purple,   '',         '')
call s:HL('jsImport',                       s:purple,   '',         '')
call s:HL('jsExport',                       s:purple,   '',         '')
call s:HL('jsExportDefault',                s:purple,   '',         '')
call s:HL('jsFuncCall',                     s:blue,     '',         '')
call s:HL('jsFunction',                     s:purple,   '',         '')
call s:HL('jsGlobalObjects',                s:yellow,   '',         '')
call s:HL('jsGlobalNodeObjects',            s:yellow,   '',         '')
call s:HL('jsModuleAs',                     s:purple,   '',         '')
call s:HL('jsNull',                         s:orange,   '',         '')
call s:HL('jsStorageClass',                 s:purple,   '',         '')
call s:HL('jsTemplateBraces',               s:red,      '',         '')
call s:HL('jsTemplateExpression',           s:red,      '',         '')
call s:HL('jsThis',                         s:red,      '',         '')
call s:HL('jsUndefined',                    s:orange,   '',         '')

" JSON
call s:HL('jsonBraces',                     s:gray5,    '',         '')

" Less
call s:HL('lessAmpersand',                  s:red,      '',         '')
call s:HL('lessClassChar',                  s:yellow,   '',         '')
call s:HL('lessCssAttribute',               s:gray5,    '',         '')
call s:HL('lessFunction',                   s:blue,     '',         '')
call s:HL('lessVariable',                   s:purple,   '',         '')

" Markdown
call s:HL('markdownBold',                   s:yellow,   '',         'bold')
call s:HL('markdownCode',                   s:cyan,     '',         '')
call s:HL('markdownCodeBlock',              s:cyan,     '',         '')
call s:HL('markdownCodeDelimiter',          s:cyan,     '',         '')
call s:HL('markdownHeadingDelimiter',       s:green,    '',         '')
call s:HL('markdownHeadingRule',            s:gray4,    '',         '')
call s:HL('markdownId',                     s:purple,   '',         '')
call s:HL('markdownItalic',                 s:blue,     '',         'italic')
call s:HL('markdownListMarker',             s:orange,   '',         '')
call s:HL('markdownOrderedListMarker',      s:orange,   '',         '')
call s:HL('markdownRule',                   s:gray4,    '',         '')
call s:HL('markdownUrl',                    s:purple,   '',         '')
call s:HL('markdownUrlTitleDelimiter',      s:green,    '',         '')

" Ruby
call s:HL('erubyDelimeter',                 s:indigo,   '',         '')
call s:HL('rspecGroupMethods',              s:blue,     '',         '')
call s:HL('rubyAccess',                     s:cyan,     '',         'italic')
call s:HL('rubyAttribute',                  s:cyan,     '',         'italic')
call s:HL('rubyBlockParameter',             s:orange,   '',         'italic')
call s:HL('rubyCallback',                   s:cyan,     '',         '')
call s:HL('rubyClass',                      s:purple,   '',         '')
call s:HL('rubyClassName',                  s:red,      '',         'italic')
call s:HL('rubyClassVariable',              s:red,      '',         '')
call s:HL('rubyConstant',                   s:yellow,   '',         '')
call s:HL('rubyControl',                    s:blue,     '',         '')
call s:HL('rubyCurlyBlockDelimiter',        s:gray5,    'Bold',     'Bold')
call s:HL('rubyData',                       s:gray1,    '',         '')
call s:HL('rubyDataDirective',              s:gray1,    '',         '')
call s:HL('rubyEval',                       s:indigo,   '',         '')
call s:HL('rubyFunction',                   s:blue,     '',         'italic')
call s:HL('rubyGlobalVariable',             s:red,      '',         '')
call s:HL('rubyInclude',                    s:red,      '',         '')
call s:HL('rubyIdentifier',                 s:cyan,     'Bold',     'Bold')
call s:HL('rubyInstanceVariable',           s:red,      '',         '')
call s:HL('rubyInteger',                    s:red,      '',         '')
call s:HL('rubyInterpolation',              s:cyan,     '',         '')
call s:HL('rubyInterpolationDelimiter',     s:indigo,   '',         '')
call s:HL('rubyKeyword',                    s:indigo,   '',         'italic')
call s:HL('rubyLocalVariableOrMethod',      s:red,      '',         '')
call s:HL('rubyModule',                     s:blue,     '',         '')
call s:HL('rubyModuleName',                 s:indigo,   '',         'italic')
call s:HL('rubyPredefinedConstant',         s:orange,   '',         '')
call s:HL('rubyPseudoVariable',             s:orange,   '',         'italic')
call s:HL('rubyRegexp',                     s:cyan,     '',         'italic')
call s:HL('rubyRegexpDelimiter',            s:indigo,   '',         'italic')
call s:HL('rubyRoute',                      s:cyan,     '',         '')
call s:HL('rubySharpBang',                  s:indigo,   '',         '')
call s:HL('rubyStringDelimiter',            s:green,    '',         '')
call s:HL('rubySymbol',                     s:orange,   '',         'italic')
call s:HL('rubySymbolDelimiter',            s:purple,   '',         'italic')
call s:HL('rubyTodo',                       s:gray4,    '',         'Bold')

" Sass
call s:HL('sassAmpersand',                  s:red,      '',         '')
call s:HL('sassClassChar',                  s:yellow,   '',         '')
call s:HL('sassMixinName',                  s:blue,     '',         '')
call s:HL('sassVariable',                   s:purple,   '',         '')

" Vim-Fugitive
call s:HL('diffAdded',                      s:green,    '',         '')
call s:HL('diffRemoved',                    s:red,      '',         '')

" Vim-Gittgutter
call s:HL('GitGutterAdd',                   s:green,    '',         '')
call s:HL('GitGutterChange',                s:yellow,   '',         '')
call s:HL('GitGutterChangeDelete',          s:orange,   '',         '')
call s:HL('GitGutterDelete',                s:red,      '',         '')

" Vim-Signify
hi link SignifySignAdd GitGutterAdd
hi link SignifySignChange GitGutterChange
hi link SignifySignDelete GitGutterDelete

" XML
call s:HL('xmlAttrib',                      s:yellow,   '',         '')
call s:HL('xmlEndTag',                      s:blue,     '',         '')
call s:HL('xmlTag',                         s:blue,     '',         '')
call s:HL('xmlTagName',                     s:blue,     '',         '')

" Neovim terminal colors
if has('nvim')
    let g:terminal_color_0 = s:gray1
    let g:terminal_color_1 = s:red
    let g:terminal_color_2 = s:green
    let g:terminal_color_3 = s:yellow
    let g:terminal_color_4 = s:blue
    let g:terminal_color_5 = s:purple
    let g:terminal_color_6 = s:cyan
    let g:terminal_color_7 = s:gray5
    let g:terminal_color_8 = s:gray3
    let g:terminal_color_9 = s:red
    let g:terminal_color_10 = s:green
    let g:terminal_color_11 = s:yellow
    let g:terminal_color_12 = s:blue
    let g:terminal_color_13 = s:purple
    let g:terminal_color_14 = s:cyan
    let g:terminal_color_15 = s:gray4
    let g:terminal_color_background = g:terminal_color_0
    let g:terminal_color_foreground = g:terminal_color_7
endif
