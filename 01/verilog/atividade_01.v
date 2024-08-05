/*
    Gabriel Xavier Borges - 805347
*/

module atividade_01;

integer a = 26, b = 53, c = 713, d = 213, e = 365; //decimal 

reg [9:0] y = 0; // 9 para comportar o valores maiores (713);

initial

begin : main

$display ("Atividade01 - Gabriel Xavier Borges\n");
$display ("decimal para binario: \n");

//26
y = a;
$display ("decimal = %d", a);
$display ("binario = %8b\n", y);

//53
y = b;
$display ("decimal = %d", b);
$display ("binario = %8b\n", y);

//713
y = c;
$display ("decimal = %d", c);
$display ("binario = %8b\n", y);

//213
y = d;
$display ("decimal = %d", d);
$display ("binario = %8b\n", y);

//365
y = e;
$display ("decimal = %d", e);
$display ("binario = %8b\n", y);


end
endmodule