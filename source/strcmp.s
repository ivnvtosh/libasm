	.text
	.global		_strcmp
	.type		_strcmp,			@function
_strcmp:
	push		%rbx
	sub			$8, 				%rsp
	push		%rbp
	mov			$0,					%rax
_loop:
	movzb		(%rdi, %rax), 		%rbx
	movzb		(%rsi, %rax), 		%rbp
	cmp			%rbx,				%rbp
	jne			_end
	cmp			$0,					%rbp
	je			_end
	add			$1,					%rax
	jmp			_loop
_end:
	mov			%rbx,				%rax
	sub			%rbp,				%rax
	pop			%rbp
	add			$8, 				%rsp
	pop			%rbx
	ret
