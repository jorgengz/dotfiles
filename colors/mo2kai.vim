" Vim color file
" Converted from Textmate theme Monokai using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "mo2kai"

hi Boolean                      ctermfg=141  ctermbg=NONE cterm=NONE      guifg=#ae81ff   guibg=NONE    gui=NONE
hi Character                    ctermfg=141  ctermbg=NONE cterm=NONE      guifg=#ae81ff   guibg=NONE    gui=NONE
hi Conditional                  ctermfg=197  ctermbg=NONE cterm=bold      guifg=#f92672   guibg=NONE    gui=bold
hi Constant                     ctermfg=141  ctermbg=NONE cterm=bold      guifg=#ae81ff   guibg=NONE    gui=bold
hi Float                        ctermfg=141  ctermbg=NONE cterm=NONE      guifg=#ae81ff   guibg=NONE    gui=NONE
hi Number                       ctermfg=141  ctermbg=NONE cterm=NONE      guifg=#ae81ff   guibg=NONE    gui=NONE
hi String                       ctermfg=186  ctermbg=NONE cterm=NONE      guifg=#e6db74   guibg=NONE    gui=NONE

hi Cursor                       ctermfg=235  ctermbg=231  cterm=NONE      guifg=#272822   guibg=#f8f8f0 gui=NONE
hi Debug                        ctermfg=225  ctermbg=241  cterm=bold      guifg=#BCA3A3   guibg=#64645e gui=bold
hi Define                       ctermfg=197  ctermbg=NONE cterm=NONE      guifg=#f92672   guibg=NONE    gui=NONE
hi Delimiter                    ctermfg=241  ctermbg=NONE cterm=NONE      guifg=#8F8F8F   guibg=NONE    gui=NONE
hi DiffAdd                      ctermfg=231  ctermbg=64   cterm=bold      guifg=#f8f8f2   guibg=#46830c gui=bold
hi DiffChange                   ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=#f8f8f2   guibg=#243955 gui=NONE
hi DiffDelete                   ctermfg=88   ctermbg=NONE cterm=NONE      guifg=#8b0807   guibg=NONE    gui=NONE
hi DiffText                     ctermfg=231  ctermbg=24   cterm=bold      guifg=#f8f8f2   guibg=#204a87 gui=bold

hi Directory                    ctermfg=141  ctermbg=NONE cterm=NONE      guifg=#ae81ff   guibg=NONE    gui=NONE
hi Error                        ctermfg=219  ctermbg=89   cterm=NONE      guifg=#960050   guibg=#1E0010 gui=NONE
hi ErrorMsg                     ctermfg=231  ctermbg=197  cterm=NONE      guifg=#f8f8f0   guibg=#f92672 gui=NONE
hi Exception                    ctermfg=118  ctermbg=NONE cterm=bold      guifg=#a6e22e   guibg=NONE    gui=NONE
hi FoldColumn                   ctermfg=67   ctermbg=16   cterm=NONE      guifg=#465457   guibg=#000000 gui=NONE
hi Folded                       ctermfg=242  ctermbg=235  cterm=NONE      guifg=#75715e   guibg=#272822 gui=NONE
hi Function                     ctermfg=148  ctermbg=NONE cterm=NONE      guifg=#a6e22e   guibg=NONE    gui=NONE
hi Identifier                   ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#66d9ef   guibg=NONE    gui=italic
hi Ignore                       ctermfg=244  ctermbg=232  cterm=NONE      guifg=#808080   guibg=NONE
hi IncSearch                    ctermfg=235  ctermbg=186  cterm=NONE      guifg=#272822   guibg=#e6db74 gui=NONE

hi Keyword                      ctermfg=197  ctermbg=NONE cterm=bold      guifg=#f92672   guibg=NONE    gui=bold
hi Label                        ctermfg=186  ctermbg=NONE cterm=NONE      guifg=#e6db74   guibg=NONE    gui=NONE
hi Macro                        ctermfg=193  ctermbg=NONE cterm=NONE      guifg=#c4be89   guibg=NONE    gui=italic

" hi MatchParen                   ctermfg=197  ctermbg=NONE cterm=underline guifg=#f92672   guibg=NONE    gui=underline
hi MatchParen                   ctermfg=208  ctermbg=NONE cterm=bold      guifg=#fd971f   guibg=NONE    gui=NONE
hi ModeMsg                      ctermfg=229  ctermbg=NONE cterm=NONE      guifg=#e6db74   guibg=NONE    gui=NONE
hi MoreMsg                      ctermfg=229  ctermbg=NONE cterm=NONE      guifg=#e6db74   guibg=NONE    gui=NONE
hi Operator                     ctermfg=197  ctermbg=NONE cterm=NONE      guifg=#f92672   guibg=NONE    gui=NONE

