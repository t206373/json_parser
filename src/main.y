
/* Data de submissao:13/04/2020
 * Nome: Tony Tian Rui Li
 * RA:206373
 */
 
%{
#include <stdio.h>
  #include <stdlib.h>
void yyerror(char *c);
int yylex(void);
%}

%token '{' '}' '[' ']' ':' '"' ',' INT FLOAT STR

%%
Parser:
 J {printf("VALIDO\n");}
 ;

J:
 '{' X '}' {}
 ;

X:
 N ':' Y {}
 |X ',' X {}
 ;

N:
 '"' F '"' {}
 ;

F:
 STR {}
 | INT {}
 | F F {}
 ;

Y:
 INT {}
 | FLOAT {}
 | N {}
 | L {}
 | J {}
 ;

L:
 '[' C ']' {}
 ;

C:
 Z {}
 |
 ;

Z:
 Y {}
 | Z ',' Z {}

%%

void yyerror(char *s) {
  printf("INVALIDO\n");
}

int main() {
  yyparse();
    return 0;
}
