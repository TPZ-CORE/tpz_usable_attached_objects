
local TPZInv = exports.tpz_inventory:getInventoryAPI()

---------------------------------------------------------------
--[[ Items ]]--
---------------------------------------------------------------

Citizen.CreateThread(function()

	for item, data in pairs (Config.MultiItemSetList) do

		TPZInv.registerUsableItem(item, "tpz_attached_objects", function(data)
			local _source = data.source

			TriggerClientEvent("tpz_attached_objects:client:attach", _source, item)
			TriggerClientEvent('tpz_inventory:closePlayerInventory', _source)
		end)

	end

end)
