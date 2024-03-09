	.text
	.global		_strcpy
	.type 		_strcpy, 			@function
_strcpy:
	push		%rbx
	sub			$8, 				%rsp
	push		%rbp
	xor			%rbx,				%rbx
_loop:
	movzb		(%rdi, %rbx), 		%rbp
	movb		%bpl, 				(%rsi, %rbx)
	test		%rbp,				%rbp
	je			_end
	inc			%rbx
	jmp			_loop
_end:
	mov			%rsi,				%rax
	pop			%rbp
	add			$8, 				%rsp
	pop			%rbx
	ret
