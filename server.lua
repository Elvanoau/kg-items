local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add('createitem', 'Create a Item', {}, false, function(source)
    local source = source 
	TriggerClientEvent('kg-items:OpenMenu', source)  
end, 'admin')

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        Wait(100)
        items = MySQL.query.await("SELECT * FROM elvano_items")
        if json.encode(items) == '[]' then 
            print('No items in the DB to be added')
        else  
            local itemTable = {}
            for i = 1, #items, 1 do
                itemTable[items[i]['name']] = json.decode(items[i]["itemdata"])
            end 
            exports['qb-core']:AddItems(itemTable)
            Wait(5000)
            print('ALL items from DB have been pushed to the core!')
        end
    end
end)

RegisterNetEvent('kg-items:createItem', function(itemName, item, itemtype)
    if itemtype == nil then
        itemtype = "default"
    end
    exports['qb-core']:AddItem(itemName, item)
    MySQL.insert("INSERT INTO elvano_items (name, itemdata, itemtype) VALUES (?,?,?)", {itemName, json.encode(item), itemtype})
end)

function CheckRuntimeItemType(itemname, itemtype)
    local response = MySQL.query.await('SELECT `itemtype` FROM `elvano_items` WHERE `itemname` = ?', {
        itemname
    })

    if response ~= nil then
        if response.itemtype == itemtype:lower() then
            return true
        else
            return false
        end
    else
        return false
    end
end