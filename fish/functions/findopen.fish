function findopen --description "find with fzf and then open with micro"
	set -l file (fzf \
		--input-label ' Input ' \
		--header-label ' File Type ' \
		--preview 'cat {}' \
		--bind 'focus:transform-preview-label:[ -n "{}" ] && printf " Previewing [%s] " {}' \
		--bind 'focus:+transform-header:file --brief {} || echo "No File Selected"' \
		--preview-window 'right,50%,border-left')

	if test -n "$file"
		micro "$file"
	else
		commandline -f repaint
	end
end
