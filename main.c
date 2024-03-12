#include <stdio.h>
#include <stdlib.h>
#include "libasm.h"
int main(void)
{
    char *str = "asdf";
    printf("%d\n", ft_strlen("asdf"));
    char *dst = malloc(sizeof(char) * (ft_strlen(str) + 1));
    ft_strcpy(dst, str);
    printf("%s\n", dst);
    free(dst);
    char a[] = "qwer";
    ft_write(1, a, 10);
    printf("%s\n", a);
    return 0;
}