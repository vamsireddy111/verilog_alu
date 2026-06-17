module alu_tb;

reg [3:0] A, B;
reg [1:0] Sel;
wire [3:0] Result;
wire Cout;

alu uut (
    .A(A),
    .B(B),
    .Sel(Sel),
    .Result(Result),
    .Cout(Cout)
);

initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);

    $monitor("Time=%0t | A=%b B=%b Sel=%b | Result=%b Cout=%b",
              $time, A, B, Sel, Result, Cout);

    A=4'b0101; B=4'b0011;

    Sel=2'b00; #10; // AND
    Sel=2'b01; #10; // OR
    Sel=2'b10; #10; // ADD
    Sel=2'b11; #10; // XOR

    #10 $finish;
end

endmodule
