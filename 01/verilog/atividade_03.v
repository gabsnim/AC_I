/*
    Gabriel Xavier Borges - 805347
*/
module atividade_03;

// define data
integer a = 61, b = 53, c = 77, d = 153, e = 753; // decimal

reg [9:0] y = 0; // binary

initial

begin : main

$display ( "Atividade03 - Gabriel Xavier Borges\n" );
$display ( "Fazer as conversoes de decimal para a base indicada: \n");

//$display ("base10 para base4\n");
//$display ("decimal = %d \n", a);
//$display ("quaternario = %4b\n");

y = b;
$display ("base10 para base8\n");
$display ("decimal = %d \n", b);
$display ("octal = %o\n", y);

y = c;
$display ("base10 para base16\n");
$display ("decimal = %d \n", c);
$display ("hexadecimal = %X\n", y);

y = d;
$display ("base10 para base16\n");
$display ("decimal = %d \n", d);
$display ("hexadecimal = %X\n", y);

y = e;
$display ("base10 para base16\n");
$display ("decimal = %d \n", e);
$display ("hexadecimal = %X\n", y);



end
endmodule 