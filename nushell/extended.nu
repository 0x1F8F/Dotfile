def li [] {
	ls | grid --color --icons -s "   "
}

def ll [] {
	ls -l
}

def la [] {
	ls -a
}


# alias bat = bat --theme Catppuccin Mocha
alias ip = ip -c

def gitls [] {
	git log --pretty=%h»¦«%aN»¦«%s»¦«%aD | lines | split column "»¦«" sha1 committer desc merged_at | first 10
}

# start starship
source ~/.config/nushell/starship.nu
source ~/.config/nushell/zoxide.nu



# start ssh agent for once
do --env {
    let ssh_agent_file = (
        # $nu.temp-path | path join $"ssh-agent-($env.USERNAME? | default $env.USER).nuon"
				$env.HOME | path join ".cache/ssh/env.nuon"
    )

    if ($ssh_agent_file | path exists) {
        let ssh_agent_env = open ($ssh_agent_file)
        if ($"/proc/($ssh_agent_env.SSH_AGENT_PID)" | path exists) {
            load-env $ssh_agent_env
            return
        } else {
            rm $ssh_agent_file
        }
    }

    let ssh_agent_env = ^ssh-agent -c
        | lines
        | first 2
        | parse "setenv {name} {value};"
        | transpose --header-row
        | into record

    load-env $ssh_agent_env
    $ssh_agent_env | save --force $ssh_agent_file
		ssh-add ~/.ssh/gh o+e> /dev/null
}
