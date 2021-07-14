#include <stdio.h>
#include <math.h>

int m, w, tmp;
int arrA[50], arrB[50], c[50];
long long p, a, b, t;

void nhap()
{
    printf("Nhap W: ");
    scanf("%d", &w);
    printf("Nhap p: ");
    scanf("%lld", &p);
    printf("Nhap a: ");
    scanf("%lld", &a);
    printf("Nhap b: ");
    scanf("%lld", &b);
}
void tinh(int x, int mang[50])
{
    int tmp;
    m = log(p) / log(2) + 1;
    t = (m / w) + 1;
    for (int i = 0; i <t; i++)
    {
        tmp = pow(2, (t-1-i) * w);
        mang[i] = x / tmp;
        x = x % tmp;
        printf("%d ", mang[i]);
    }
}

void tinhTong()
{
    tinh(a, arrA);
    tinh(b, arrB);
    int e = 0, i; // epsilo
    int tmp = pow(2, w);

    for (i = t - 1; i >= 0; i--)
    {

        c[i] = arrA[i] + arrB[i] + e;
        if (c[i] > tmp)
        {
            c[i] = c[i] - tmp;
            e = 1;
            printf("\n Voi i= %d thi c=%d, e=%d", (t - 1) - i, c[i], e);
        }
        else
        {
            e = 0;
            printf("\n Voi i= %d thi c= %d, e=%d", (t - 1) - i, c[i], e);
        }
    }
}
int main()
{
    nhap();
    // bieuDien();
    tinhTong();
}
