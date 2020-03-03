# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_CCLOUD_SHOW="${SPACESHIP_CCLOUD_SHOW=true}"
SPACESHIP_CCLOUD_PREFIX="${SPACESHIP_CCLOUD_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_CCLOUD_SUFFIX="${SPACESHIP_CCLOUD_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_CCLOUD_COLOR="${SPACESHIP_CCLOUD_COLOR="white"}"

spaceship_ccloud() {
  # If SPACESHIP_CCLOUD_SHOW is false, don't show ccloud section
  [[ $SPACESHIP_CCLOUD_SHOW == false ]] && return

  # Check if ccloud command is available for execution
  spaceship::exists ccloud || return

  local ccloud_status="$(ccloud prompt)"

  # Exit section if variable is empty
  #[[ -z $ccloud_status ]] && return

  # Display ccloud section
  spaceship::section \
    "$SPACESHIP_CCLOUD_COLOR" \
    "$SPACESHIP_CCLOUD_PREFIX" \
    "${ccloud_status}" \
    "$SPACESHIP_CCLOUD_SUFFIX"
}
