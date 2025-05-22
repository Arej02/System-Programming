#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include<unistd.h>


void*print(){
    printf("Hello\n"); 
    sleep(5);
    printf("Bye\n");
}

int main(){
    pthread_t t1,t2;
    pthread_create(&t1,NULL,&print,NULL);
    pthread_create(&t2,NULL,&print,NULL);

    pthread_join(t1,NULL);
    pthread_join(t2,NULL);

    return 0;
}