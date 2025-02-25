function envsource
	echo "Exposing variables"
  for line in (cat $argv | grep -v '^#')
    set item (string split -m 1 '=' $line)
    set -gx $item[1] $item[2]
    echo "$item[1]"
  end
end
