#include "libasm.h"

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int	main()
{
	char	*str;
	int		size;

 	str = _strdup("12345");
	size = strlen(str);

	printf("size : %d \nstr  : \"%s\"\n", size, str);
	free(str);

	return 0;
}
