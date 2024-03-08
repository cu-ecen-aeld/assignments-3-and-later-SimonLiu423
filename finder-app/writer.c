#include <stdio.h>
#include <syslog.h>
#include <stddef.h>

int main(int argc, char* argv[]){
    openlog(NULL, 0, LOG_USER);

    if (argc < 3){
        syslog(LOG_ERR, "Expected two arguments passed");
        return 1;
    }

    FILE* file = fopen(argv[1], "w");
    if (file == NULL){
        syslog(LOG_ERR, "Failed to open file");
        return 1;
    }


    syslog(LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
    fputs(argv[2], file);
    fclose(file);

    closelog();
}