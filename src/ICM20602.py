import adafruit_bus_device.i2c_device as i2c_device

def twos_comp(val, bits):
    """compute the 2's complement of int value val"""
    if (val & (1 << (bits - 1))) != 0: # if sign bit is set e.g., 8bit: 128-255
        val = val - (1 << bits)        # compute negative value
    return val

class ICM20602:

    _BUFFER = bytearray(6)

    def __init__(self, i2c, addr):
        self._sensor = i2c_device.I2CDevice(i2c, addr)
        print("Initializing")
        self._write_u8(0x6B, 0x01) #self._sensor.write(b'\x6B\x01')
        print("Config")
        self._write_u8(0x1A, 0x01) #self._sensor.write(b'\x1A\x01')

    @property
    def gyro(self):
        xhigh = self._read_u8(0x43)
        xlow = self._read_u8(0x44)

        valx = xhigh << 8 | xlow
        valx = twos_comp(valx, 16)
        valx = valx / 131

        yhigh = self._read_u8(0x45)
        ylow = self._read_u8(0x46)

        valy = yhigh << 8 | ylow
        valy = twos_comp(valy, 16)
        valy = valy / 131

        zhigh = self._read_u8(0x47)
        zlow = self._read_u8(0x48)

        valz = zhigh << 8 | zlow
        valz = twos_comp(valz, 16)
        valz = valz / 131

        return (valx, valy, valz)

    @property
    def acceleration(self):
        xhigh = self._read_u8(0x3b)
        xlow = self._read_u8(0x3c)

        yhigh = self._read_u8(0x3d)
        ylow = self._read_u8(0x3e)

        zhigh = self._read_u8(0x3f)
        zlow = self._read_u8(0x40)

        valx = xhigh << 8 | xlow
        valx = twos_comp(valx, 16)
        valx = valx / 16384 * 9.8

        valy = yhigh << 8 | ylow
        valy = twos_comp(valy, 16)
        valy = valy / 16384 * 9.8

        valz = zhigh << 8 | zlow
        valz = twos_comp(valz, 16)
        valz = valz / 16384 * 9.8

        return (valx, valy, valz)


    def _read_u8(self, address):
        with self._sensor as i2c:
            self._BUFFER[0] = address & 0xFF
            i2c.write_then_readinto(
                self._BUFFER, self._BUFFER, out_end=1, in_start=1, in_end=2
            )
        return self._BUFFER[1]

    def _read_bytes(self, address, count, buf):
        with _self.sensor as i2c:
            buf[0] = address & 0xFF
            i2c.write_then_readinto(buf, buf, out_end=1, in_end=count)

    def _write_u8(self, address, val):
        with self._sensor as i2c:
            self._BUFFER[0] = address & 0xFF
            self._BUFFER[1] = val & 0xFF
            i2c.write(self._BUFFER, end=2)