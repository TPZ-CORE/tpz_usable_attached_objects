---------------------------------------------------------------
--[[ Commands ]]--
---------------------------------------------------------------

TriggerEvent("chat:addSuggestion", "/" .. Config.DeleteAllAttached.Command, Config.DeleteAllAttached.Description)

-- Removing all the usable wearable props
RegisterCommand(Config.DeleteAllAttached.Command, function(source, args)     
    ClearAllPlayerPedAttachedProps()
end)
