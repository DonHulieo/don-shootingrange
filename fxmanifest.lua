fx_version 'cerulean'
game 'gta5'

author 'DonHulieo'
description 'Don\'s Shooting Range for Weapons Training on QBCore'
version '1.1.1'

server_script {
	'@oxmysql/lib/MySQL.lua',
	'server/main.lua'
}

client_script {
	'client/main.lua',
	'client/menu.lua',
	'client/questions.lua'
}

shared_script {
	'@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
	'config.lua'
}

escrow_ignore {
	'locales/*.lua',
	'client/menu.lua',
	'client/questions.lua',
    'config.lua'
}

dependencies {
	'qb-core',
	'qb-menu',
	'bcs_questionare'
}

lua54 'yes'