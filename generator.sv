class generator;
  transaction trans; //Handle of Transaction class
  mailbox mbox;  //Mailbox declaration
  
  function new(mailbox mbox);  //creation of mailbox and constructor
    this.mbox = mbox;
  endfunction
  
  task run();
    repeat(2)begin
    	trans = new();
        trans.randomize();
        //trans.in1=0;
        //trans.in2=1;
        //trans.cin=0;
        $display("in1=%d in2=%d cin=%d",trans.in1,trans.in2,trans.cin);
        
        mbox.put(trans);
        
      end
  endtask
endclass
