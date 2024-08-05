/*
    Gabriel Xavier Borges - 805347
*/

module Atividade04;

integer y = 0;

reg [7:0] a = 8'b0010100; // binary
reg [7:0] b = 8'b0011010; // binary
reg [7:0] c = 8'b0100111; // binary
reg [7:0] d = 8'b0100101; // binary
reg [7:0] e = 8'b0101101; // binary

initial

begin : main

$display ( "Atividade04 - Gabriel Xavier Borges\n" );
$display ( "Fazer as conversoes de base entre as bases indicadas por agrupamento:\n");


y = a;
$display ( "bin a = %d",a);
$display ( "a = [%2b] [%2b] [%2b]", y[5:4], y[3:2], y[1:0]);

y = b;
$display ( "bin b = %b",y);
$display ( "b = [%3b] [%3b]", y[5:3], y[2:0]);

y = c;
$display ( "bin c = %b",y);
$display ( "c = [%4b] [%4b]", y[7:4], y[3:0]);

y = d;
$display ( "bin d = %b",y);
$display ( "d = [%3b] [%3b]", y[7:4], y[3:0]);

y = e;
$display ("bin e = %b", y);
$display ("e = [%4b] [%4b]", y[7:4], y[3:0]);

end 
endmodule 