" complete menu
hi Pmenu                        ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi PmenuSel                     ctermfg=NONE ctermbg=59   cterm=NONE      guifg=NONE      guibg=#49483e gui=NONE
hi PmenuSbar                    ctermfg=NONE ctermbg=232  cterm=NONE      guifg=NONE      guibg=#080808 gui=NONE
hi PmenuThumb                   ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#66d9ef   guibg=NONE    gui=NONE


hi PreCondit                    ctermfg=118  ctermbg=NONE cterm=bold      guifg=#a6e22e   guibg=NONE    gui=bold
" hi PreProc                      ctermfg=197  ctermbg=NONE cterm=NONE      guifg=#f92672   guibg=NONE    gui=NONE
hi PreProc                      ctermfg=148  ctermbg=NONE cterm=NONE      guifg=#a6e22e   guibg=NONE    gui=NONE
" hi PreProc                      ctermfg=118  ctermbg=NONE cterm=NONE      guifg=#a6e22e   guibg=NONE    gui=NONE
hi Question                     ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#66d9ef   guibg=NONE    gui=NONE
hi Repeat                       ctermfg=161  ctermbg=NONE cterm=bold      guifg=#f92672   guibg=NONE    gui=NONE
" hi Search                       ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Search                       ctermfg=253  ctermbg=135  cterm=NONE      guifg=#272822   guibg=#e6db74 gui=NONE

" Marks Column:
hi SignColumn                   ctermfg=NONE ctermbg=234  cterm=NONE      guifg=NONE      guibg=#3c3d37 gui=NONE
hi SpecialChar                  ctermfg=161  ctermbg=NONE cterm=bold      guifg=#f92672   guibg=NONE    gui=bold
hi SpecialComment               ctermfg=245  ctermbg=NONE cterm=bold      guifg=#465457   guibg=NONE    gui=bold
hi Special                      ctermfg=231  ctermbg=NONE cterm=NONE      guifg=#f8f8f2   guibg=NONE    gui=NONE
" Trailing Whitespace:
hi SpecialKey                   ctermfg=245  ctermbg=234  cterm=NONE      guifg=#66d9ef   guibg=#3c3d37 gui=italic

if has("spell")
    hi SpellBad                 guisp=#FF0000 gui=undercurl
    hi SpellCap                 guisp=#7070F0 gui=undercurl
    hi SpellLocal               guisp=#70F0F0 gui=undercurl
    hi SpellRare                guisp=#FFFFFF gui=undercurl
endif

hi Statement                    ctermfg=197  ctermbg=NONE cterm=NONE      guifg=#f92672   guibg=NONE    gui=NONE
hi StatusLine                   ctermfg=231  ctermbg=241  cterm=bold      guifg=#f8f8f2   guibg=#64645e gui=bold
hi StatusLineNC                 ctermfg=231  ctermbg=241  cterm=NONE      guifg=#f8f8f2   guibg=#64645e gui=NONE
hi StorageClass                 ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#66d9ef   guibg=NONE    gui=italic
hi Structure                    ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#66d9ef   guibg=NONE    gui=NONE
hi Tag                          ctermfg=197  ctermbg=NONE cterm=NONE      guifg=#f92672   guibg=NONE    gui=NONE
hi Title                        ctermfg=231  ctermbg=NONE cterm=bold      guifg=#f8f8f2   guibg=NONE    gui=bold
" hi Todo                         ctermfg=95   ctermbg=NONE cterm=inverse,bold guifg=#75715e guibg=NONE gui=inverse,bold
hi Todo                         ctermfg=255  ctermbg=NONE cterm=bold      guifg=#ffffff   guibg=NONE    gui=bold

hi Typedef                      ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#66d9ef   guibg=NONE    gui=NONE
" hi Type                         ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE guibg=NONE gui=NONE
hi Type                         ctermfg=222  ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi Underlined                   ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE      guibg=NONE    gui=underline

