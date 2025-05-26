#include<stdio.h>
#include<unistd.h>

int main(){
    fork();
    fork();
    fork();
    //Returns the current process ID
    printf("Process ID of currently running process is %d:\n",getpid());
    return 0;
}