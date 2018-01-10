# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

if [[ -n "$ZSH_VERSION" ]]; then  # quit now if in zsh
	return 1 2> /dev/null || exit 1;
fi;
