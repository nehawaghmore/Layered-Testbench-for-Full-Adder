`include "interface.sv"
`include "test"
module tbench;
  fa_intf pif();
  test tb(pif);
  
  FA f1(.in1(pif.in1),.in2(pif.in2),.cin(pif.cin),.sum(pif.sum),.cout(pif.cout));
  
  initial begin 
    $dumpfile("dump.vcd"); 
    $dumpvars(1);
  end
endmodule
