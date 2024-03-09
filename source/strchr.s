	.text
	.global		_strchr
	.type 		_strchr, 			@function
_strchr:
	push		%rbx
	mov 		%rdi,				%rbx
	xor			%rax,				%rax
_loop:
	movzb		(%rbx, 1),			%rax
	cmp			%rsi,				%rax
	je			_find
	test		%rbx,				%rbx
	je			_end
	inc			%rbx
	jmp			_loop
_find:
	mov			%rbx,				%rax
_end:
	pop			%rbx
	ret
