module top(
    input [15:0]sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0]led
);

wire [3:0] mux2demux;

Mux Whole(

    .sel0(btnL),
    .sel1(btnU),
    .selE(btnC),
    .din0(sw[3:0]),
    .din1(sw[7:4]),
    .din2(sw[11:8]),
    .din3(sw[15:12]),
    .dout(mux2demux)
);

Demux Whole2(

    .sel0(btnD),
    .sel1(btnR),
    .selE(btnC),
    .din(mux2demux),
    .out0(led[3:0]),
    .out1(led[7:4]),
    .out2(led[11:8]),
    .out3(led[15:12])
    
);
endmodule

