#include<stdio.h>
#include<math.h>

int t,m,w,tmp;
long long p,a;

void nhap(){
    printf("Nhap W: ");
    scanf("%d",&w);
    printf("Nhap p: ");
    scanf("%lld",&p);
    printf("Nhap a: ");
    scanf("%lld",&a);
}

void bieuDienA()
{   
    int mang[50];
    m = log(p) / log(2) + 1;
    t = (m / w) + 1;
    int tmp;
    for(int i=t-1;i>=0;i--){
        tmp=pow(2,i*w);
       mang[i]=a / tmp;
        a=a % tmp;
        printf("%d  ", mang[i]);
    }    
}
int main()
{
    nhap();
    bieuDienA();
}  
