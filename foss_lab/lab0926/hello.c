#include <stdio.h>

int main()
{
	int a;
	fscanf(stdin,"%d",&a);
	fprintf(stdout,"stdout : Hello 201820715 %d\n", a);
	fprintf(stderr,"stderr : Hello 201820715 %d\n", a);
	return 0;
}

