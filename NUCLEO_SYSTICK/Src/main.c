/**
 * Projekt Kap09-SysTick-04
 * ========================
 *
 * Das Beispiel unterscheidet sich von Kap09-Systick-03 darin, dass hier die
 * Funktion systickUpdateTimerList() (bzw. in der Bare-Metal-Version
 * SYSTICKUpdateTimerList()) eingefuehrt wird.
 */


#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>         // Erforderlich wegen size_t

/**
 * Kommentar in Zeile 19 entfernen, wenn Sie die MCAL testen möchten.
 */

#include <mcalSysTick.h>
#include <mcalGPIO.h>


// Das Toggeln dieses Flags ersetzt die Korrektur von Timer-Variablen!
bool     timerTrigger = false;



#define DELAY_red      (900)
#define DELAY_green    (500)
#define DELAY_blue     (700)


#define 	LED_GPIO		GPIOB
#define 	LED_red			PIN3
#define		LED_green		PIN4
#define		LED_blue		PIN10
#define 	Bit_red			(unsigned int) 1
#define		Bit_blue		(unsigned int) 2
#define		Bit_green		(unsigned int) 4



int main(void)
{
    uint32_t Timer1 = 0UL;
    uint32_t Timer2 = 0UL;
    uint32_t Timer3 = 0UL;

    // Dies ist das Array, das die Adressen aller Timer-Variablen enthaelt.
    // Auch die Groesse des Arrays wird berechnet.
    uint32_t *timerList[] = { &Timer1, &Timer2, &Timer3 /*, weitere Timer */ };
    size_t    arraySize = sizeof(timerList)/sizeof(timerList[0]);



    // Konfiguration des SysTick-Timers

    systickInit(SYSTICK_1MS);

    // Konfiguration von GPIOA, Pin0 und Pin1
    gpioSelectPort(LED_GPIO);
    gpioSelectPinMode(LED_GPIO, LED_red, OUTPUT);
    gpioSetOutputType(LED_GPIO, LED_red	, PUSHPULL);
    gpioSelectPushPullMode(LED_GPIO, LED_red, PULLUP);

    gpioSelectPinMode(LED_GPIO, LED_green, OUTPUT);
    gpioSetOutputType(LED_GPIO, LED_green, PUSHPULL);
    gpioSelectPushPullMode(LED_GPIO, LED_green, PULLUP);

    gpioSelectPinMode(LED_GPIO, LED_blue, OUTPUT);
      gpioSetOutputType(LED_GPIO, LED_blue, PUSHPULL);
      gpioSelectPushPullMode(LED_GPIO, LED_blue, PULLUP);

    while (1)
    {

        if (true == timerTrigger)
        {
            systickUpdateTimerList((uint32_t *) timerList, arraySize);
        }

        if (isSystickExpired(Timer1))
        {
            gpioTogglePin(LED_GPIO, LED_red);
            systickSetTicktime(&Timer1, DELAY_red);
        }

        if (isSystickExpired(Timer2))
        {
            gpioTogglePin(LED_GPIO, LED_green);
            systickSetTicktime(&Timer2, DELAY_green);
        }
        if (isSystickExpired(Timer3))
        {
            gpioTogglePin(LED_GPIO, LED_blue);
            systickSetTicktime(&Timer3, DELAY_blue);
        }

    }
}


