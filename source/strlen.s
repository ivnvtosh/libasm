	.text
	.global		_strlen
	.type		_strlen,			@function
_strlen:
	push		%rbp
	mov			$0,					%rax
_loop:
	movzb		(%rdi, %rax),		%rbp
	test		%rbp,				%rbp
	je			_end
	inc			%rax
	jmp			_loop
_end:
	pop			%rbp
	ret
