#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>
int main(){

    pid_t q; //Process ID datatype
    q=fork();
    if(q<0) printf("Error\n");
    else if(q==0){ //Child Process
        printf("Child Process:Child having ID %d:\n",getpid());
        printf("Child Process:Parent having ID %d:\n",getppid());
    }else if(q>0){ //Parent Process
        wait(NULL);
        printf("Parent Process:Parent having ID %d:\n",getpid());
        printf("Parent Process:Child having ID %d:\n",q);
    }
    printf("Hello\n");
    return 0;
}