let s:user_config=fnamemodify('user.vim', ':p')
echom 'file found: ' . s:user_config
if filereadable(s:user_config)
  exec "source " . s:user_config . ""
else
  echom s:user_config . ' was not found'
endif