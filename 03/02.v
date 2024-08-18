/*
    Gabriel Xavier Borges - 805347 
*/
module Ativiade02;

    reg [5:0] a = 8'o321 ; // 4
    reg [7:0] b = 8'hb2 ; // hexa
    //reg [5:0] c = 8'o231 ; // 4
    reg [7:0] d = 8'o146; // octal
    reg [7:0] e = 8'h6f; // hexa
    //reg [5:0] auxc = 0; 
    reg [9:0] auxd = 0; 
    reg [7:0] auxe = 0; 

initial
    begin : main

        $display ( "Gabriel Xavier - Ativiade02" );
        
        $display ( "a = %6b -> C1(a) = %6b", a, ~a);

        $display ( "b = %2b%2b%2b -> C1(b) = %2b%2b%2b", b[7:5], b[4:3], b[2:1], ~b[7:5], ~b[4:3], ~b[2:1]);
        
        //auxc = ~c + 1;
        //$display ( "c = %6b -> C1(c) = %6b -> C2(c) = %6b", c, ~c, auxc );

        auxd = ~d + 1;
        $display ( "d = %6b -> C1(d) = %6b -> C2(d) = %10b", d, ~d, auxd );

        auxe = ~e + 1;
        $display ( "e = %6b -> C1(e) = %6b -> C2(e) = %8b", e, ~e, auxe );
    end 
endmodule 