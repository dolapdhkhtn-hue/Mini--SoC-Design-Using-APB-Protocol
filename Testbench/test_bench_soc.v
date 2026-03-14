
`timescale 1ns/1ps
module tb_soc;
    reg clk;
    reg reset_n;
    reg rx;
    wire tx;

    top_soc uut (
        .clk(clk),
        .reset_n(reset_n),
        .rx(rx), 
        .tx(tx) 
    );

    always #5 clk = ~ clk;
    task send_rx;
        input [7:0]data;
        integer i;
        begin
            rx = 1'b0;
            #8680;
            for(i = 0; i < 8; i = i + 1)begin
                rx = data[i];
                #8680;
            end
            rx = 1'b1;
            #8680;
        end
    endtask

    initial begin
        clk = 0;
        reset_n = 0;
        rx = 1;
        #200;
        reset_n = 1;
        #200;
        //gui byte 1
        send_rx(8'd3);
        #1000;
        send_rx(8'd5);
        #200000;
        $finish;
    end
endmodule
