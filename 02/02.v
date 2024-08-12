module Atividade02;

real a = 0.375;
real b = 0.125;
real c = 0.625;
real d = 0.03125;
real e = 0.750;


task print;
    input real num;
    reg [6:0] arrayb; 
    integer x;        

    begin
        arrayb = 0;   
        x = 0;        

        while (x < 7) begin
            if (num * 2 >= 1) begin
                arrayb[x] = 1;
                num = num * 2.0 - 1.0;
            end else begin
                arrayb[x] = 0;
                num = num * 2.0;
            end
            x = x + 1;
        end

        $write("bin: ");
        for (x = 6; x >= 0; x = x - 1) begin
            $write("%d", arrayb[x]);
        end

    end
endtask


initial begin: main
    $display("a dec = %f", a);
    print(a);
    $display("\nb dec = %f", b);
    print(b);
    $display("\nc dec = %f", c);
    print(c);
    $display("\nd dec = %f", d);
    print(d);
    $display("\ne dec = %f", e);
    print(e); 
end

endmodule
