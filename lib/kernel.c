#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#include "./modules/terminal/terminal.h"

void kernel_main(void)
{
    terminal_initialize();
    terminal_writestring("Hello World!\n");
}
