module full_adder(output sum, output cout, input in1, input in2, input cin);
    wire w1, w2, w3;
    
    assign w1 = in1 ^ in2;        
    assign sum = w1 ^ cin;        
    assign w2 = in1 & in2;        
    assign w3 = w1 & cin;         
    assign cout = w2 | w3; 
  
endmodule

module BA_4bit(output [3:0] sum, output cout, input [3:0] a, input [3:0] b);
    wire [2:0] c; 
    
    //cin içindeki 1'bo dışardan cin girmediğini gösteriyor.
    full_adder fa0(.sum(sum[0]), .cout(c[0]), .in1(a[0]), .in2(b[0]), .cin(1'b0));   
    full_adder fa1(.sum(sum[1]), .cout(c[1]), .in1(a[1]), .in2(b[1]), .cin(c[0]));  
    full_adder fa2(.sum(sum[2]), .cout(c[2]), .in1(a[2]), .in2(b[2]), .cin(c[1]));   
    full_adder fa3(.sum(sum[3]), .cout(cout), .in1(a[3]), .in2(b[3]), .cin(c[2]));   
endmodule