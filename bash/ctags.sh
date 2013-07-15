if [ ! -z $(which ctags) ]; then
  echo "Installing ctags"

  function ctags-update {
    echo "updating .tags."
    ctags -R -f .tags 2> /dev/null
  }

  function ctags-update-gems {
    [ ! -f Gemfile ] && return
    echo "updating .gemtags"
    bundle show --paths | xargs ctags -R -f .gemtags 2>/dev/null
  }

  function ctags-updateall {
    ctags-update
    ctags-update-gems
  }
fi
