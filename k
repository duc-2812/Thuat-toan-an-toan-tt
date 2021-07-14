#include<stdio.h>
#include<math.h>

int w,m,c[50],A[50],B[50];
long long p,a,b,t;
int nhap(){
    printf("Nhap p: ");
    scanf("%lld",&p);
    printf("Nhap w: ");
    scanf("%d",&w);
    printf("Nhap a: ");
    scanf("%lld",&a);
    printf("Nhap b: ");
    scanf("%lld",&b);
}
void bieudien(int x,int mang[50])
{   

    m = log(p) / log(2) + 1;
    t = (m / w) + 1;
    int tmp;
    for(int i=t-1;i>=0;i--){
        tmp=pow(2,i*w);
       mang[i]=x / tmp;
        x=x % tmp;
        printf("%d  ", mang[i]);
    }    
}
void tinhHieu(){
    bieudien(a,A);
    bieudien(b,B);
    int e=0;
    int tmp=pow(2,w);
    for(int i=0;i<t;i++){
        c[i]=A[i] - B[i] - e;
        if(c[i]>=0){
            if(c[i]>tmp){
                c[i]=c[i]-tmp;
                e=1;
                printf("\nVoi i=%d thi c= %d va e= %d",t-1-i,c[i],e);
            }
            else{
                e=0;
                printf("\nVoi i=%d thi c= %d va e= %d",t-1-i,c[i],e); 
            }
        }
        else{
            c[i]= c[i] + tmp;
            e=1;
            printf("\nVoi i=%d thi c= %d va e= %d",t-1-i,c[i],e); 
        }

    }
}
int main(){
    nhap();
    
    tinhHieu();
}
