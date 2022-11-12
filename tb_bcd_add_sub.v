module tb_bcd_add_sub;
reg [3:0]a,b;
reg mode;
wire [3:0]sum;
wire cout;
integer i,j,k;

bcd_add_sub dut(a,b,mode,sum,cout);

initial
begin
for(i=0;i<10;i=i+1) begin
 for(j=0;j<10;j=j+1) begin
	 for(k=0;k<2;k=k+1) 
        begin mode=k; a=i; b=j;
	     #10; end end end 
end

initial begin
$monitor($time," A=%4b, B=%4b , Mode=%b, sum_dif=%4b, carr_borr=%b",a,b,mode,sum, cout);
end


endmodule