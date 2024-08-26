/*
    Gabriel Xavier Borges - 805347 
*/

module Atividade02;

    reg x = 0, y = 0;

initial
	begin: main

        $display("Gabriel Xavier\n");

        $display("A antes = x . ( x' + y )'");
        $display("A depois = x . y'");
        $display("A antes resultado = %b", x & ~(~x | y));
        $display("A depois resultado = %b", x & ~y);

        $display("\nB antes = (x' + y) + (x'. y)");
        $display("B depois = x' + y");
        $display("B antes resultado =%b", (~x | y) | (~x & y));
        $display("B depois resultado =%b", ~x | y);

        $display("\nC antes = ( x' . y' )' . ( x + y )");
        $display("C depois = x + y");
        $display("C antes resultado =%b", (~(x & ~y)) & (x | y));
        $display("C depois resultado =%b", x | y);

        $display("\nD antes = ( x' . y )' + ( x' + y )'");
        $display("D depois = x + y'");
        $display("D antes resultado =%b", ~(~x & y) | ~(~x | y));
        $display("D depois resultado =%b", x | ~y);

        $display("\nE antes = ( y + x' ) . ( y' + x )'");
        $display("E depois = y + x'");
        $display("E antes resultado =%b", (y | ~x) & ~(~y | x));
        $display("E depois resultado =%b", y & ~x);

	end

endmodule