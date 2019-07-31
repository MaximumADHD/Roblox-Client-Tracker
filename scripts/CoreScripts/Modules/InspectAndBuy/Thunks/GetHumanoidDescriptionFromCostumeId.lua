local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)

local requiredServices = {
	Network,
}

local function keyMapper(costumeId)
	return "inspectAndBuy.getHumanoidDescriptionFromCostumeId." ..tostring(costumeId)
end

--[[
	Get a HumanoidDescription object from a costume id.
]]
local function GetHumanoidDescriptionFromCostumeId(costumeId, callback)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		return PerformFetch.Single(keyMapper(costumeId), function()
			return network.getHumanoidDescriptionFromCostumeId(costumeId):andThen(function(humanoidDescription)
				callback(humanoidDescription)
			end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetHumanoidDescriptionFromCostumeId