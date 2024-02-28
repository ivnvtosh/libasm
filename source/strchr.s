	.text
	.global		_strchr
	.type 		_strchr, 			@function
_strchr:
	push		%rbx
	mov 		%rdi,				%rbx
	mov			$0,					%rax
_loop:
	movzb		(%rbx, 1),			%rax
	cmp			%rsi,				%rax
	je			_find
	cmp			$0,					%rbx
	je			_end
	add			$1,					%rbx
	jmp			_loop
_find:
	mov			%rbx,				%rax
_end:
	pop			%rbx
	ret
