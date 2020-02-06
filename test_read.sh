rm -rf res diff
mkdir res
mkdir diff
nasm -f macho64 ft_read.s
gcc ft_read.o main_read.c ft_putnbr_fd.c ft_putchar_fd.c
./a.out
chmod 755 res/*.txt
cat res/ft_* > ft_final_res.txt
cat res/*good* > final_res.txt
diff final_res.txt ft_final_res.txt > diff/diff.txt
cat diff.txt
