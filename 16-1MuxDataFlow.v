module mux_16to1( inputs, select,out);
input [15:0] inputs;
input[3:0] select;
output out;

assign out = (select == 4'b0000) ? inputs[0] :
             (select == 4'b0001) ? inputs[1] :
             (select == 4'b0010) ? inputs[2] :
             (select == 4'b0011) ? inputs[3] :
             (select == 4'b0100) ? inputs[4] :
             (select == 4'b0101) ? inputs[5] :
             (select == 4'b0110) ? inputs[6] :
             (select == 4'b0111) ? inputs[7] :
             (select == 4'b1000) ? inputs[8] :
             (select == 4'b1001) ? inputs[9] :
             (select == 4'b1010) ? inputs[10] :
             (select == 4'b1011) ? inputs[11] :
             (select == 4'b1100) ? inputs[12] :
             (select == 4'b1101) ? inputs[13] :
             (select == 4'b1110) ? inputs[14] :
             (select == 4'b1111) ? inputs[15] : 0;
             
endmodule
