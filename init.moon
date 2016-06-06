
theme = howl.ui.theme

themes = {
  'Adapta Ashes': bundle_file('adapta_ashes/theme.moon'),
  'Adapta Ocean': bundle_file('adapta_ocean/theme.moon'),
  'Adapta Railscast': bundle_file('adapta_railscast/theme.moon'),
}

for name,file in pairs themes
  theme.register(name, file)

unload = ->
  for name in pairs themes
    theme.unregister(name)

{
  info: {
    author: 'MadcapJake@github',
    description: 'Adapta themes for Howl',
    license: 'MIT',
  },
  :unload
}
