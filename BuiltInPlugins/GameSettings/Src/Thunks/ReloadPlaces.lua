--[[
	Called when reloading places tab after create new place button
]]

local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Cryo)

local Places = require(Plugin.Src.Networking.Requests.Places)

local SetCurrentSettings = require(Plugin.Src.Actions.SetCurrentSettings)

return function()
	return function(store)
        local success, places = Places.Get():await()
        if success then
            local state = store:getState()
            local settings = state.Settings
            local newSettings = Cryo.Dictionary.join(settings, places)
            store:dispatch(SetCurrentSettings(newSettings))
        end
	end
end
