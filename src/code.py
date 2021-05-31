import time
import board
import analogio
import neopixel
import supervisor
import math
from ICM20602 import ICM20602
from adafruit_led_animation.animation.rainbowcomet import RainbowComet

supervisor.set_rgb_status_brightness(0)
ADDRESS = 0x68

i2c = board.I2C()

pixels = neopixel.NeoPixel(board.D5, 6, brightness = 0.1, auto_write = False)
pixels.fill((0, 0, 0))
pixels.show()

rainbow_comet = RainbowComet(pixels, speed=0.1, tail_length=6, bounce = False)

imu = ICM20602(i2c, 0x68)
light = analogio.AnalogIn(board.A0)

pos = 0
nextPrint = time.monotonic()+0.3

while True:
    acc = imu.acceleration

    if time.monotonic() > nextPrint:
        print(imu.gyro)
        print(acc)
        print(light.value)
        nextPrint += 0.3

    if acc[2] < -4.1: #-8.3:
        if light.value > 3000:
            pixels[0] = (150,0,0)
            pixels[1] = (150,150,0)
            pixels[2] = (0,150,0)
            pixels[3] = (0,150,150)
            pixels[4] = (0,0,150)
            pixels[5] = (150,0,150)
            pixels.show()
            pass
        else:
            rainbow_comet.animate()

    elif abs(acc[0]) > 3.0:
        pixels.fill((0,0,0))
        x = acc[0]
        if x < -3.5:
            pixels[0] = (0,0,50)
        if x < -5.5:
            pixels[1] = (0,50,0)
        if x < -7.7:
            pixels[2] = (50,0,0)
        if x > 3.5:
            pixels[5] = (0,0,50)
        if x > 5.5:
            pixels[4] = (0,50,0)
        if x > 7.7:
            pixels[3] = (50,0,0)

        pixels.show()
    else:
        pixels.fill((0,0,0))
        pixels.show()

