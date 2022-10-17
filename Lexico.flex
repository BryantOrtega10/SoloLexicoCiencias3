package SoloLexico;
import static SoloLexico.Tokens.*;
%%
%class Lexico
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ \t \r]+
%{
    public String lexemas;
%}
%%

/* Espacios en blanco */
{espacio} {/*Ignore*/}

/* Comentarios */
( "//"(.)* ) {/*Ignore*/}

/* Salto de linea */
( "\n" ) {return Linea;}

/* Comillas */
( "\"" ) {lexemas=yytext(); return Comillas;}

/*Tipos de datos*/
/*Tipo de dato Byte*/
( byte ) {lexemas=yytext(); return Byte;}

/* Tipo de dato Char */
(char) {lexemas=yytext(); return Char;}

/* Tipo de dato Double */
(double) {lexemas=yytext(); return Double;}

/*Tipo de dato Float*/
( float ) {lexemas=yytext(); return Float;}

/* Tipo de dato Int */
(int) {lexemas=yytext(); return Int;}

/* Tipo de dato Long*/
( long ) {lexemas=yytext(); return Long;}

/* Tipo de dato Short*/
( short ) {lexemas=yytext(); return Short;}

/* Tipo de dato Unsigned*/
( unsigned ) {lexemas=yytext(); return Unsigned;}

/* Tipo de dato Void*/
( void ) {lexemas=yytext(); return Void;}

/* Tipo de dato String */
( string ) {lexemas=yytext(); return String;}

/*Sentencias compuestas*/
/* Palabra reservada If */
( if ) {lexemas=yytext(); return If;}

/* Palabra reservada Else */
( else ) {lexemas=yytext(); return Else;}

/* Palabra reservada Do */
( do ) {lexemas=yytext(); return Do;}

/* Palabra reservada While */
( while ) {lexemas=yytext(); return While;}

/* Palabra reservada For */
( for ) {lexemas=yytext(); return For;}

/* Palabra reservada Continue */
( continue ) {lexemas=yytext(); return Continue;}

/* Palabra reservada Switch */
( switch ) {lexemas=yytext(); return Switch;}

/* Palabra reservada Case */
( case ) {lexemas=yytext(); return Case;}

/* Palabra reservada Break */
( break ) {lexemas=yytext(); return Break;}

/* Palabra reservada Default */
( default ) {lexemas=yytext(); return Default;}

/* Palabra reservada try */
( try ) {lexemas=yytext(); return Try;}

/* Palabra reservada catch */
( catch ) {lexemas=yytext(); return Catch;}

/* Palabra reservada finally */
( finally ) {lexemas=yytext(); return Finally;}

/*Definiciones e importaciones*/

/* Reservada Numeral*/
( "#" ) {lexemas=yytext(); return Numeral;}

/* Reservada Include */
( "include" ) {lexemas=yytext(); return Include;}

/* Reservada Define */
( "define" ) {lexemas=yytext(); return Define;}

/* Palabra reservada Const */
(const) {lexemas=yytext(); return Const;}

/* Palabra reservada Register */
( "register" ) {lexemas=yytext(); return Register;}

/* Palabra reservada Struct */
( "struct" ) {lexemas=yytext(); return Struct;}

/* Palabra reservada Typedef */
( typedef ) {lexemas=yytext(); return Typedef;}

/*Funciones*/
/* Palabra reservada Return */
( return ) {lexemas=yytext(); return Return;}

/* Palabra reservada Printf*/
( printf ) {lexemas=yytext(); return Printf;}

/* Palabra reservada Scanf */
( "scanf" ) {lexemas=yytext(); return Scanf;}

/* Palabra Reservada Cin */
( "cin" ) {lexemas=yytext(); return Cin;}

/* Palabra Reservada Cout */
( "cout" ) {lexemas=yytext(); return Cout;}

/* Palabra Reservada Using */
( "using" ) {lexemas=yytext(); return Using;}

/* Palabra reservada Namespace */
( "namespace" ) {lexemas=yytext(); return Namespace;}

/* Palabra Reservada Std */
( "std" ) {lexemas=yytext(); return Std;}



/*Operadores Aritmeticos*/
/* Operador Igual */
( "=" ) {lexemas=yytext(); return Igual;}

/* Operador Suma */
( "+" ) {lexemas=yytext(); return Suma;}

/* Operador Resta */
( "-" ) {lexemas=yytext(); return Resta;}

