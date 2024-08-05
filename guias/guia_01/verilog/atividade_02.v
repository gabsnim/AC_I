/*
    Gabriel Xavier Borges - 805347
*/

module atividade_02;

// define data
integer x = 0;

// binario
reg [7:0] a = 8'b0010101; 
reg [7:0] b = 8'b0011011;
reg [7:0] c = 8'b0010010;
reg [7:0] d = 8'b0101011;
reg [7:0] e = 8'b0110111;  

// actions
initial

begin : main

$display ("Atividade02 - Gabriel Xavier Borges\n");
$display ("binario para decimal: \n");

x = a;
$display ( "binario = %8b", a );
$display ( "decimal = %d\n" , x );

x = b;
$display ( "binario = %8b", b );
$display ( "decimal = %d\n" , x );

x = c;
$display ( "binario = %8b", c );
$display ( "decimal = %d\n" , x );

x = d;
$display ( "binario = %8b", d );
$display ( "decimal = %d\n" , x );

x = e;
$display ( "binario = %8b", e );
$display ( "decimal = %d\n" , x );

end 
endmodule 