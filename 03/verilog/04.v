/*
    Gabriel Xavier Borges - 805347
*/
module Atividade04;

    reg signed [4:0] a = 8'b11001; // binary
    reg signed [4:0] a1 = 8'b01101; // binary

    reg signed [6:0] b = 8'b101_1101 ; // binary
    reg signed [6:0] b1 = 8'b010_0100 ; // binary

    reg signed [5:0] c = 8'b110110 ; // 4
    reg signed [5:0] c1 = 8'b101101 ; // 4

    reg signed [7:0] d = 16'o376 ; // binary
    reg signed [7:0] d1 = 16'o267 ; // binary

    reg signed [11:0] e = 16'h7d2 ; // binary
    reg signed [11:0] e1 = 16'ha51 ; // binary

    reg signed [5:0] aux = 0;

initial
    begin : main

        $display ( "Gabriel Xavier - Atividade04" );

        $display ( "a = %6b -%6b = %6b(2)", a, a1, a-a1);

        $display ( "b = %8b -%8b = %8b(2)", b, b1, b-b1);

        aux = c-c1;
        $display ( "c = %6b -%6b = %1d%1d%1d(4)", c, c1, aux[5:4], aux[3:2], aux[1:0]);

        $display ( "d = %8b-%8b = %3o(8)", d, d1, d-d1);

        $display ( "e = %8b-%8b = %3h(16)", e, e1, e-e1);


    end 
endmodule 