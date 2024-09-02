/*
    Gabriel Xavier Borges - 805347
*/    

module f5A (output s, input a, input b); // (~(a ^ b) = a xnor b)

  wire not_ax, not_ay, not_az;

  nor NOR1 (not_ax, a, b);
  nor NOR2 (not_ay, a, not_ax);
  nor NOR3 (not_az, b, not_ax);
  nor NOR4 (s, not_ay, not_az);

endmodule 

module atividade05;
  
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