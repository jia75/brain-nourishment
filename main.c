#include <stdio.h>
#include <stdlib.h>

uint8_t *mem;

void compile(FILE *f, int size) {
    FILE *out = fopen("out.c", "w");
    fprintf(out, "#include <stdio.h>\n#include <stdlib.h>\n");
    fprintf(out, "int main(){uint8_t*m=malloc(%d*sizeof(uint8_t));m[0]=0;uint8\
_t*t=malloc(%d*sizeof(uint8_t));", size, size);
    fprintf(out, "int i=0;");
    char c;
    while ((c = getc(f)) != EOF) {
        switch (c) {
            case '.':
                fprintf(out, "fputc((char)m[i],stdout);");
                break;
            case ',':
                fprintf(out, "m[i]=(uint8_t)getc(stdin);");
                break;
            case '>':
                fprintf(out, "++i;if(t[i]!=100){m[i]=0;t[i]=100;}");
                break;
            case '<':
                fprintf(out, "--i;");
                break;
            case '+':
                fprintf(out, "++m[i];");
                break;
            case '-':
                fprintf(out, "--m[i];");
                break;
            case '[':
                fprintf(out, "while(m[i]){");
                break;
            case ']':
                fprintf(out, "}");
                break;
        }
    }
    fprintf(out, "free(m);free(t);return 0;}\n");
    fclose(out);
}

int main(int argc, char **argv) {
    if (argc == 1) {
        fprintf(stderr, "Not enough argument\n");
        return 1;
    }
    FILE *f = fopen(argv[1], "r");
    if (argc == 2) {
        compile(f, 2048);
        fclose(f);
        return 0;
    }
    int size = 2048;
    sscanf(argv[2], "%d", &size);
    compile(f, size);
}