/*
    Gabriel Xavier Borges - 805347 
*/
module Ativiade01;

    reg [5:0] a = 8'b00_1010 ; // binary   
    reg [7:0] b = 8'b0000_1101 ; // binary    
    reg [5:0] c = 8'b101001 ; // binary
    reg [7:0] d = 8'b0_101111 ; // binary    
    reg [7:0] e = 8'b00_110100 ;// binary
    reg [5:0] auxc = 0; // binary  
    reg [6:0] auxd = 0; // binary  
    reg [7:0] auxe = 0; // binary  



initial
    begin : main
        $display ( "Gabriel Xavier - Ativiade01" );
        
        $display ( "a = %6b -> C1(a) = %6b", a, ~a); //01a
        
        $display ( "b = %8b -> C1(b) = %8b", b, ~b); //01b

        auxc = ~c+1;
        $display ( "c = %6b -> C1(c) = %6b -> C2(c) = %6b", c, ~c, auxc);//01c

        auxd = ~d+1;
        $display ( "d = %7b -> C1(d) = %7b -> C2(d) = %7b", d, ~d, auxd);//01d

        auxe = ~e+1;
        $display ( "e = %8b -> C1(e) = %8b -> C2(e) = %8b", e, ~e, auxe);//01e

    end 
endmodule 
