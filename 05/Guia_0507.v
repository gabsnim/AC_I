
/*
    Gabriel Xavier Borges - 805347
*/    

module f5A (output s, input a, input b); // ( ~a ^ ~b )

  wire no_a, no_b;

  nor NOR1 (no_b, a, b);
  nor NOR2 (no_a, no_b, no_b);
  nor NOR3 (s, no_a, no_a);

endmodule 

module atividade07;
  
  reg x;
  reg y;
  wire s1;

  f5A moduloA (s1, x, y);

  initial begin : main

    $display("\nGabriel Xavier Borges");

    $monitor("%1b  %1b -> %1b", x, y, s1);

    #1 x = 1'b0; y = 1'b0;
    #1 x = 1'b0; y = 1'b1; 
    #1 x = 1'b1; y = 1'b0;
    #1 x = 1'b1; y = 1'b1;
    
  end
endmodule 