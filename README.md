# kg-items
- QBCore based runtime item system
- Written from scratch by me, but based on `QB-Core`



---
# Installation

- Drag and drop under resources
- Run Included SQL
- Ensure script after qb-core start



---
# Creating A New Item

- Run the `createitem` command in game (Restricted To Admins)
- When using the `createitem` command add a png to the `qb-inventory` with the item name you entered
- ie: markedbills.png


---
# How To Check A Custom Item Type IE Drug

- Use The CheckRuntimeItemType Function
- Usage -
CheckRuntimeItemType(itemname, itemtype)


---
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