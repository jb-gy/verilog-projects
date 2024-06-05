module mux2(       
   input a,b,s,    
   output wire y //  y = s'a + sb
);
    wire aw, bw, ns;
    // Implement the multiplexer y = s'a + sb
    not (ns, s);
    and (aw, ns, a);
    and (bw, s, b);
    or  (y, aw, bw);
endmodule
