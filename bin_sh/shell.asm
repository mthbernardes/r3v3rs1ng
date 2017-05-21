section .text:
	global _start
	_start:
		push ebp
		mov ebp,esp
		sub esp,10
		push 0x68732f6e
		push 0x69622f2f
		xor eax,eax
		add eax,0x0b
		mov ebx,esp
		xor edx,edx
		xor ecx,edx
		int 0x80
