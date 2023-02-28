eval "$(zellij setup --generate-auto-start bash)"
eval "$(fnm env --use-on-cd)"

if [ -f ~/.bashrc ] ; then
  . ~/.bashrc
fi
