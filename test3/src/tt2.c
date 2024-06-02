#include <stdlib.h>
#include <stdio.h>
#include "tt2.h"
#include "zmq.h"

int simple(int a,int b){
    return a+b;
}

int main(){
    printf("HELLO\n");
    printf("%d\n",simple(1,2));
    printf("%d\n",mul(1,2));
    printf("%d\n",sub(1,2));
    return 1;
}