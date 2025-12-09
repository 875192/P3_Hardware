#include "start_screen.h"

#include <string.h>

/* Assumed LCD helper function signature:
 *   void Lcd_Clr(void);                 // Clears the framebuffer
 *   void Lcd_DspAscII8x16(INT16U x0, INT16U y0, INT8U ForeColor, INT8U *s);
 *   void Lcd_Dma_Trans(void);           // Copies framebuffer to physical LCD
 * If your display driver uses different names, replace the calls below accordingly.
 */

/* Helper to draw horizontally centered ASCII text on the current LCD buffer. */
static void draw_centered_text(INT16U y, const char *text)
{
    size_t len = strlen(text);
    INT16U char_width = 8; /* Each character in the 8x16 font is 8 pixels wide. */
    INT16U x = 0;

    if (len * char_width < LCD_XSIZE)
    {
        x = (LCD_XSIZE - (INT16U)(len * char_width)) / 2;
    }

    Lcd_DspAscII8x16(x, y, BLACK, (INT8U *)text);
}

/*
 * Displays the initial instruction screen and waits until any hardware button
 * is pressed. Once a button press is detected, the function returns so the
 * caller can start the game logic.
 */
void show_start_screen_and_wait_button(void)
{
    /* Clear framebuffer before drawing. */
    Lcd_Clr();

    /* Title and instructions. */
    draw_centered_text(20, "SUDOKU");
    draw_centered_text(60, "Use los botones para introducir");
    draw_centered_text(80, "fila, columna y valor");
    draw_centered_text(100, "Siga las reglas del Sudoku");

    /* Required legend prompting the player to begin. */
    draw_centered_text(140, "Pulse un boton para jugar");

    /* Push the framebuffer to the LCD. */
    Lcd_Dma_Trans();

    /* Block here until any button is detected. Replace buttons_read() with
     * your board's input-reading API if needed. */
    while (1)
    {
        if (buttons_read() != 0U)
        {
            break;
        }
    }
}

/* Minimal usage example. Replace hardware_init(), Lcd_Init(), buttons_read(),
 * and start_game() with your platform-specific functions. Including a full
 * example here avoids touching the existing project main entry point.
 */
#if 0
int main(void)
{
    hardware_init();
    Lcd_Init();

    show_start_screen_and_wait_button();

    /* After a button is pressed, start the actual game logic. */
    start_game();

    while (1) {}
}
#endif
