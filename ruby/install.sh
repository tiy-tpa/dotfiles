export DOTFILES_HOME=$HOME/.dotfiles

if ! gem list | grep -q bundler; then
  info 'Installing bundler'
  gem install bundler
fi

bundle install --gemfile=${DOTFILES_HOME}/ruby/Gemfile --quiet
