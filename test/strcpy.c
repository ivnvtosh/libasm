#include "libasm.h"

#include <stdio.h>
#include <string.h>

int	main()
{
	char	str[6];
	int		size;

 	_strcpy("12345", str);
	size = strlen(str);

	printf("size : %d \nstr  : \"%s\"\n", size, str);

	return 0;
}
