int d[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30};

int foo() {
	int a = 0, b = 0, c = 0;
	for(int i = 0; i < 10; ++i) {
		a += d[(i*i + 40*i + 41)%30];
		b = d[(i*i + 5*i + 4)%30];
		c = d[(2*i*i + i + 3)%30];
	}
	
	return a + b + c;
}

int main() {
	int a = foo();
	return 0;
}