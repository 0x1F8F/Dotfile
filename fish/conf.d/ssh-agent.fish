if test -z "$SSH_ENV"
    set -xg SSH_ENV $HOME/.cache/ssh/env
end

if not __ssh_agent_is_started
    __ssh_agent_start
end
