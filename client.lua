local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('kg-items:OpenMenu', function()
    local dialog = exports['qb-input']:ShowInput({
        header = "Create a New Item!",
        submitText = "Create!",
        inputs = {
            {
                text = "Item Name",
                name = "itemname", 
                type = "text", 
                isRequired = true 
            },
            {
                text = "Item Label",
                name = "itemlabel", 
                type = "text", 
                isRequired = true 
            },
            {
                text = "Item Weight",
                name = "itemweight", 
                type = "number", 
                isRequired = true 
            },
            {
                text = "Item Description",
                name = "itemdescription", 
                type = "text", 
                isRequired = true 
            },
        },
    })


    if dialog ~= nil then
        local itemName = dialog.itemname
		local item = {
            name = itemName:lower(),
			label = dialog.itemlabel,
            weight = dialog.itemweight,
            type = 'item',
            image = itemName:lower() .. ".png",
            unique = false,
            useable = false,
            shouldClose = true,
            combinable = nil,
            description = dialog.itemdescription,
		}

		TriggerServerEvent('kg-items:createItem', itemName:lower(), item) -- Send item to server
    end
end)