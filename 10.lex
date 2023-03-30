%{
%}

%s A B C D E F G H
%%
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN INITIAL;
<A>a BEGIN D;
<A>b BEGIN B;
<B>a BEGIN E;
<B>b BEGIN C;
<C>a BEGIN A;
<C>b BEGIN INITIAL;
<D>a BEGIN G;
<D>b BEGIN F;
<E>a BEGIN A;
<E>b BEGIN B;
<F>a BEGIN E;
<F>b BEGIN C;
<G>a BEGIN G;
<G>b BEGIN F;
<INITIAL>\n BEGIN INITIAL; printf("Not accepted\n");
<A>\n BEGIN INITIAL;printf("Not accepted\n");
<B>\n BEGIN INITIAL;printf("Not accepted\n");
<C>\n BEGIN INITIAL;printf("Accepted\n");
<D>\n BEGIN INITIAL;printf("Not accepted\n");
<E>\n BEGIN INITIAL;printf("Accepted\n");
<F>\n BEGIN INITIAL;printf("Accepted\n");
<G>\n BEGIN INITIAL;printf("Accepted\n");
<INITIAL>[^ab\n] BEGIN H;
<A>[^ab\n] BEGIN H;
<B>[^ab\n] BEGIN H;
<C>[^ab\n] BEGIN H;
<D>[^ab\n] BEGIN H;
<E>[^ab\n] BEGIN H;
<F>[^ab\n] BEGIN H;
<G>[^ab\n] BEGIN H;
<H>[^\n] BEGIN H;
<H>[\n] BEGIN INITIAL;printf("INVALID INPUT\n");
%%

yywrap(){}
main()
{
printf("Enter a string of a and b only\n");
yylex();
return 0;
}
