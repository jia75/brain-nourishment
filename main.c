#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int devmode = 0;

void compile(FILE *f, int size) {
    FILE *out = fopen("out.c", "w");
    fprintf(out, "#include <stdio.h>\n#include <stdlib.h>\n#include <memory.h>\
\n");
    fprintf(out, "int main(){uint8_t*m=malloc(%d*sizeof(uint8_t));m[0]=0;memse\
t(m,0,sizeof(uint8_t)*%d);", size, size);
    fprintf(out, "int i=0;");
    char c;
    char lastC = '\0';
    int consecutive = 0;
    while ((c = getc(f)) != EOF) {
        if (lastC != c) {
            if (lastC == '+' || lastC == '-') {
                fprintf(out, "m[i]%c=%d;", lastC, consecutive);
            }
            consecutive = 0;
        }
        lastC = c;
        ++consecutive;
        switch (c) {
            case '.':
                fprintf(out, "fputc((char)m[i],stdout);");
                break;
            case ',':
                fprintf(out, "m[i]=(uint8_t)getc(stdin);");
                break;
            case '>':
                fprintf(out, "++i;");
                break;
            case '<':
                fprintf(out, "--i;");
                break;
            case '[':
                fprintf(out, "while(m[i]){");
                break;
            case ']':
                fprintf(out, "}");
                break;
            case '^':
                if (devmode) fprintf(out, "fprintf(stdout,\"%%d \",m[i]);");
                break;
        }
    }
    fprintf(out, "free(m);return 0;}\n");
    fclose(out);
}

int main(int argc, char **argv) {
    if (argc == 1) {
        fprintf(stderr, "Not enough arguments\n");
        return 1;
    }
    int i = 1;
    if (!strcmp(argv[i], "-d")) {
        devmode = 1;
        --argc;
        ++i;
    }
    FILE *f = fopen(argv[i], "r");
    ++i;
    if (argc == 2) {
        compile(f, 2048);
        fclose(f);
        return 0;
    }
    int size = 2048;
    sscanf(argv[i], "%d", &size);
    compile(f, size);
}