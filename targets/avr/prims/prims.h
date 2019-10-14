/* C-interface between:                             */
/*   -> prims/bindings.c                            */
/*   -> simul/sf-regs.c | avr/avrlib.c              */

#include <stdint.h>
#include <stdbool.h>

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

#ifndef PRIMS_H_AVR
#define PRIMS_H_AVR

int avr_random(int max);
void avr_adc_init();
uint16_t avr_analog_read(uint8_t);

/******************************************************************************/

void avr_serial_init();
void avr_serial_write(char val);
char avr_serial_read();

#endif

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

void microbit_print_string(char *str);
void microbit_print_int(int i);
void microbit_write_pixel(int x, int y, int l);
void microbit_print_image(char *str);
void microbit_clear_screen();
int microbit_button_is_pressed(int b);
void microbit_pin_mode(int p, int m);
void microbit_digital_write(int p, int l);
int microbit_digital_read(int p);
void microbit_analog_write(int p, int l);
int microbit_analog_read(int p);
void microbit_delay(int ms);
int microbit_millis();
void microbit_serial_write_char(char c);
char microbit_serial_read_char();
int microbit_accelerometer_x();
int microbit_accelerometer_y();
int microbit_accelerometer_z();
int microbit_accelerometer_pitch();
int microbit_accelerometer_roll();
void microbit_compass_calibrate();
int microbit_compass_heading();
void microbit_radio_init();
void microbit_radio_send(char *s);
const char *microbit_radio_recv();
void microbit_i2c_init();
void microbit_i2c_write(int a, const char *buf, int n);
int microbit_i2c_read(int a, char *buf);
void microbit_spi_init();
char microbit_spi_transmit(char c);

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/