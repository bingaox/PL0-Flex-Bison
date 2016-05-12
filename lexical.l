%{
	#include <stdio.h>
	int chars = 0;
	int words = 0;
	int lines = 0;
	
	int cc=0;

%}
%option yylineno
number [0-9][0-9]*
IDENT [a-zA-Z][a-zA-Z0-9]*
%%
" " {cc++;}
"\t" {}

{number} return NUMBER
{IDENT} return IDENT
. {
	printf("Error type A at Line %d:Mysterious characters \'%s\'\n",yylineno,yytext);
}
%%

int yywrap()
{
return 1;
}

void main()
{

yylex(); /* start the  analysis*/

return ;

}
