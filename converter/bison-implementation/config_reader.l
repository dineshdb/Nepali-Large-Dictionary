%{
#include "config_reader.tab.h"
#include <stdlib.h>
#include <string.h>


%}

IDENTIFIER  [a-zA-Z0-9_]+
EQUAL_IDENTIFIER [\=\:]|":="

%%

\#.*       { /* ignore python style comments */ }
"//".*     { /* ignore  C style comments as well */ }
EQUAL_IDENTIFIER              { return EQUAL; } 

{IDENTIFIER}      { yylval = strdup(yytext);
                    return ID; }
\n             { return EOL; }
.          { }
