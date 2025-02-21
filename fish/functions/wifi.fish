

function wifi
	if test ! $argv[1]
			printf "wifi (command)|((--) (flag) (command))\n\ncommands\n\ton\tturn on wifi\n\toff\tturn off wifi\n\tscan\tlist avalble network\n\trescan\trefresh wifi\n\t--\tpass to network mgr wifi\n"
			return 1
	end
	switch (echo $argv[1])
		case on
			nmcli radio wifi on
		case off
			nmcli radio wifi off
		case scan
			nmcli dev wifi
		case rescan
			nmcli dev wifi rescan
		case "--"
			nmcli dev wifi $argv[2..]
		case "*"
			printf "wifi (command)|((--) (flag) (command))\ninvalid argument: $argv\n\ncommands\n\ton\tturn on wifi\n\toff\tturn off wifi\n\tscan\tlist avalble network\n\trescan\trefresh wifi\n\t--\tpass to network mgr wifi\n"
	end
end

