const int d[] = {1, 2, 3, 4, 5, 6, 7}; 

int foo(int a) {
  a = a + d[3];
  return a * 2;
}

int bar(int a, int b) {
  a = a + d[0];
  b = b + d[4];
  return (a + foo(b) * 2);
}

int fez(int a, int b, int c) {
  a = a + d[5];
  b = b + d[6];
  c = c + d[1];
  return (a + bar(a, b) * 2 + c * 3);
}

int main(int argc, char *argv[]) {
  
  int a = 123;
  int ret = 0;

  ret += foo(a);
  ret += bar(a, ret);
  ret += fez(a, ret, 123);

  return ret;
}