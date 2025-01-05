function private_mode
	if test $fish_private_mode
		echo Exiting incognito
		set fish_private_mode
	else
		echo Current shells are now incognito
		set --universal fish_private_mode 1
	end
end
