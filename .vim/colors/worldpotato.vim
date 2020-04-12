" Vim color file
" Maintainer:	Felix Strobel <mail@felixstrobel.de>
" Last Change:	10.04.2020
" inspired by delek from David Schweikert <dws@ee.ethz.ch>

" First remove all existing highlighting.
hi clear

let colors_name = "worldpotato"

hi Normal guifg=White guibg=Black
hi clear SpellBad
hi clear TabLine
hi clear TabLineSel
hi clear TabLineFill


" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg                 cterm=standout  ctermfg=015       ctermbg=001
hi IncSearch                cterm=reverse
hi ModeMsg                  cterm=bold
hi VertSplit                cterm=bold      ctermfg=000       ctermbg=000
hi Visual                   cterm=reverse   ctermbg=000
hi VisualNOS                cterm=bold
hi DiffText                 cterm=bold      ctermfg=001     ctermbg=000
hi Directory                cterm=bold      ctermfg=004
hi LineNr                   cterm=none      ctermfg=002   ctermbg=000
hi CursorLineNr             cterm=bold      ctermfg=010       ctermbg=000
hi MoreMsg                  cterm=bold      ctermfg=002
hi Question                 cterm=standout  ctermfg=002
hi Search                   cterm=none      ctermfg=8           ctermbg=011
hi SpecialKey               cterm=bold      ctermfg=004
hi Title                    cterm=bold      ctermfg=005
hi WarningMsg               cterm=standout  ctermfg=001
hi WildMenu                 cterm=standout  ctermbg=011      ctermfg=000
hi Folded                   cterm=standout  ctermbg=000       ctermfg=004
hi FoldColumn               cterm=standout  ctermbg=Grey        ctermfg=004
hi DiffAdd                  cterm=bold      ctermfg=010       ctermbg=000
hi DiffChange               cterm=bold      ctermfg=005     ctermbg=000
hi DiffDelete               cterm=bold      ctermfg=130         ctermbg=000
hi SpellBad                 cterm=bold      ctermfg=015       ctermbg=001
hi NonText                  cterm=bold      ctermfg=3

" gitgutter
hi SignColumn               cterm=bold      ctermbg=000       ctermfg=006
hi GitGutterAdd             cterm=bold      ctermbg=000       ctermfg=010
hi GitGutterChange          cterm=bold      ctermbg=000       ctermfg=003
hi GitGutterDelete          cterm=bold      ctermbg=000       ctermfg=009
hi GitGutterChangeDelete    cterm=bold      ctermbg=000       ctermfg=009

" airline
hi airline_tab              cterm=bold      ctermfg=2           ctermbg=8
hi airline_tabtype          cterm=bold      ctermfg=010       ctermbg=010
hi airline_tablabel         cterm=bold      ctermfg=011      ctermbg=010
hi airline_tabsel           cterm=bold      ctermfg=2           ctermbg=8
hi airline_tabmod           cterm=bold      ctermfg=009         ctermbg=8
hi airline_tabfill          cterm=bold      ctermfg=015       ctermbg=235
hi airline_tabhid           cterm=bold      ctermfg=015       ctermbg=000
hi airline_tabsel_right     cterm=bold      ctermfg=011      ctermbg=011
hi airline_tablabel_right   cterm=bold      ctermfg=015       ctermbg=235
hi airline_tabmod_right     cterm=bold      ctermfg=011      ctermbg=011
hi StatusLine               cterm=bold      ctermbg=235         ctermfg=015
hi StatusLineNC	            cterm=bold      ctermbg=235         ctermfg=235

" syntax highlighting
hi PreProc                  cterm=NONE      ctermfg=130
hi Identifier               cterm=NONE      ctermfg=006
hi Comment                  cterm=NONE      ctermfg=005
hi Constant                 cterm=NONE      ctermfg=010
hi Special                  cterm=NONE      ctermfg=003
hi Statement                cterm=bold      ctermfg=012
hi Type	                    cterm=none      ctermfg=004

" Line and column mark
hi CursorLine               cterm=none      ctermbg=8
hi CursorColumn             cterm=none      ctermbg=8

if exists("syntax_on")
  let syntax_cmd = "enable"
  runtime syntax/syncolor.vim
  unlet syntax_cmd
endif

" vim: sw=2
