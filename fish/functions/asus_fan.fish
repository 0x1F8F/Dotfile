#function __point_to_temp
#	return "$argv[0]/pwm2_auto_point$argv[1]_temp"
#end
#
#function __set_fan_speed_
#	set temp $(sudo cat $argv[0])
#	set speed $argv[1]
#	sudo bash -e "
#	echo hello
#	"
#	printf "Temp : $(temp) Speed : $(math $speed/250*100)"
#end

function asus_fan
	if ! test $argv[1]
		return 1
	end

	for i in (ls "/sys/devices/platform/asus-nb-wmi/hwmon")
		set i "/sys/devices/platform/asus-nb-wmi/hwmon/"$i
		if test -e $i"/pwm1_auto_point1_temp"
			break
		end
	end

	set fan $argv[1]
	set point $argv[2]

	if test $argv[3]
		set speed $argv[3]
		set temp $(cat "$i/pwm$fan""_auto_point$point""_temp")
		set p_speed $(cat "$i/pwm$fan""_auto_point$point""_pwm")
		printf "point $point => temperature: $temp speed: $p_speed >> $speed\n"
		sudo bash -c "echo $speed > $i/pwm$fan""_auto_point$point""_pwm"
	else
		set temp $(cat "$i/pwm$fan""_auto_point$point""_temp")
		set p_speed $(cat "$i/pwm$fan""_auto_point$point""_pwm")
		printf "point $point => temperature: $temp C speed: $p_speed\n"
	end
end
