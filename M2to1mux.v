module M2to1mux (
    in, sel, out
);
    input [1:0] in;
    input sel;
    output out;

    assign out=in[sel];
endmodule