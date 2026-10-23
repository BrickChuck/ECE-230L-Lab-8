module Mux(
    input [3:0] din0, din1, din2, din3,   
    input sel1, sel0,   
    input selE,         
    output reg [3:0]dout     
);

    always @(din0, din1, din2, din3, sel1, sel0, selE) begin
        if (selE == 1'b0) begin
            dout = 4'b0000;
        end 
        else if (selE ==1'b1) begin
            case ({sel1, sel0}) 
                2'b00:   dout = din0;
                2'b01:   dout = din1;
                2'b10:   dout = din2;
                2'b11:   dout = din3;
                //default: dout = 1'b0;
            endcase
        end
    end

endmodule	
