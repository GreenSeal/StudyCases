#include <stddef.h>

int foo(int arr[17]) {

	int a = arr[1];
	a = a + arr[5];
	a = a + arr[10];
	a = a + arr[4];

	int b = arr[3];
	b += arr[13];
	b *= arr[7];
	b += arr[2];

	int  c = arr[6];
	c -= arr[14];
	c += arr[8];
	c *= arr[11];

	return a - b*c;

}

int main() {
	int arr[] = {4, 15, 14, 75, 2, 11, 13, 1, 6, 3, 5, 53, 67, 22, 79, 7, 33} ;
	int a = foo(arr);
}