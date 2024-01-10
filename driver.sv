class driver;
  
  virtual fa_intf vif;
  mailbox mbox;
  transaction trans;
  
  function new(virtual fa_intf vif, mailbox mbox); 
    trans=new();
    this.vif = vif;
    this.mbox = mbox;
  endfunction
  
  task run();
    forever begin
       
        mbox.get(trans);
        vif.in1=trans.in1;
        vif.in2=trans.in2;
        vif.cin=trans.cin;
        #5
        trans.sum = vif.sum;
        trans.cout = vif.cout;      
      $display("sum=%d cout=%d",trans.sum,trans.cout);
        
    end
  endtask
  
endclass
