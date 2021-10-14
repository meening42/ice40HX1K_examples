//------------------------------------------------------------------
//-- Verilog template
//-- Top entity
//-- Board: icestick
//------------------------------------------------------------------
`default_nettype none

//-- Template for the top entity
module top(CLK, D1, D2, D3, D4, D5);

input CLK;
output D1;
output D2;
output D3;
output D4;
output D5;

/* Counter register */
reg [31:0] counter = 32'b0;

assign D1 = counter[20];
assign D2 = counter[21];
assign D3 = counter[22];
assign D4 = counter[23];

assign D5 = counter[20];

/* always */
always @ (posedge CLK) begin
    counter <= counter + 1;
end


endmodule  // top