module inst_mem (data,address,idata,we);
input [31:0]address,idata;
input we;
output reg [31:0]data;
reg [31:0] rom[0:63];

always @(*)
	begin
		if(we)
			rom[address]=idata;
		else
			data=rom[address[31:2]];
	end
endmodule
