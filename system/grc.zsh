# GRC colorizes nifty unix tools all over the place
if [[ $OSTYPE == darwin* ]]
then
  if $(grc &>/dev/null) && ! $(brew &>/dev/null)
  then
    source `brew --prefix`/etc/grc.bashrc
  fi
else
  if $(grc &>/dev/null)
  then
    source $ZSH/system/grc.bashrc
  fi
fi
