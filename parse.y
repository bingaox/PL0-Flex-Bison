%{
	#include <stdio.h>	
	#include "lex.yy.c"
%}

%token INT
%token ADD SUB MUL DIV

int main(){
	yyparse();
}
