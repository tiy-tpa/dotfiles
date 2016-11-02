if which apm >/dev/null 2>&1; then
  # star all the atom packages needed
  JSON=$(mktemp)
  apm stars --json > "${JSON}"

  for package in linter file-icons pigments color-picker emmet git-plus language-babel merge-conflicts linter-eslint linter-tidy linter-stylelint toggle-quotes standard-formatter html-entities atom-wrap-in-tag emmet-jsx-css-modules stylefmt; do
    if ! grep -q "\"name\":\"${package}\"" ${JSON}; then
      apm star "${package}"
    fi
  done

  # apm stars --install
fi
