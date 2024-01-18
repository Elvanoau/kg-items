fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'Elvano'
description 'A runtime item framework for qbcore'

client_scripts {
    "client.lua"
}

server_scripts {
    "server.lua",
    "@oxmysql/lib/MySQL.lua"
}

escrow_ignore {
    'README.md',
    'import.sql',
}

dependencys {
    'qb-core',
    'oxmysql',
}