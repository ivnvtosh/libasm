#include "libasm.h"

#include <stdio.h>

int	main()
{
	char	*str;

 	str = _strchr("123abc", 'b');

	printf("str : %s\n", str);

	return 0;
}
