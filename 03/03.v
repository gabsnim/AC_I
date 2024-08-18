/*
    Gabriel Xavier Borges - 805347
*/
module Guia_0303;

    reg signed [4:0] a = 8'b10110; // binary
    reg signed [5:0] b = 8'b110011 ; // binary
    reg signed [5:0] c = 8'b100100 ; // binary
    reg signed [6:0] d = 8'b1011011 ; // binary
    reg signed [6:0] e = 8'b1110011 ; // binary
    reg signed [7:0] aux1 = 0; // binary
    reg signed [6:0] aux2 = 0; // binary

initial
    begin : main

        $display ( "Gabriel Xavier - Atividade03" );
        aux1 = ~a+1;
        aux2 = ~(a-1);
        $display ( "a = %8b -> C1(a) = %8b -> C2(a) = %8b = %d = %d", a, ~a, aux1, aux1, aux2 );

        aux1 = ~b+1;
        aux2 = ~(b-1);
        $display ( "b = %7b -> C1(b) = %7b -> C2(b) = %7b = %d = %d", b, ~b, aux1, aux1, aux2 );

        aux1 = ~c+1;
        $display ( "c = %6b -> C1(c) = %6b -> C2(c) = %2b%2b%2b", c, ~c, aux1[5:4], aux1[3:2], aux1[1:0]);

        aux1 = ~d+1;
        aux2 = ~(d-1);
        $display("d = %6b -> C1(d) = %6b -> C2(d) = %6b", d, ~d, aux1[6:0]);

        aux1 = ~e+1;
        aux2 = ~(e-1);
        $display("e = %6b -> C1(e) = %6b -> C2(e) = %6b = %h", e, ~e, aux1[6:0], aux1);

    end 
endmodule 