let s:user_config=fnamemodify('user.vim', ':p')
echom 'file found: ' . s:user_config
if filereadable(s:user_config)
  " by some bizarre design decision, you can't just do:
  " source s:user_config
  " see this so answer: https://stackoverflow.com/a/841025/4921402
  exec "source " . s:user_config . ""
else
  echom s:user_config . ' was not found'
endif