	.text
	.global		_strlen
	.type		_strlen,			@function
_strlen:
	push		%rbp
	xor			%rax,				%rax
_loop:
	movzb		(%rdi, %rax),		%rbp
	test		%rbp,				%rbp
	je			_end
	inc			%rax
	jmp			_loop
_end:
	pop			%rbp
	ret
