#ifndef START_SCREEN_H
#define START_SCREEN_H

#include <stddef.h>
#include "lcd.h"

/* Placeholder prototype for the board's button-reading routine.
 * Replace this declaration with your platform's button driver API if it differs.
 */
unsigned int buttons_read(void);

/* Draws the initial instruction screen and blocks until any button is pressed. */
void show_start_screen_and_wait_button(void);

#endif /* START_SCREEN_H */
