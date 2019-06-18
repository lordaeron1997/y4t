%{
#include <stdlib.h>
void yyerror(char*);
#include "zhr.tab.h"
%}

%%
[a-z] {
yylval = *yytext-'a';
return VARIABLE;
}
[0-9] {
	yylval = atoi(yytext);
	return INTEGER;
}
[-+()=/*\n] {return *yytext;}
%%
int yywrap(void)
{
return 1;
}



