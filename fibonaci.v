module fibonaci(clk, rst, fib_out);
    input clk,rst;
     reg [31:0] previous, current;  
    output  [31:0] fib_out;  

    always @(posedge clk or negedge rst) 
    begin
        if (rst) begin
            previous <= 32'b0;
            current <= 32'b1;
             
        end 
        else begin
            current <=  current + previous;
					previous <= current;
        end
    end
	 assign fib_out = previous;
endmodule 
