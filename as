#include <stdio.h>
#include <math.h>
int e,m,w,c[50],A[50],B[50];
long long p,a,b,t;
int nhap(){
    printf("\nNhap p: ");
    scanf("%d", &p);
    printf("Nhap w: ");
    scanf("%d", &w);
    printf("\nNhap a: ");
    scanf("%d", &a);
    printf("Nhap b: ");
    scanf("%d", &b);

}
int bieudien(){
    int j=0,h=0;
    int tmp;
    m= log(p)/log(2) +1;
    t=(m/w)+1;
    for(int i=t-1;i>=0;i--){
        tmp= a / pow(2,i*w);
        a = a - (tmp*pow(2,i*w));
        A[j]=tmp;
        j++;
    }
    for(int i=t-1;i>=0;i--){
        tmp= b / pow(2,i*w);
        b= b - (tmp*pow(2,i*w));
        B[h]=tmp;
        h++;
    }
}
void TruChinhXacBoi()
{
    e = 0;
    int tmp = pow(2, w);
    m= log(p)/log(2) +1;
    t=(m/w)+1;
    printf("\nc: ");
    for (int i = t - 1; i >= 0; i--)
    {
        c[i] = A[i] - B[i] - e;
        if (c[i] >= 0)
        {
            if (c[i] > tmp)
            {
                c[i] = c[i] - tmp;
                e = 1;
            }
            else
            {
                e = 0;
            }
        }
        else
        {
            c[i] = c[i] + tmp;
            e = 1;
        }
    }
    
    for (int i = 0; i < t; i++)
    {
        printf("%d  ", c[i]);
    }
    printf("\t voi e=%d", e);
}
void tinh()
{
    long long x = 0;
    int newC, tmp;
    m= log(p)/log(2) +1;
    t=(m/w)+1;
    printf("\nC': ");
    for (int i = 0; i < t; i++)
    {
        x = x + c[i] * pow(2, w * (t - 1 - i));
    }
        printf("%lld\n",x);
    if (e == 1)
    {
        newC = p + x;
        for (int i = t - 1; i >= 0; i--)
        {
            tmp = newC / pow(2, w * i);
            newC = newC - (tmp * pow(2, w * i));
            printf("%d  ", tmp);
        }
    }
    else
    {
        for (int i = 0; i < t; i++)
        {
            printf("%d  ", c[i]);
        }
    }
}
int main(){
    nhap();
    bieudien();
    TruChinhXacBoi();
    tinh();
    
}
