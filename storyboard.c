#include <stdio.h>
#include <string.h>


/* "No
<1. Eat 2. Neat 3. Feat>
{1. Eat? Little ol' me?}
{2. You gotta be a lil more specific than that pal
<1. Clean 2. Dream>
{1. In that case, kys!}
{2. Oh. I didn't know you were one of THOSE people.}}
{3. Well... I cannot say no to a FEAT!}
" */

int main() {
    fprintf(stdout, "++++++++++>+++++++++++++++++++++++++++++++++++++++++++++[>[-]");
    char c;
    char last = 0;
    while ((c = getc(stdin))!=EOF) {
        // if (c=='\n') continue;
        if (c=='<') {
            fprintf(stdout, "[-]");
            last = 0;
            while ((c=getc(stdin))!='>') {
                for (int i = 0; i < last-c; ++i) fputc('-', stdout);
                for (int i = 0; i < c-last; ++i) fputc('+', stdout);
                fputc('.', stdout);
                last = c;
            }
            last = 0;
            fprintf(stdout, ",>,[-]<-------------------------------------------------");
            continue;
        }
        if (c=='{') {
            fprintf(stdout, "[->+>+<<]>>[-<<+>>]+<");
            char optcnt = getc(stdin);
            getc(stdin);getc(stdin);
            for (int i = 1; i < optcnt-'0'; ++i) fputc('-', stdout);
            fprintf(stdout, "[>-<[-]]>[[-]");
            last = 0;
            continue;
        }
        if (c=='}') {
            fprintf(stdout, "[-]]<<");
            last=0;
            continue;
        }
        for (int i = 0; i < last-c; ++i) fputc('-', stdout);
        for (int i = 0; i < c-last; ++i) fputc('+', stdout);
        fputc('.', stdout);
        last = c;
    }
    fprintf(stdout, "<...<.>]");
}