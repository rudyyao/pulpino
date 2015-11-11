module shka65_8192x32x1
(
	input  logic 			CLK,
	input  logic			RSTN,

	input  logic 			CSN,
	input  logic 			WEN,
	input  logic [12:0] 	A,
	input  logic [31:0]     D,
	input  logic [3:0]      BEN,
	output logic [31:0] 	Q
)
	// memcuts

    SHKA65_8192X8X4CM16
    cut
    (
    	.DO   ( Q	 			 ),
    	.A    ( A    			 ),
      	.DI   ( D    			 ),
      	.WEB  ( be_i & {4{we_i}} ),
        .DVSE ( 1'b0 			 ), 
        .DVS  ( 3'b0  			 ),
      	.CK   ( CLK    			 ), 
      	.CSB  ( CSN    			 )
    );

endmodule;

module shka65_4096x16x2
(
	input  logic 			CLK,
	input  logic			RSTN,

	input  logic 			CSN,
	input  logic 			WEN,
	input  logic [11:0] 	A,
	input  logic [31:0]     D,
	input  logic [3:0]      BEN,
	output logic [31:0] 	Q
)
	// memcuts

    SHKA65_4096X8X2CM16
    cut
    (
    	.DO   ( Q[31:16]		 ),
    	.A    ( A    			 ),
      	.DI   ( D[31:16]		 ),
      	.WEB  ( be_i & {2{we_i}} ),
        .DVSE ( 1'b0 			 ), 
        .DVS  ( 3'b0  			 ),
      	.CK   ( CLK    			 ), 
      	.CSB  ( CSN    			 )
    );

    SHKA65_4096X8X2CM16
    cut
    (
    	.DO   ( Q[15:0] 		 ),
    	.A    ( A    			 ),
      	.DI   ( D[15:0] 		 ),
      	.WEB  ( be_i & {2{we_i}} ),
        .DVSE ( 1'b0 			 ), 
        .DVS  ( 3'b0  			 ),
      	.CK   ( CLK    			 ), 
      	.CSB  ( CSN    			 )
    );
endmodule;

module shka65_1024x32x1
(
	input  logic 			CLK,
	input  logic			RSTN,

	input  logic 			CSN,
	input  logic 			WEN,
	input  logic [9:0] 		A,
	input  logic [31:0]     D,
	input  logic [3:0]      BEN,
	output logic [31:0] 	Q
)

	// memcuts

    SHKA65_8192X8X4CM16
    cut
    (
    	.DO   ( Q	 			 ),
    	.A    ( A    			 ),
      	.DI   ( D    			 ),
      	.WEB  ( be_i & {4{we_i}} ),
        .DVSE ( 1'b0 			 ), 
        .DVS  ( 3'b0  			 ),
      	.CK   ( CLK    			 ), 
      	.CSB  ( CSN    			 )
    );

endmodule;