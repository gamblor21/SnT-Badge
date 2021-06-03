# As Seen on Show & Tell Badge

This is a PCB badge based on the Adafruit sticker that (pre-covid) would be sent to community members who appeared on their Show and Tell show.

The badge is in the shape and style of the original sticker and made in the FeatherWing format with duel header rows (though single could likely fit).

The front has 6 Neopixels (connected to D5) and a light sensor (hooked to A0). The back has an IMU the ICM-20602 (ICM-20608-G can be used as a drop-in replacement). The IMU is hooked up via I2C.

The source folder has sample code and a basic CircuitPython driver for the ICM-20602 but is far from a full implementation.

![FrontPCB](/front.jpg)

![OSHW_FACTS](/oshw_facts.png)