hi VertSplit                    ctermfg=241  ctermbg=241  cterm=NONE      guifg=#64645e   guibg=#64645e gui=NONE
hi VisualNOS                    ctermfg=196  ctermbg=0    cterm=NONE      guifg=NONE      guibg=#403D3D gui=italic
hi Visual                       ctermfg=NONE ctermbg=59   cterm=NONE      guifg=NONE      guibg=#49483e gui=italic
hi WarningMsg                   ctermfg=231  ctermbg=197  cterm=NONE      guifg=#f8f8f0   guibg=#f92672 gui=NONE
hi WildMenu                     ctermfg=81   ctermbg=16   cterm=NONE      guifg=#66d9ef   guibg=#000000 gui=bold

" hi CursorLine                   ctermfg=NONE ctermbg=237  cterm=NONE      guifg=NONE      guibg=#3c3d37 gui=NONE
hi CursorLine                   ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi CursorLineNr                 ctermfg=255  ctermbg=NONE cterm=NONE      guifg=#ffffff   guibg=NONE    gui=NONE
hi CursorColumn                 ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=#3c3d37 gui=NONE
hi ColorColumn                  ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=#3c3d37 gui=NONE
" hi LineNr                       ctermfg=102  ctermbg=NONE cterm=NONE      guifg=#90908a   guibg=#3c3d37 gui=NONE
hi LineNr                       ctermfg=102  ctermbg=NONE cterm=NONE      guifg=#90908a   guibg=NONE    gui=NONE
hi Comment                      ctermfg=242  ctermbg=NONE cterm=NONE      guifg=#75715e   guibg=NONE    gui=NONE
hi NonText                      ctermfg=59   ctermbg=234  cterm=NONE      guifg=#49483e   guibg=#272822 gui=NONE
" hi Normal                       ctermfg=231 ctermbg=235 cterm=NONE        guifg=#f8f8f2 guibg=#272822 gui=NONE
hi Normal                       ctermfg=252  ctermbg=234  cterm=NONE      guifg=#f8f8f2   guibg=#272822 gui=NONE

hi Filepath                     ctermfg=39   ctermbg=0    cterm=bold      guifg=#00af00   guibg=#202020 gui=bold  
hi Filetype                     ctermfg=125  ctermbg=0    cterm=NONE      guifg=#5eafe5   guibg=#202020 gui=NONE          
hi Flags                        ctermfg=161  ctermbg=0    cterm=NONE      guifg=#ffffff   guibg=#202020 gui=italic
hi Percentage                   ctermfg=136  ctermbg=0    cterm=NONE      guifg=#5eafe5   guibg=#202020 gui=NONE          
hi Positions                    ctermfg=34   ctermbg=0    cterm=bold      guifg=#00af00   guibg=#202020 gui=bold  
hi Time                         ctermfg=125  ctermbg=0    cterm=NONE      guifg=#f92672   guibg=#202020 gui=NONE         


" Ruby:
hi rubyBlockParameter           ctermfg=208  ctermbg=NONE cterm=NONE      guifg=#fd971f   guibg=NONE    gui=italic
hi rubyClass                    ctermfg=197  ctermbg=NONE cterm=NONE      guifg=#f92672   guibg=NONE    gui=NONE
" hi rubyClassVariable            ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi rubyClassVariable            ctermfg=221  ctermbg=NONE cterm=NONE      guifg=#ffdf5f   guibg=NONE    gui=italic
hi rubyConstant                 ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#66d9ef   guibg=NONE    gui=italic
hi rubyControl                  ctermfg=197  ctermbg=NONE cterm=NONE      guifg=#f92672   guibg=NONE    gui=NONE
hi rubyEscape                   ctermfg=141  ctermbg=NONE cterm=NONE      guifg=#ae81ff   guibg=NONE    gui=NONE
hi rubyException                ctermfg=197  ctermbg=NONE cterm=NONE      guifg=#f92672   guibg=NONE    gui=NONE
hi rubyFunction                 ctermfg=148  ctermbg=NONE cterm=NONE      guifg=#a6e22e   guibg=NONE    gui=NONE
hi rubyGlobalVariable           ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi rubyInclude                  ctermfg=197  ctermbg=NONE cterm=NONE      guifg=#f92672   guibg=NONE    gui=NONE
" hi rubyInstanceVariable         ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi rubyInstanceVariable         ctermfg=189  ctermbg=NONE cterm=NONE      guifg=#dfdfff   guibg=NONE    gui=NONE
hi rubyInterpolation            ctermfg=15   ctermbg=NONE cterm=NONE      guifg=#ffffff   guibg=NONE    gui=NONE
hi rubyInterpolationDelimiter   ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi rubyLocalVariableOrMethod    ctermfg=189  ctermbg=NONE cterm=NONE      guifg=#dfdfff   guibg=NONE    gui=NONE
hi rubyOperator                 ctermfg=197  ctermbg=NONE cterm=NONE      guifg=#f92672   guibg=NONE    gui=NONE
hi rubyPseudoVariable           ctermfg=221  ctermbg=NONE cterm=NONE      guifg=#ffdf5f      guibg=NONE    gui=NONE
hi rubyPredefinedConstant       ctermfg=167  ctermbg=NONE cterm=NONE      guifg=#dfdfff   guibg=NONE    gui=NONE
hi rubyRegexp                   ctermfg=186  ctermbg=NONE cterm=NONE      guifg=#e6db74   guibg=NONE    gui=NONE
hi rubyRegexpDelimiter          ctermfg=186  ctermbg=NONE cterm=NONE      guifg=#e6db74   guibg=NONE    gui=NONE
hi rubyStringDelimiter          ctermfg=186  ctermbg=NONE cterm=NONE      guifg=#e6db74   guibg=NONE    gui=NONE
hi rubySymbol                   ctermfg=141  ctermbg=NONE cterm=NONE      guifg=#ae81ff   guibg=NONE    gui=NONE
hi rubyTodo                     ctermfg=167  ctermbg=NONE cterm=bold      guifg=#df5f5f   guibg=NONE    gui=bold

