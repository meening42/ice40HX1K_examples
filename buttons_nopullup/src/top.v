
  /* Top level module for button demo without debouncing and with no
   pull-up resistor (not a good way of doing things!)
   */
module top (
    // input hardware clock (12 MHz)
    CLK, 
    // LED
    D1,
    D2,
    // Keypad lines
    btn1,
    btn2,
    );

    /* Clock input */
    input CLK;

    /* LED outputs */
    output D1;
    output D2;

    /* Numpad I/O */
    input btn1;
    input btn2;

    /* LED register */
    reg ledval1 = 1'b0;
    reg ledval2 = 1'b0;

    /* LED Wiring */
    assign D1=ledval1;
    assign D2=ledval2;
    
    /* Toggle LED when button [1] pressed */
    always @ (negedge btn1) begin
        ledval1 = ~ledval1;
    end

    always @ (negedge btn2) begin
        ledval2 = ~ledval2;
    end

endmodule