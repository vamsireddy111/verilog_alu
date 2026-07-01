module alu (
    input [3:0] A, B,
    input [1:0] Sel,
    output reg [3:0] Result,
    output Cout
);

wire [3:0] sum;
wire [3:0] and_out, or_out, xor_out;

assign {Cout, sum} = A + B;

assign and_out = A & B;
assign or_out  = A | B;
assign xor_out = A ^ B;

always @(*) begin
    case (Sel)
        2'b00: Result = and_out;
        2'b01: Result = or_out;
        2'b10: Result = sum;
        2'b11: Result = xor_out;
    endcase
end

endmodule
