void microbit_init();
void delay(int ms);

void microbit_print_image(char *s);
void microbit_write_pixel(int x, int y, int l);
void microbit_clear_screen();
void microbit_print_string(char *str);
void microbit_serial_write_string(const char* str);
int microbit_serial_read_string(char*, int);
