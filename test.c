#include <stdio.h>
#include <stdlib.h>

void move(int n, char x, char y, char z)
{
	if(n == 1)
		printf("%c->%c\n", x, z);
	else
	{
		move(n - 1,x, z, y);
		printf ("%c->%c\n", x, z);
		move(n-1, y, x, z);
	}

	return;
}

int main(void)
{
	int n;

	printf ("请输入汉诺塔的数量:");
	scanf("%d", &n);
	printf ("移动的步骤如下：\n");
	move(n, 'X', 'Y', 'Z');
	return 0;
}
