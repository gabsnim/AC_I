/*
    Gabriel Xavier Borges - 805347
*/

module Atividade05;

    reg [5:0] a = 0 ; // binary
    //reg [5:0] b = 0 ; // binary
    //reg [5:0] b1 = 0 ; // binary
    reg [7:0] c = 0 ; // binary
    reg [7:0] d = 0 ; // binary
    reg [7:0] e = 0 ; // binary

    reg [7:0] aux1 = 0; //int
    reg [7:0] aux2 = 0; //int

    //reg [7:0] aux3 = 0; //frac
    //reg [7:0] aux4 = 0; //frac

initial
    begin : main

        $display ( "Gabriel Xavier - Atividade05" );

        aux1 = 8'b110101;
        aux2 = 8'b1011;
        a = aux1 - aux2;
        $display ("a = %8b(2) -%8b(2) = %8b(2)", aux1, aux2, a);

        //aux1 = 8'b101; //int
        //aux3 = 8'b1001; //frac
        //aux2 = 8'o3; //int
        //aux4 = 8'o1; //frac
        //b = aux1 - aux2;
        //b1 = aux3 - aux4;
        //$display ("b = %3b,%4b(2) - %1o,%1o(8) = %3b,%8b(2)", aux1[2:0], aux3[3:0], aux2[1:0], aux4[1:0], b[2:0], b1);

        aux1 = 8'b100111; //213
        aux2 = 16'h3d;
        c = aux1 - aux2;
        $display ("c = %d%d%d(4) -%2h(16) = %8b(2)", aux1[5:4], aux1[3:2], aux1[1:0], aux2, c);

        aux1 = 16'hc5;
        aux2 = 8'b1011001;
        d = aux1 - aux2;
        $display("d = %2h(16) -%8b(2) = %8b(2)", aux1, aux2, d);

        aux1 = 16'h7e;
        aux2 = 16'h2d;
        e = aux1 - aux2;
        $display("e = %2h(16) -%2h(16) = %8b(2)", aux1, aux2, e);
    end 
endmodule