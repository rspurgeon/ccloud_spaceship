
# usage
* Clone locally
* Create a symlink to <repo>/ccloud.zsh in <oh-my-zsh dir>/custom/themes/spaceship-prompt/sections
* Override the SPACESHIP_PROMPT_ORDER variable to include ccloud, for example:
  ```
  SPACESHIP_PROMPT_ORDER=(
    time          # Time stampts section
    user          # Username section
    host          # Hostname section
    dir           # Current directory section
    git           # Git section (git_branch + git_status)
    package       # Package version
    ruby          # Ruby section
    golang        # Go section
    docker        # Docker section
    aws           # Amazon Web Services section
    venv          # virtualenv section
    pyenv         # Pyenv section
    kubecontext   # Kubectl context section
    ccloud                # Confluent cloud section
    exec_time     # Execution time
    line_sep      # Line break
    battery       # Battery level and status
    vi_mode       # Vi-mode indicator
    jobs          # Backgound jobs indicator
    exit_code     # Exit code section
    char          # Prompt character
  )
  ``` 
* Customize:
	```
	SPACESHIP_CCLOUD_SHOW=true|false
	SPACESHIP_CCLOUD_PREFIX
	SPACESHIP_CCLOUD_SUFFIX
	```

Example:
![example](./images/example.png)