" Rails:
hi rubyRailsARAssociationMethod ctermfg=221  ctermbg=NONE cterm=NONE      guifg=#ffdf5f   guibg=NONE    gui=NONE
hi rubyRailsARMethod            ctermfg=221  ctermbg=NONE cterm=NONE      guifg=#ffdf5f   guibg=NONE    gui=NONE
hi rubyRailsARCallBackMethod    ctermfg=221  ctermbg=NONE cterm=NONE      guifg=#ffdf5f   guibg=NONE    gui=NONE
hi rubyRailsMethod              ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#66d9ef   guibg=NONE    gui=NONE
hi rubyRailsRakeMethod          ctermfg=221  ctermbg=NONE cterm=NONE      guifg=#ffdf5f   guibg=NONE    gui=NONE
hi rubyRailsRenderMethod        ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#66d9ef   guibg=NONE    gui=NONE
hi rubyRailsUserClass           ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#66d9ef   guibg=NONE    gui=italic
hi erubyComment                 ctermfg=95   ctermbg=NONE cterm=NONE      guifg=#75715e   guibg=NONE    gui=NONE
hi erubyDelimiter               ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi erubyRailsMethod             ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#66d9ef   guibg=NONE    gui=NONE

" Web Markup:
hi htmlTag                      ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi htmlEndTag                   ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi htmlTagName                  ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi htmlArg                      ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi htmlSpecialChar              ctermfg=141  ctermbg=NONE cterm=NONE      guifg=#ae81ff   guibg=NONE    gui=NONE
hi javaScriptBraces             ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi javaScriptFunction           ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#66d9ef   guibg=NONE    gui=italic
hi javaScriptRailsFunction      ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#66d9ef   guibg=NONE    gui=NONE
hi yamlAlias                    ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi yamlAnchor                   ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi yamlDocumentHeader           ctermfg=186  ctermbg=NONE cterm=NONE      guifg=#e6db74   guibg=NONE    gui=NONE
hi yamlKey                      ctermfg=197  ctermbg=NONE cterm=NONE      guifg=#f92672   guibg=NONE    gui=NONE
hi cssBraces                    ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE      guibg=NONE    gui=NONE
hi cssClassName                 ctermfg=148  ctermbg=NONE cterm=NONE      guifg=#a6e22e   guibg=NONE    gui=NONE
hi cssColor                     ctermfg=141  ctermbg=NONE cterm=NONE      guifg=#ae81ff   guibg=NONE    gui=NONE
hi cssCommonAttr                ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#66d9ef   guibg=NONE    gui=NONE
hi cssFunctionName              ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#66d9ef   guibg=NONE    gui=NONE
hi cssPseudoClassId             ctermfg=148  ctermbg=NONE cterm=NONE      guifg=#a6e22e   guibg=NONE    gui=NONE
hi cssURL                       ctermfg=208  ctermbg=NONE cterm=NONE      guifg=#fd971f   guibg=NONE    gui=italic
hi cssValueLength               ctermfg=141  ctermbg=NONE cterm=NONE      guifg=#ae81ff   guibg=NONE    gui=NONE
