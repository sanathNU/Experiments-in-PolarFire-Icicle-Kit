`timescale 1ns / 1ps

module JKff( //basic input and output are declared
    input J,
    input K,
    input Clk,
    output reg Clk_out,
    output reg Q,
    output reg Qbar
    );
// Uncomment this part if wanted to look at the board at a much slower rate
    // a counter for slowing down the clock for human visual introspection on an FPGA
    //reg [25:0] count=0;

////    always @(posedge Clk)
    //begin
    //count<=count+1;
    ////Number chosen according to the clock speed of the FPGA used
    //if (count==50_000_000)
    //begin
        //count<=0;
        //Clk_out = ~Clk_out;
    //end
////    clk_out = ~clk_out;
////    Clk_out = clk_out;
    //end
    
    // The flip flop logic
    always @ (posedge Clk)
    begin
    
    case({J,K})
    2'b00: begin Q <= ~Q; Qbar <= ~Qbar ; end
    2'b01: begin Q <= 1'b0; Qbar <= 1'b1 ;end
    2'b10: begin Q <= 1'b1; Qbar <= 1'b0; end
    2'b11: begin Q <= Q; Qbar <= Qbar ; end
    default : begin Q <= 1'bx; Qbar <=1'bx; end
    
    endcase
    end
endmodule

