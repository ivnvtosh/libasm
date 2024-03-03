	.text
	.global		_strlen
	.type		_strlen,			@function
_strlen:
	push		%rbp
	mov			$0,					%rax
	jmp			_loop
_loop:
	movzb		(%rdi, %rax),		%rbp
	test		%rbp,				%rbp
	je			_end
	add			$1,					%rax
	jmp			_loop
_end:
	pop			%rbp
	ret
