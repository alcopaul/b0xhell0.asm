#include <windows.h>
int main() {MessageBox(NULL, "What's Up?", "Hey!", MB_OK); return 0;}

// cl /I.\ msgbox.c /GA /Zi /Famsgbox.asm /Fdmsgbox.pdb /link user32.lib