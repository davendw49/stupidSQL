#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main()
{
	char *st = "mv a.c b.c";
	char str[100];
	strcpy(str, st);
	char *p;
	p = strtok(str, " ");
	while(p)
	{
		printf("%s\n", p);
		p = strtok(NULL, " ");
	}
	printf("%d\n", atoi("123"));
	return 0;
}