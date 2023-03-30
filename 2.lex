// Lex Program to identify Integer or Float
%{

%}

DIGIT [0-9]
%%
{DIGIT}* {ECHO;printf(" is a Integer Number\n");}   //ECHO prints the currently enetered number
{DIGIT}*?\.{DIGIT}* {ECHO;printf(" is a Float Number\n");} /* ?\. means that the left hand side may or maynot be present*/
%%

yywrap(){}
int main(int argc, char const *argv[])
{
    yylex();
    return 0;
}
