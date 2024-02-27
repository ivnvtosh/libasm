#include "libasm.h"

#include <stdio.h>

int	main()
{
	char	*str;
	int		size;

	str = "12345";
	size = _strlen(str);
	
	printf("size : %d \nstr  : \"%s\"\n", size, str);

	return 0;
}
