	.text
	.global		_strcmp
	.type		_strcmp,			@function
_strcmp:
	push		%rbx
	sub			$8, 				%rsp
	push		%rbp
	xor			%rax,				%rax
_loop:
	movzb		(%rdi, %rax), 		%rbx
	movzb		(%rsi, %rax), 		%rbp
	cmp			%rbx,				%rbp
	jne			_end
	test		%rbp,				%rbp
	je			_end
	inc			%rax
	jmp			_loop
_end:
	mov			%rbx,				%rax
	sub			%rbp,				%rax
	pop			%rbp
	add			$8, 				%rsp
	pop			%rbx
	ret
