local TPZ = exports.tpz_core:getCoreAPI()

local AttachedProps = {}

---------------------------------------------------------------
--[[ Local Functions ]]--
---------------------------------------------------------------

local function HasPlayerPedAttachedPropType(attachedType)

	local foundResult = false

	if TPZ.GetTableLength(AttachedProps) > 0 then

		for k, v in pairs (AttachedProps) do

			if v.type == attachedType then
				return true
			end
		end

	end

	return false
end

local ClearPlayerPedAttachedPropsByType = function(attachedType)

	for k, v in pairs (AttachedProps) do

		if v.type == attachedType then

			for i, object in pairs(v.entities) do
				Wait(100)

				RemoveEntityProperly(object.entity, object.model)
			end
			
			Wait(1000)
			table.remove(AttachedProps, k)
		end
	end 
end 


local function OnPlayerPedAttachedPropType(attachedType)

    Wait(1000)

    if Config.AttachedItemSets[attachedType] then

        local player = PlayerPedId() 
		local hasAttachedAlready = HasPlayerPedAttachedPropType(attachedType)

        if not hasAttachedAlready then
                  
            local coords = GetEntityCoords(player) 
            ClearPedTasksImmediately(player) 
            ClearPedSecondaryTask(player)   
            Citizen.InvokeNative(0xFCCC886EDE3C63EC, player, 2, 1) -- Removes Weapon from animation 

            local entitiesList = {}

            for obj_key, obj_table in pairs (Config.AttachedItemSets[attachedType]) do
				LoadModel(obj_table.EntityObject)

                local prop = CreateObject(obj_table.EntityObject, coords.x, coords.y, coords.z , 0.2, true, true, false, false, true)

                table.insert(entitiesList, { entity = prop, model = obj_table.EntityObject } )
        
                local boneIndex = GetEntityBoneIndexByName(player, obj_table.Attachment)
                AttachEntityToEntity(prop, PlayerPedId(), boneIndex, obj_table.x, obj_table.y, obj_table.z, obj_table.xRot, obj_table.yRot, obj_table.zRot, true, true, false, true, 1, true)

				Wait(100)
            end

            table.insert(AttachedProps, {type = attachedType, entities = entitiesList })


        else

            ClearPedTasksImmediately(player) 
            ClearPedSecondaryTask(player) 
        
			ClearPlayerPedAttachedPropsByType(attachedType)
        end

    else
        print(string.format("This attached prop item set type (%s) does not exist", attachedType))
    end

end

---------------------------------------------------------------
--[[ Functions ]]--
---------------------------------------------------------------

ClearAllPlayerPedAttachedProps = function()
	local player = PlayerPedId() 

	for k, v in pairs (AttachedProps) do

		for i, object in pairs(v.entities) do
			Wait(100)

			RemoveEntityProperly(object.entity, object.model)
		end
		
	end 

	ClearPedTasksImmediately(player) 
	ClearPedSecondaryTask(player) 

	AttachedProps = {}
end 

---------------------------------------------------------------
--[[ Base Events ]]--
---------------------------------------------------------------

AddEventHandler('onResourceStop', function(resource) 
	if resource ~= GetCurrentResourceName() then 
		return
	end

	ClearAllPlayerPedAttachedProps()

end)

---------------------------------------------------------------
--[[ General Events ]]--
---------------------------------------------------------------

RegisterNetEvent('tpz_attached_objects:client:attach')
AddEventHandler('tpz_attached_objects:client:attach', function(attachedType)
    OnPlayerPedAttachedPropType(attachedType)
end)