module M4to1muxPMTB (
    
);
    reg [3:0]in;
    reg [1:0]sel;
    wire out;

   M4to1muxPM M_1(in,sel,out);
   initial begin
    $dumpfile("M4to1muxPM.vcd");
    $dumpvars(0,M4to1muxPMTB);
    $monitor($time, "in=%b sel=%b out=%b", in, sel, out);
    in=4'b0011; sel=2'b00;
    #5 in=4'b0011; sel=2'b01;
     #5 in=4'b0011; sel=2'b11;
     #5 in=4'b0011; sel=2'b10;
    #20 $finish;
   end

    
endmodule