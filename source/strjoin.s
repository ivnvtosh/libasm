	.text
	.global		_strjoin
	.type		_strjoin,			@function
_strjoin:
	push		%rbp
	sub			$8,					%rsp
	push		%rbx
	sub			$8,					%rsp
	push		%r12
	sub			$8,					%rsp
	push		%r11
	mov			%rdi,				%rbp
	mov			%rsi,				%rbx
	mov			$0,					%rax
	call		_strlen
	mov			%rax,				%r12
	mov			%rbx,				%rdi
	mov			$0,					%rax
	call		_strlen
	mov			%rax,				%rdi
	add			%r12,				%rdi
	add			$1,					%rdi
	mov			$0,					%rax
	call		malloc
	mov			%rax,				%r11
	cmp			$0,					%rax
	je			_end
	mov			%rbp,				%rdi
	mov			%r11,				%rsi
	mov			$0,					%rax
	call		_strcpy
	mov			%rbx,				%rdi
	mov			%r11,				%rsi
	add			%r12,				%rsi
	mov			$0,					%rax
	call		_strcpy
	mov			%r11,				%rax
_end:
	pop			%r11
	add			$8,					%rsp
	pop			%r12
	add			$8,					%rsp
	pop			%rbx
	add			$8,					%rsp
	pop			%rbp
	ret
