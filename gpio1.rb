require 'wiringpi'

GPIO1 = 1 # GPIO 1 pin (Pin 12 on P1 header)

# Open GPIO interface.
# By default, it uses WPI_MODE_PINS - WiringPi's own 'sane' pin numbering
# For pin mapping, see: https://projects.drogon.net/raspberry-pi/wiringpi/pins/
io = WiringPi::GPIO.new
io.mode(GPIO1, OUTPUT)  # without this line, following write statements didnt' turn the signal on.
io.write(GPIO1, 1)
sleep(2)
io.write(GPIO1, 0)

