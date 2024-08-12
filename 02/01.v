module Atividade01;


reg [6:0] a = 7'b000011;
reg [6:0] b = 7'b001001;
reg [6:0] c = 7'b010101;
reg [6:0] d = 7'b111101;
reg [6:0] e = 7'b1111001;


function real atv01;
    input integer delimitador;
    input [6:0] num;
    integer i;
    integer j;
    real y; // Fracionária
    real x; // Inteira

    begin
        y = 0; 
        x = 0; 


        for (i = 0; i < delimitador; i = i + 1) begin
            if (num[i]) begin
                y = y + (1 / (2.0 ** (delimitador - i)));
            end
        end

        
        for (j = delimitador; j < 7; j = j + 1) begin
            if (num[j]) begin
                x = x + (2 ** (j - delimitador));
            end
        end

        
        atv01 = x + y;
    end
endfunction


initial begin: main
    real aux;

    $display("a bin = %b", a);
    aux = atv01(5, a); 
    $display("a dec = %f", aux);

    $display("\nb bin = %b", b);
    aux = atv01(5, b); 
    $display("b dec = %f", aux);

    $display("\nc bin = %b", c);
    aux = atv01(5, c); 
    $display("c dec = %f", aux);

    $display("\nd bin = %b", d);
    aux = atv01(5, d); 
    $display("d dec = %f", aux);

    $display("\ne bin = %b", e);
    aux = atv01(5, e); 
    $display("e dec = %f", aux);
end

endmodule
