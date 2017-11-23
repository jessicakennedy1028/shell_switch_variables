varswitch() {
	declare -a varswitch_options=("${!1}")
	local varswitch_toggleopts=("next" "previous" "random" "off" "first" "last" "toggle")
	# next will get the next value from options
	# previous will get the previous value from options
	# ramdom will generate a random value from options
	# off will unset the variable
	# first will get the first option from options
	# last will get the last option from options
	# toggle will switch between 2 arguments from the options

	local varswitch_variable="${2}"
	local varswitch_currentvar="${3}"
	local varswitch_toggleto="${4}"

	if [ "${varswitch_toggleto}" == "vs-next" ]; then

	fi
	if [ "${varswitch_toggleto}" == "vs-previous" ]; then

	fi
	if [ "${varswitch_toggleto}" == "vs-random" ]; then

	fi
	if [ "${varswitch_toggleto}" == "vs-off" ]; then
		unset $varswitch_variable
		return
	fi
	if [ "${varswitch_toggleto}" == "vs-first" ]; then

	fi
	if [ "${varswitch_toggleto}" == "vs-last" ]; then

	fi
	if [ "${varswitch_toggleto}" == "vs-toggle" ]; then

	fi

	echo "${varswitch_options[@]}"
	echo "${varswitch_variable}"
	echo "${varswitch_currentvar}"
	echo "${varswitch_toggleto}"
	echo "I will switch ${varswitch_variable} which currently is set to ${varswitch_currentvar} to the new value of ${varswitch_toggleto}"
}

options=(
	"Number 1"
	"Number 2"
	"Number 3"
	"Number 4"
)

#          Toggles   Variable  Current   Toggle to
varswitch options[@] "MyVar" "Number 2" "Number 4"
varswitch options[@] "MyVar" "Number 2" "vs-first"
varswitch options[@] "MyVar" "Number 2" "vs-last"
varswitch options[@] "MyVar" "Number 2" "vs-next"
varswitch options[@] "MyVar" "Number 2" "vs-previous"
varswitch options[@] "MyVar" "Number 2" "vs-random"
varswitch options[@] "MyVar" "Number 2" "vs-off"

options=(
	"enable"
	"disable"
)

varswitch options[@] "ToggleMyVar" "enable" "toggle"
varswitch options[@] "ToggleMyVar" "disable" "toggle"
