; Turn a denary number into a hexadecimal number that looks like a denary number

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
	mov eax,357
	mov edx,eax
	mov ecx,99
	cmp ecx,eax
	mov ecx,100
	xor eax,eax
	cmp edx,ecx
	jc twodigit
	loop1: sub edx,100
	add eax, 256
	cmp edx,ecx
	jnc loop1
	twodigit:
	mov ecx,10
	cmp edx,ecx
	jc onedigit
	loop2: add eax,16
	mov ebx,10
	sub edx,ebx
	cmp edx,ecx
	jnc loop2
	onedigit:
	add eax,edx

	invoke ExitProcess,0
main endp
end main