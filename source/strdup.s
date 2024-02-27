	.text
	.global		_strdup
	.type		_strdup,			@function
_strdup:
	push		%rbp
	sub			$8,					%rsp
	push		%rdi
	call		_strlen
	add			$1,					%rax
	mov			%rax,				%rdi
	mov			$0,					%rax
	call		malloc
	pop			%rdi
	add			$8,					%rsp
	mov			%rax,				%rsi
	mov			$0,					%rax
	call		_strcpy
	pop			%rbp
	ret
