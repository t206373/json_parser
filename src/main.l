
%{
#include <stdlib.h>
void yyerror(char *);

#include "y.tab.h"

%}

/*
%token '{' '}' '[' ']' ':' '"' ',' INT STR FLOAT 
*/

%%

\{ {return '{';}
\} {return '}';}
\" {return '"';}
\: {return ':';}
[,] {return ',';}
\[ {return '[';}
\] {return ']';}
[0-9]+ {return INT;}
[A-Za-z]+ {return STR;}
[0-9]+[.][0-9]+ {return FLOAT;}
[\n]*
[[:space:]]+ ;
. ;

%%

int yywrap() {
  return 1;
}
