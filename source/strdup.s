	.text
	.global		_strdup
	.type		_strdup,			@function
_strdup:
	push		%rbp
	sub			$8,					%rsp
	push		%rdi
	call		_strlen
	inc			%rax
	mov			%rax,				%rdi
	xor			%rax,				%rax
	call		malloc
	pop			%rdi
	add			$8,					%rsp
	mov			%rax,				%rsi
	xor			%rax,				%rax
	call		_strcpy
	pop			%rbp
	ret
