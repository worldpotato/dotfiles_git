" Vim color file
" Maintainer:	Felix Strobel <mail@felixstrobel.de>
" Last Change:	18.01.2020
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
hi ErrorMsg                 cterm=standout  ctermfg=White       ctermbg=DarkRed
hi IncSearch                cterm=reverse
hi ModeMsg                  cterm=bold
hi VertSplit                cterm=bold      ctermfg=Black       ctermbg=Black
hi Visual                   cterm=reverse   ctermbg=Black
hi VisualNOS                cterm=bold
hi DiffText                 cterm=bold      ctermfg=DarkRed     ctermbg=Black
hi Directory                cterm=bold      ctermfg=DarkBlue
hi LineNr                   cterm=none      ctermfg=DarkGreen   ctermbg=Black
hi CursorLineNr             cterm=bold      ctermfg=Green       ctermbg=Black
hi MoreMsg                  cterm=bold      ctermfg=DarkGreen
hi Question                 cterm=standout  ctermfg=DarkGreen
hi Search                   cterm=none      ctermfg=8           ctermbg=Yellow
hi SpecialKey               cterm=bold      ctermfg=DarkBlue
hi Title                    cterm=bold      ctermfg=DarkMagenta
hi WarningMsg               cterm=standout  ctermfg=DarkRed
hi WildMenu                 cterm=standout  ctermbg=Yellow      ctermfg=Black
hi Folded                   cterm=standout  ctermbg=Black       ctermfg=DarkBlue
hi FoldColumn               cterm=standout  ctermbg=Grey        ctermfg=DarkBlue
hi DiffAdd                  cterm=bold      ctermfg=Green       ctermbg=Black
hi DiffChange               cterm=bold      ctermfg=Magenta     ctermbg=Black
hi DiffDelete               cterm=bold      ctermfg=130         ctermbg=Black
hi SpellBad                 cterm=bold      ctermfg=White       ctermbg=DarkRed
hi NonText                  cterm=bold      ctermfg=3

" gitgutter
hi SignColumn               cterm=bold      ctermbg=Black       ctermfg=Cyan
hi GitGutterAdd             cterm=bold      ctermbg=Black       ctermfg=Green
hi GitGutterChange          cterm=bold      ctermbg=Black       ctermfg=Brown
hi GitGutterDelete          cterm=bold      ctermbg=Black       ctermfg=Red
hi GitGutterChangeDelete    cterm=bold      ctermbg=Black       ctermfg=Red

" airline
hi airline_tab              cterm=bold      ctermfg=2           ctermbg=8
hi airline_tabtype          cterm=bold      ctermfg=Green       ctermbg=Green
hi airline_tablabel         cterm=bold      ctermfg=Yellow      ctermbg=Green
hi airline_tabsel           cterm=bold      ctermfg=2           ctermbg=8
hi airline_tabmod           cterm=bold      ctermfg=Red         ctermbg=8
hi airline_tabfill          cterm=bold      ctermfg=White       ctermbg=235
hi airline_tabhid           cterm=bold      ctermfg=White       ctermbg=Black
hi airline_tabsel_right     cterm=bold      ctermfg=Yellow      ctermbg=Yellow
hi airline_tablabel_right   cterm=bold      ctermfg=White       ctermbg=235
hi airline_tabmod_right     cterm=bold      ctermfg=Yellow      ctermbg=Yellow
hi StatusLine	            cterm=bold      ctermbg=235         ctermfg=White
hi StatusLineNC	            cterm=bold      ctermbg=235         ctermfg=235

" syntax highlighting
hi PreProc                  cterm=NONE      ctermfg=130
hi Identifier               cterm=NONE      ctermfg=cyan
hi Comment                  cterm=NONE      ctermfg=darkmagenta
hi Constant                 cterm=NONE      ctermfg=green
hi Special                  cterm=NONE      ctermfg=brown
hi Statement                cterm=bold      ctermfg=lightblue
hi Type	                    cterm=none      ctermfg=blue

" Line and column mark
hi CursorLine               cterm=none      ctermbg=8
hi CursorColumn             cterm=none      ctermbg=8

if exists("syntax_on")
  let syntax_cmd = "enable"
  runtime syntax/syncolor.vim
  unlet syntax_cmd
endif

" vim: sw=2
