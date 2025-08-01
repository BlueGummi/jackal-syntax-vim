if exists("b:current_syntax")
  finish
endif

syn keyword jklConditional     IF ELSE ELSEIF THEN END
syn keyword jklLoop            WHILE FOR UNTIL LOOP DO BREAK
syn keyword jklFunction        FN RETURN FNPTR 

syn keyword jklDeclaration     STRUCT MACRO DEFINE INCLUDE ENUM

syn keyword jklQualifier       IN OUT TO EXTERN CAST EXPORT
syn keyword jklBoolean         TRUE FALSE NULLPTR NOT OR AND XOR
syn keyword jklSpecial         CONTAINEROF GOTO SECTION NOTHING BARRIER INSERTASM
syn keyword jklType            UWORD ULONG UBYTE LONG WORD BYTE 

" POINTERS AND STRUCT ACCESS

syn match   jklFieldAccess     /\<[A-Za-z_][A-Za-z0-9_]*\>\(\^\)\?\.\<[A-Za-z_][A-Za-z0-9_]*\>/
syn match   jklPointerType     /\(^\)\+\ze\h/
syn match   jklDerefOp         /[\^\.]/

" IDENTIFIERS AND FUNCTIONS

syn match   jklVarType         /:\s*\zs[a-zA-Z0-9_]\+/
syn match   jklLabel           /^[A-Z][A-Za-z0-9_]*\s*/
syn match   jklIdentifier      /\<[A-Za-z_][A-Za-z0-9_]*\>/
syn match   jklAtLabel         /@\h\w*/

syn match   jklFunctionCall    /\<[A-Za-z_][A-Za-z0-9_]*\>\ze\s*(/
syn match   jklFunctionName    /FN\s\+\zs\w\+/

" CONSTANTS, STRINGS, NUMBERS

syn match   jklNumber          /\<\%(0[xX][0-9A-Fa-f]\+\|0[bB][01]\+\|0[oO]\=\o\+\|[1-9][0-9]*\|0\)\>/
syn region  jklString          start=/"/ skip=/\\"/ end=/"/
syn match   jklChar            /'\(\\.\|[^']\)'/

" COMMENTS 

syn region jklComment          start=+//+ end=/$/

" OPERATORS AND SYMBOLS

syn match   jklTypeSeparator   /:/
syn match   jklOperator        /\(\/\%(\/\)\@!\|[$<>!=+\-*%&|]\)/
syn match   jklDelimiter       /[()[\]{},]/
syn match   jklAssignOp        /:=/

" MACROS AND DIRECTIVES

syn match   jklMacro           /#\(DEFINE\|MACRO\|INCLUDE\|IF\|ELSE\|END\|ASM\)/

" Match ALL CAPS identifiers not already matched
syn match jklConstant /\<[A-Z_][A-Z0-9_]*\>/

" HIGHLIGHT LINKS

hi def link jklConstant Constant
hi def link jklConditional     Conditional
hi def link jklLoop            Repeat
hi def link jklFunction        Function
hi def link jklFunctionCall    Function
hi def link jklFunctionName    Identifier
hi def link jklDeclaration     Statement
hi def link jklQualifier       Keyword
hi def link jklBoolean         Boolean
hi def link jklLogic           Keyword
hi def link jklSpecial         Keyword

hi def link jklVarType         Type
hi def link jklTypeSeparator   Type
hi def link jklType            Type
hi def link jklPointerType     Type
hi def link jklDerefOp         Operator

hi def link jklLabel           Label
hi def link jklAtLabel         Label
hi def link jklIdentifier      Identifier
hi def link jklFieldAccess     Operator

hi def link jklNumber          Number
hi def link jklChar            Character
hi def link jklString          String

hi def link jklComment         Comment
hi def link jklOperator        Operator
hi def link jklDelimiter       Delimiter
hi def link jklAssignOp        Operator
hi def link jklMacro           Macro

let b:current_syntax = "jkl"

