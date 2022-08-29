	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x40001000
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	LDR R0,=NUM
	LDR R1,=RES
	LDR R2,[R0]
	mla r3,r2,r2,r2
	lsr r3,#01
	STR R3,[R1]
	
	
STOP B STOP
NUM	 DCD 0X00000012
	AREA mydata, DATA, READWRITE
RES DCD 0
	END