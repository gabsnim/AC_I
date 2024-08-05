/*
    Gabriel Xavier Borges -805347
*/
module Atividade05;

integer x = 0; // decimal
integer i = 0;

reg [0:7]  [7:0] a = "PUC-M.G."; 
reg [0:7]  [7:0] b = "2024-02";
reg [0:13]  [7:0] c = "Belo Horizonte";
reg [0:4] [7:0] d = {8'o156, 8'o157, 8'o151, 8'o164, 8'o145};
reg [0:4] [7:0] e = {8'h4d, 8'h61, 8'h6e, 8'h68, 8'h61};


initial

begin : main

$display ( "Atividade05 - Gabriel Xavier Borges\n");


$display ("a = %s\n", a);
for (i = 0; i < 7; i = i + 1)begin
    $display ("%h", a[i]);
end

$display ("\nb = %s\n", b);
for (i = 0; i < 8; i = i + 1)begin
    $display ("%h", b[i]);
end

$display ("\nc = %s\n", c);
for (i = 0; i < 14; i = i + 1)begin
    $display ("%4b ", c[i]);
end

$display ("\nd = %h\n", d);
for (i = 0; i < 5; i = i + 1)begin
    $display ("%c ", d[i]);
end

$display ("\ne = %h\n", e);
for (i = 0; i < 5; i = i + 1)begin
    $display ("%c ", e[i]);
end

end 
endmodule 