/* Operador Multiplicacion */
( "*" ) {lexemas=yytext(); return Multiplicacion;}

/* Operador Division */
( "/" ) {lexemas=yytext(); return Division;}

/* Operador Modulo */
( "%" ) {lexemas=yytext(); return Modulo;}

/* Operador Potencia */
( "^" ) {lexemas=yytext(); return Potencia;}

/*Operadores Logicos*/
/* Operador And*/
( "&&" ) {lexemas=yytext(); return Op_And;}

/* Operador Or*/
( "||" ) {lexemas=yytext(); return Op_Or;}

/* Operador Not*/
( "!" ) {lexemas=yytext(); return Op_Not;}

/* Operador Nand*/
( "&" ) {lexemas=yytext(); return Op_Nand;}

/* Operador Nor*/
( "|" ) {lexemas=yytext(); return Op_Nor;}

/* Operador Mayor Que*/
( ">" ) {lexemas=yytext(); return Op_Mayor;}

/* Operador Menor Que*/
( "<" ) {lexemas=yytext(); return Op_Menor;}

/* Operador Igual a*/
( "==" ) {lexemas=yytext(); return Op_IgualA;}

/* Operador Diferente de*/
( "!=" ) {lexemas=yytext(); return Op_DiferenteDe;}

/* Operador Mayor o igual que*/
( ">=" ) {lexemas=yytext(); return Op_MayorIgual;}

/* Operador Menor o igual que*/
( "<=" ) {lexemas=yytext(); return Op_MenorIgual;}

/*Operadores de asignacion*/

/* Operador MenorMenor*/
( "<<" ) {lexemas=yytext(); return Op_MenorMenor;}

/* Operador MayorMayor*/
( ">>" ) {lexemas=yytext(); return Op_MayorMayor;}

/* Operador Mas Igual*/
( "+=" ) {lexemas=yytext(); return Op_MasIgual;}

/* Operador Menos Igual*/
( "-=" ) {lexemas=yytext(); return Op_MenosIgual;}

/* Operador Por Igual*/
( "*=" ) {lexemas=yytext(); return Op_PorIgual;}

/* Operador Division Igual*/
( "/=" ) {lexemas=yytext(); return Op_DivIgual;}

/* Operador Mod Igual*/
( "%=" ) {lexemas=yytext(); return Op_ModIgual;}

/* Operador MasMas  */
( "++" ) {lexemas = yytext(); return Op_MasMas;}

/* Operador MenosMenos*/
( "--" ) {lexemas=yytext(); return Op_MenosMenos;}


/*Valores*/
/* Valor Booleano Verdadero*/
( true ) {lexemas=yytext(); return Verdadero;}

/* Valor Booleano Falso*/
( false ) {lexemas=yytext(); return Falso;}

/*Valor Null*/
( null ) {lexemas=yytext(); return Null;}

/*Agrupadores*/
/* Parentesis de apertura */
( "(" ) {lexemas=yytext(); return Parent_a;}

/* Parentesis de cierre */
( ")" ) {lexemas=yytext(); return Parent_c;}

/* Llave de apertura */
( "{" ) {lexemas=yytext(); return Llave_a;}

/* Llave de cierre */
( "}" ) {lexemas=yytext(); return Llave_c;}

/* Corchete de apertura */
( "[" ) {lexemas = yytext(); return Corchete_a;}

/* Corchete de cierre */
( "]" ) {lexemas = yytext(); return Corchete_c;}

/* Punto y coma */
( ";" ) {lexemas=yytext(); return P_Coma;}

/* Punto */
( "." ) {lexemas=yytext(); return Punto;}

/* Coma */
( "," ) {lexemas=yytext(); return Coma;}

/* Dos Puntos */
( ":" ) {lexemas=yytext(); return DosPuntos;}

/* Marcador de inicio de algoritmo */
( "main" ) {lexemas=yytext(); return Main;}

/* Libreria */
({L}*+".h")|(({L}|{D})*+".h") {lexemas=yytext(); return Libreria;}

/* TextoEntreComillas */
( "\"" + (.)* + "\"" ) {lexemas=yytext(); return TextoEntreComillas;}

/* Identificador */
{L}({L}|{D})* {lexemas=yytext(); return Identificador;}

/* Numero */
({D}+"."{D}+)|("-"{D}+"."{D}+)|("-"{D}+)|{D}+ {lexemas=yytext(); return Numero;}

/* Error de analisis */
 . {return ERROR;}