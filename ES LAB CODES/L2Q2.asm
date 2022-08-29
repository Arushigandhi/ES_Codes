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
	ldr r0,=NUM
	ldr r1,=NUM1
	LDR R2,=DST
	LDR R0,[R0]
	LDR R1,[R1]
up
	cmp r0,r1
	beq GCD
	bcs ag
	sub r1,r0
	b up
ag
	sub r0,r1
	b up
GCD
	STR R0,[R2]

STOP B STOP
NUM dcd 36
NUM1 dcd 60	
	

	AREA mydata, DATA, READWRITE
DST DCD 0
	END