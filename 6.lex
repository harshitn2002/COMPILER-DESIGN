//lex program to remove C comments (single and multi-line)
%{
%}
%%
"//"[^\n]* ;
"/*"([^8]|[*]+[^/])*[*]+"/" ;
. fprintf(yyout,"%s",yytext);
%%
yywrap(){}
main()
{
extern FILE *yyin,*yyout;
yyin=fopen("Input.c","r");
yyout=fopen("Output.c","w");
yylex();
return 0;
}
