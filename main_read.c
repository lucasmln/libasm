#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
//size_t		ft_strlen(char *s);
//char	*ft_strcpy(char *dst, const char *src);
//ssize_t		ft_write(int fd, char *msg, int len);
//int			ft_strcmp(const char *s1, const char *s2);
ssize_t			ft_read(int fd, void *buf, size_t nbyte);


void	ft_putnbr_fd(int n, int fd);

int main(int argc, char *argv[])
{
	char		buf[2049];
	char		name_fd2[25] = "res/ft_buf0000_my_fd.txt";
	char		name_fd[24] = "res/buf0000_good_fd.txt";
	int			true_fd = open(name_fd, O_CREAT | O_RDWR);
	int			my_fd = open(name_fd2, O_CREAT | O_RDWR);
	int			fd = open("./ft_read.s", O_RDONLY);
	ssize_t		ret;
	int			buf_size = 0;
	
	while (buf_size <= 1)
	{
		ret = 1;
		while (ret > 0)
		{
			ret = read(fd, buf, buf_size);
			write(true_fd, "\nret = ", 7);
			ft_putnbr_fd(ret, true_fd);
			write(true_fd, "\n", 1);
			buf[buf_size] = '\0';
			write(true_fd, &buf, buf_size);
		}
		close(fd);
		fd = open("./ft_read.s", O_RDWR);
		ret = 1;
		while (ret > 0)
		{
			ret = ft_read(fd, buf, buf_size);
			write(my_fd, "\nret = ", 7);
			ft_putnbr_fd(ret, my_fd);
			write(my_fd, "\n", 1);
			buf[buf_size] = '\0';
			write(my_fd, &buf, buf_size);
		}
		close(fd);
		if (buf_size < 128)
			buf_size++;
		else
			buf_size *= 2;
		name_fd2[10] = buf_size % 1000 + '0';
		name_fd[7] = buf_size % 1000 + '0';
		name_fd2[11] = buf_size % 100 + '0';
		name_fd[8] = buf_size % 100 + '0';
		name_fd2[12] = buf_size % 10 + '0';
		name_fd[9] = buf_size % 10 + '0';
		close(true_fd);
		close(my_fd);
		true_fd = open(name_fd, O_CREAT | O_RDWR);
		my_fd = open(name_fd2, O_CREAT | O_RDWR);
	}
	return 0;
}
