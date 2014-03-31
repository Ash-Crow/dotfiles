# GRC colorizes nifty unix tools all over the place
if $(grc &>/dev/null)
then
  if ! $(brew &>/dev/null)
  then
    source `brew --prefix`/etc/grc.bashrc
  else
    source $ZSH/system/grc.bashrc
  fi
fi
