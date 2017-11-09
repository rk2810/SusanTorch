echo “Adjustable Torch”;
echo “--------------------“;
echo “1. for only white torch“;
echo “2. for only yellow torch”;
echo “3. for only low white torch”;
echo “4. for only low yellow torch”;
echo “5. for both torches low”;
echo “6. to turn off both”;
echo “q. quit”;
echo “Your Choice [1-6] :”
OPTIONS="1 2 3 4 5 6"
    select opt in $OPTIONS; do
           if [ "$opt" = "1" ]; then
           echo 255 > /sys/class/leds/led\:torch_0/brightness;
	   echo 0 > /sys/class/leds/led\:torch_1/brightness;
	   echo 255 > /sys/class/leds/led\:switch/brightness;
           break;
           elif [ "$opt" = "2" ]; then
           echo 0 > /sys/class/leds/led\:torch_0/brightness;
	   echo 255 > /sys/class/leds/led\:torch_1/brightness;
	   echo 255 > /sys/class/leds/led\:switch/brightness;
           break;
           elif [ "$opt" = "3" ]; then
           echo 50 > /sys/class/leds/led\:torch_0/brightness;
	   echo 0 > /sys/class/leds/led\:torch_1/brightness;
	   echo 255 > /sys/class/leds/led\:switch/brightness;
           break;
           elif [ "$opt" = "4" ]; then
           echo 0 > /sys/class/leds/led\:torch_0/brightness;
	   echo 50 > /sys/class/leds/led\:torch_1/brightness;
	   echo 255 > /sys/class/leds/led\:switch/brightness;
           break;
           elif [ "$opt" = "5" ]; then
           echo 50 > /sys/class/leds/led\:torch_0/brightness;
	   echo 50 > /sys/class/leds/led\:torch_1/brightness;
	   echo 255 > /sys/class/leds/led\:switch/brightness;
           break;
           elif [ "$opt" = "6" ]; then
           echo 255 > /sys/class/leds/led\:torch_0/brightness;
	   echo 255 > /sys/class/leds/led\:torch_1/brightness;
	   echo 0 > /sys/class/leds/led\:switch/brightness;
           break;
           else
           echo Exiting
	   exit
           fi
done
