/*
    Gabriel Xavier Borges - 805347 
*/

module fxyzA(output s, input x,y,z);
    assign s = (~x & ~(~y | z));
endmodule

module fxyzB(output s, input x,y,z);
    assign s = (~(~x | ~y) & ~z); 
endmodule

module fxyzC(output s, input x,y,z);
    assign s = (~(x & ~y) & ~z);
endmodule

module fxyzD(output s, input x,y,z);
    assign s = (~(~x & y) & z); 
endmodule

module fxyzE(output s, input x,y,z);
    assign s = (~x | y) & ~(~y | z);
endmodule

module Atividade01; 
    reg x, y, z;
    wire s1, s2, s3, s4, s5;

    fxyzA FXYZA (s1, x, y, z); 
    fxyzB FXYZB (s2, x, y, z); 
    fxyzC FXYZC (s3, x, y, z); 
    fxyzD FXYZD (s4, x, y, z); 
    fxyzE FXYZE (s5, x, y, z); 


    // valores iniciais 
    initial 
        begin: start 
            x=1'b0; y=1'b0; z=1'b0;   // indefinidos 
        end 

    initial 
        begin: main 
            $display("\nA\n"); 
            $monitor("%b %b %b = %b", x, y, z, s1);
            // sinalizacao  
            #1 x=0; y=0; z=1;
            #1 x=0; y=1; z=0;
            #1 x=0; y=1; z=1;
            #1 x=1; y=0; z=0;
            #1 x=1; y=0; z=1;
            #1 x=1; y=1; z=0;
            #1 x=1; y=1; z=1;
            
            #1 x=1'b0; y=1'b0; z=1'b0; 
            $display("\nB\n"); 
            $monitor("%b %b %b = %b", x, y, z, s2); 
            // sinalizacao 
            #1 x=0; y=0; z=1;
            #1 x=0; y=1; z=0;
            #1 x=0; y=1; z=1;
            #1 x=1; y=0; z=0;
            #1 x=1; y=0; z=1;
            #1 x=1; y=1; z=0;
            #1 x=1; y=1; z=1;


            #1 x=1'b0; y=1'b0; z=1'b0; 
            $display("\nC"); 
            $monitor("%b %b %b = %b", x, y, z, s3); 
            // sinalizacao 
            #1 x=0; y=0; z=1;
            #1 x=0; y=1; z=0;
            #1 x=0; y=1; z=1;
            #1 x=1; y=0; z=0;
            #1 x=1; y=0; z=1;
            #1 x=1; y=1; z=0;
            #1 x=1; y=1; z=1;


            #1 x=1'b0; y=1'b0; z=1'b0; 
            $display("\nD"); 
            $monitor("%b %b %b = %b", x, y, z, s4); 
            // sinalizacao 
            #1 x=0; y=0; z=1;
            #1 x=0; y=1; z=0;
            #1 x=0; y=1; z=1;
            #1 x=1; y=0; z=0;
            #1 x=1; y=0; z=1;
            #1 x=1; y=1; z=0;
            #1 x=1; y=1; z=1;


            #1 x=1'b0; y=1'b0; z=1'b0; 
            $display("\nE");
            $monitor("%b %b %b = %b", x, y, z, s5); 
            // sinalizacao 
            #1 x=0; y=0; z=1;
            #1 x=0; y=1; z=0;
            #1 x=0; y=1; z=1;
            #1 x=1; y=0; z=0;
            #1 x=1; y=0; z=1;
            #1 x=1; y=1; z=0;
            #1 x=1; y=1; z=1;
        end 

endmodule 