%option noyywrap
%{
#include <stdio.h>
#include <locale.h>
int chars = 0;
int words = 0;
int lines = 0;
%}
%%
[^ \t\n]+	{words++; chars += strlen(yytext);}
[\n]		{chars++; lines++;}
.			{chars++;}
%%
int main() {
	setlocale(LC_NUMERIC, "");
	yylex();
	printf("Chars:\t%'d\nWords:\t%'d\nLines\t%'d\n", chars, words, lines);
	return 0;
}
