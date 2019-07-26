set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "yam"	

hi MatchParen	ctermbg=240	ctermfg=253
hi Normal		ctermbg=234	ctermfg=253

hi value		ctermfg=215
hi Statement	ctermfg=204
hi key			ctermfg=79
hi type			ctermfg=111  
hi func			ctermfg=79
hi grey			ctermfg=238
hi struct		ctermfg=253
hi template		ctermfg=212

hi link cppStructure	struct
hi link Number			value  
hi link cppNumber		value
hi link cNumbers		value
hi link cNumber			value
hi link cFloat			value
hi link cCharacter		value
hi link cString			value
hi link cIncluded		Normal
hi link cppSTLnamespace Normal

hi link Statement		Statement
hi link Constant		key
hi link cConstant		key
hi link cInclude		Statement
hi link PreProc			key
hi link cPreProc		Statement
hi link cRepeat			Statement
hi link cStatement		Statement
hi link cppSTLconstant	key
hi link cppSTLios		key

hi link Type			type
hi link cType			type


hi link Function			func
hi link helpCommand			func
hi link helpExample			func

hi link Comment				grey
hi link cComment			grey
hi link lineNr				grey



hi lineNr		ctermfg=237
hi StatusLineNC	ctermbg=236	ctermfg=255 cterm=none
hi VertSplit	ctermbg=236 ctermfg=236 
hi TabLineFill				ctermfg=236 
hi TabLine		ctermbg=236	ctermfg=255 
hi TabLineSel	ctermbg=238	ctermfg=255 cterm=none 
hi StatusLine	ctermbg=238	ctermfg=255	cterm=none
highlight EndOfBuffer ctermfg=236		

hi NERDTreeDir		ctermfg=111	
hi NERDTreeExecFile ctermfg=253
hi NERDTreePartFile	ctermfg=245
hi NERDTreeDirSlash	ctermfg=245
hi NERDTreeClosable	ctermfg=245
hi NERDTreeOpenable	ctermfg=245
hi NERDTreePart		ctermfg=245

hi Pmenu		ctermbg=237 ctermfg=253
hi PmenuSel		ctermbg=29  ctermfg=253
hi vimString	ctermfg=215
hi vimVar		ctermfg=45
hi CursorLine	ctermbg=236				cterm=none


" Highlight Class and Function names
syn match    cCustomParen   "(" contains=cParen,cCppParen
syn match    cCustomScope   "::"
syn match    cCustomClass   "\w\+\s*::" contains=cCustomScope
syn match	 sfml			/sf::[A-Za-z]\+\s/ contains=cCustomClass
syn match    cCustomFunc    "\w\+\s*(" contains=cCustomParen
syn match	 template		"<\a\(\a\|\s\|[,*\.=:]\)*>"	

syn keyword template Type

hi def link sfml		 Type
hi def link cCustomFunc  Function
hi def link cCustomClass Normal

