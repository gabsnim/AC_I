module Atividade04;

    reg [7:0] a = 8'b00100001;
    reg [11:0] b = 16'h032D;
    reg [8:0] c = 12'o751;  
    reg [8:0] d = 12'o345;
    reg [11:0] e = 12'hA5e;
    reg [15:0] aux;

    initial begin: main

        aux = a;
        $display("a (4) = 0.321");
        $display("a (2) = 0.%b", aux[7:0]);

        aux = b;
        $display("b (16) = 0.321");
        $display("b (4) = 0.%d%d%d%d%d%d",aux[11:10], aux[9:8], aux[7:6], aux[5:4], aux[3:2], aux[1:0]);

        aux = c;
        $display("c (8) = 0.321");
        $display("c (2) = 0.%b", aux[8:0]);

        aux = d;
        $display("d (8) = 0.321");
        $display("d (4) = 0.%d%d%d%d", aux[7:6],  aux[5:4], aux[3:2], aux[1:0]);

        aux = e;
        $display("e (16) = 0.321");
        $display("e (4) = 0.%d%d%d%d%d%d",aux[11:10], aux[9:8], aux[7:6], aux[5:4], aux[3:2], aux[1:0]);


    end

endmodule