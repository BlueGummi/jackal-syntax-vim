if exists("b:current_syntax")
  finish
endif

" KEYWORDS

syn keyword jklConditional     IF ELSE ELSEIF THEN END
syn keyword jklLoop            WHILE FOR UNTIL LOOP DO BREAK
syn keyword jklFunction        FN RETURN FNPTR 
syn keyword jklDeclaration     STRUCT MACRO DEFINE INCLUDE ENUM
syn keyword jklQualifier       IN OUT TO EXTERN CAST EXPORT
syn keyword jklBoolean         TRUE FALSE NULLPTR NOT OR AND XOR
syn keyword jklSpecial         CONTAINEROF
syn keyword jklType            UWORD ULONG UBYTE LONG WORD BYTE 

" POINTERS AND STRUCT ACCESS

syn match   jklFieldAccess     /\<[A-Za-z_][A-Za-z0-9_]*\>\(\^\)\?\.\<[A-Za-z_][A-Za-z0-9_]*\>/
syn match   jklPointerType     /\<\^[_a-zA-Z][_a-zA-Z0-9]*\>/
syn match   jklDerefOp         /[\^\.]/

" IDENTIFIERS AND FUNCTIONS

syn match   jklLabel           /^[A-Z][A-Za-z0-9_]*\s*/
syn match   jklIdentifier      /\<[A-Za-z_][A-Za-z0-9_]*\>/


syn match   jklFunctionCall    /\<[A-Za-z_][A-Za-z0-9_]*\>\ze\s*(/
syn match   jklFunctionName    /FN\s\+\zs\w\+/

" CONSTANTS, STRINGS, NUMBERS

syn match   jklNumber          /\<[0-9]\+\>/
syn region  jklString          start=/"/ skip=/\\"/ end=/"/
syn match   jklChar            /'\(\\.\|[^']\)'/

" COMMENTS 

syn region jklComment          start=+//+ end=/$/

" OPERATORS AND SYMBOLS

syn match   jklTypeSeparator   /:/
syn match   jklOperator        /\(\/\%(\/\)\@!\|[$<>!=+\-*%&|]\)/
syn match   jklDelimiter       /[()[\]{},]/
syn match   jklAssignOp        /:=/
syn match   jklVarType /\(:\s*\)\zs\<[A-Za-z_][A-Za-z0-9_]*\>/

" MACROS AND DIRECTIVES

syn match   jklMacro           /#\(DEFINE\|MACRO\|INCLUDE\)/

" HIGHLIGHT LINKS

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

