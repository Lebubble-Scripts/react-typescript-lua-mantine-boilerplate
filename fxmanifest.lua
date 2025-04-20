fx_version "cerulean"

description "React + Typescript + Mantine + Lua Boilerplate Setup"
author "Lebubble Scripts"
version '1.0.0


lua54 'yes'

game "gta5"

ui_page 'web/build/index.html'

shared_script  {
  'config.lua',
  '@ox_lib/init.lua'
}

dependency 'ox_lib'

client_script "client/**/*"
server_script "server/**/*"

files {
	'web/build/index.html',
	'web/build/**/*',
}