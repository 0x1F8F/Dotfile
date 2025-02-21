function private_mode
	if test "$fish_private_mode"
		set -e fish_private_mode
	else
		echo "Incognito"
		set --universal fish_private_mode 1
	end
end
