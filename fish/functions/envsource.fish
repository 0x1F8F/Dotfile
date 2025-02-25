function envsource
	if test $argv[1]
		set file $argv[1]
	else
		set file .env
	end

	if ! test -e $file
		echo 'envsource [file | default:.env]'
		return 1
	end

	for i in (cat $file | grep -v '^#')
       set item (string split "=" $i)
       set -gx $item[1] $item[2] 2> /dev/null || printf '[\033[32mwarn\033[0m] \033[31m]'$item[1]'\033[0m\n'
  end
end
