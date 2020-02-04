#include <stdio.h>

//int		ft_strlen(char *s);
char	*ft_strcpy(char *dst, const char *src);

int main(int argc, char *argv[])
{
	char	dst[20];
	char	*src = argv[1];

	dst[19] = '\0';
/*
	printf("before argv1 = %s\n", argv[1]);
	printf("%d\n", ft_strlen(argv[1]));
	printf("after argv1 = %s\n", argv[1]);
*/
	printf("before dest = %s, src = %s\n", dst, src);
	ft_strcpy(dst, (const char *)src);
	printf("before dest = %s, src = %s\n", dst, src);
	return 0;
}
