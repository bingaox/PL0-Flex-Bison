%{
	#include <stdio.h>
	int chars = 0;
	int words = 0;
	int lines = 0;
	
	int cc=0;

%}
%option yylineno
NUMBER [0-9][0-9]*
IDENT [a-zA-Z][a-zA-Z0-9]*
NOTE   "/*"([*]*(([^*/])+([/])*)*)*"*/"
%%
" " 	{ECHO;}
"\t" 	{ECHO;}
"\n"	{ECHO;}
"+"   	{ECHO;}
"-"		{ECHO;}
"*"		{ECHO;}
"/"		{ECHO;}
"<"		{ECHO;}
">"		{ECHO;}
"="		{ECHO;}
"#"		{ECHO;}
","		{ECHO;}
"."		{ECHO;}
"("		{ECHO;}
")"		{ECHO;}
"<=" 	{ECHO;}
">="	{ECHO;}
"::="	{ECHO;}
":"		{ECHO;}
"|"		{ECHO;}
";"		{ECHO;}
{NUMBER} 	{ECHO;}
{IDENT} 	{ECHO;}
{NOTE}		{}
. {
	printf("Error type A at Line %d:Mysterious characters \'%s\'\n",yylineno,yytext);
}
%%

int yywrap()
{
return 1;
}
