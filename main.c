#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
//size_t		ft_strlen(char *s);
//char	*ft_strcpy(char *dst, const char *src);
ssize_t		ft_write(int fd, char *msg, int len);

int main(int argc, char *argv[])
{
	char	*dst;
	char	*src = argv[1];
	char	*dst2;
	char	*src2 = argv[1];
	int		fd = open("test.txt", O_RDWR);
	int		fd2 = open("test2.txt", O_RDWR);

	if (!(dst = malloc(sizeof(char) * 20)))
		return (-1);
	if (!(dst2 = malloc(sizeof(char) * 20)))
		return (-1);
	dst = argv[2];
	dst2 = argv[2];

//	dst[19] = '\0';
//	dst2[19] = '\0';
/*
	printf("before argv1 = %s\n", argv[1]);
	printf("%zu\n", ft_strlen(argv[1]));
	printf("%zu\n", strlen(argv[1]));
	printf("after argv1 = %s\n", argv[1]);
*/
/*	printf("before dest = %s, src = %s\n", dst, src);
	ft_strcpy(dst, (const char *)src);
	printf("my dest = %s, src = %s\n", dst, src);
	strcpy(dst2, (const char *)src2);
	printf("true dest = %s, src = %s\n", dst, src);
*/
	printf("fd = 45 good ret = %zd\n", write(-45, "Salut\n", 0));
	printf("fd = 45 My ret = %zd\n", ft_write(-45, "Salut\n", 0));

	printf("fd = -12 good ret = %zd\n", write(0, "Salut\n", -6));
	printf("fd = -12 My ret = %zd\n", ft_write(0, "Salut\n", -6));

	printf("fd = 1 good ret = %zd\n", write(2, "Salut les amis\n", 20));
	printf("fd = 1 My ret = %zd\n", ft_write(2, "Salut les amis\n", 20));
	return 0;
}
