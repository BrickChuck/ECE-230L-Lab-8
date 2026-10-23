module Demux(
    input [3:0]din,          
    input sel1, sel0,  
    input selE,         
    output reg [3:0]out0, out1, out2, out3 
);

    always @(din, sel1, sel0, selE) begin
        out0 = 4'b0000;
        out1 = 4'b0000;
        out2 = 4'b0000;
        out3 = 4'b0000;

        if (selE == 1'b1) begin 
            case ({sel1, sel0}) 
                2'b00: out0 = din; 
                2'b01: out1 = din; 
                2'b10: out2 = din; 
                2'b11: out3 = din; 
                default: ;     
            endcase
        end
        else begin 
            out0 = 4'b0000;
            out1 = 4'b0000;
            out2 = 4'b0000;
            out3 = 4'b0000;
        end
    end

endmodule
		
					
