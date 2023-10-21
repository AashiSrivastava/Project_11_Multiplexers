module M2to1muxtest (
    
);
   reg [1:0]in;
   reg sel;
   wire out;

   M2to1mux M_1(.in(in),.sel(sel),.out(out));
   initial begin
    $dumpfile("M2to1mux.vcd");
    $dumpvars(0,M2to1muxtest);
    $monitor($time, "in=%b sel=%b out=%b", in, sel, out);
     in=2'b01; sel=1'b1;
     #5 in=2'b01; sel=1'b0;
     #10 $finish;
   end


endmodule