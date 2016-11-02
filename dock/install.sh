if which -s dockutil; then
  if ! dockutil --list | grep -q "Google Chrome"; then
    info "Adding Google Chrome to the dock"
    dockutil --add "/Applications/Google Chrome.app"
  fi

  if ! dockutil --list | grep -q "Slack"; then
    info "Adding Slack to the dock"
    dockutil --add /Applications/Slack.app
  fi

  if ! dockutil --list | grep -q "Atom"; then
    info "Adding Atom to the dock"
    dockutil --add /Applications/Atom.app
  fi
fi
