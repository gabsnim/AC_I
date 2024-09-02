
/*
    Gabriel Xavier Borges - 805347
*/    

module f5A (output s, input a, input b); // (a ^ b = a xor b)

  wire not_a, not_b, andx, andy;

  nand NAND1 (not_a, a, a);
  nand NAND2 (not_b, b, b);
  nand NAND3 (andx, a, not_b);
  nand NAND4 (andy, not_a, b);
  nand NAND5 (s, andx, andy);

endmodule 

module atividade06;
  
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