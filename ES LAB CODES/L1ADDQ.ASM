	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x40001000;
	DCD Reset_Handler;
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler

	LDR R0, =SRC
	LDR R1, =SRC1
	LDR R2, =RES
	
	LDR R4,[R0]
	LDR R5,[R1]
	RSB R6,R4,R5
	STR R6,[R2]
STOP B STOP
	
	
SRC DCD 0X23456789
SRC1 DCD 0X45678912
	AREA Mydata, DATA, READWRITE
RES DCD 0 
	END