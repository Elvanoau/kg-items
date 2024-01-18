# kg-items
A QBCore Runtime Item System To Add Items While The Server Is Running, No Need To Restart Now Applications Include adding custom one off items for players such as custom named drug recipes

# Installation

- Drag and drop under resources
- Run Included SQL
- Ensure script after qb-core start

 # Creating A New Item
- Run the `createitem` command in game (Restricted To Admins)
- When using the `createitem` command add a png to the `qb-inventory` with the item name you entered
- ie: markedbills.png

 # Creating A New Item In A Custom Script
```lua
local item = {
    name = '',
    label = '',
    weight = 0,
    type = 'item',
    image = '' .. ".png",
    unique = false,
    useable = false,
    shouldClose = true,
    combinable = nil,
    description = '',
}

TriggerServerEvent('kg-items:createItem', item.name, item) -- Send item to server
```

# How To Check A Custom Item Type IE Drug

- Use The CheckRuntimeItemType Function
- Usage - CheckRuntimeItemType(itemname, itemtype)
