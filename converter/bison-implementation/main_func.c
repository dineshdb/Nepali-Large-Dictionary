#include "config_reader.tab.h"
#include <math.h>
#include <stdio.h>

int
main()
{
  FILE* f = fopen("main_func.c", 'r');
  yyin = f;
  yyparse();
  return 0;
}
