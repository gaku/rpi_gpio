require 'wiringpi'

# WPI_MODE_PINS - WiringPi's own 'sane' pin numbering

GPIO1 = 1
io = WiringPi::GPIO.new
io.mode(GPIO1, OUTPUT)
io.write(GPIO1, 1)
sleep(2)
io.write(GPIO1, 0)

