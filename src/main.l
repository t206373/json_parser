/* Data de submissao:13/04/2020
 * Nome: Tony Tian Rui Li
 * RA:206373
 */

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
