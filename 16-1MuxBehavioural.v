module mux_16to1(inputs, select,out);
input [15:0] inputs;
input [3:0] select;
output reg out;


always @(*) begin
    case (select)
        4'b0000: out = inputs[0];
        4'b0001: out = inputs[1];
        4'b0010: out = inputs[2];
        4'b0011: out = inputs[3];
        4'b0100: out = inputs[4];
        4'b0101: out = inputs[5];
        4'b0110: out = inputs[6];
        4'b0111: out = inputs[7];
        4'b1000: out = inputs[8];
        4'b1001: out = inputs[9];
        4'b1010: out = inputs[10];
        4'b1011: out = inputs[11];
        4'b1100: out = inputs[12];
        4'b1101: out = inputs[13];
        4'b1110: out = inputs[14];
        4'b1111: out = inputs[15];
        default: out = 16'hxxxx; // invalid input
    endcase
end

endmodule
