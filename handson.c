#include <stdio.h>

int main() {
    int a;
    long long faktorial = 1;

    printf("Masukkan angka: ");
    scanf("%d", &a);

    if (a < 0) {
        printf("Faktorial tidak bisa untuk bilangan negatif");
    } else if (a == 0) {
        printf("Hasil faktorial dari 0 adalah 1");
    } else {
        for (int i = 1; i <= a; i++) {
            faktorial *= i;
        }
        printf("Hasil faktorial dari %d adalah %lld", a, faktorial);
    }

    return 0;
}
