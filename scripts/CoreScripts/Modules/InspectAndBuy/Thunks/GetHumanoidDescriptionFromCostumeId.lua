local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)

local FFlagFixInspectAndBuyPerformFetch = require(InspectAndBuyFolder.Flags.FFlagFixInspectAndBuyPerformFetch)

local requiredServices = {
	Network,
}

local keyMapper
if FFlagFixInspectAndBuyPerformFetch then
	keyMapper = createInspectAndBuyKeyMapper("getHumanoidDescriptionFromCostumeId")
else
	keyMapper = function(costumeId)
		return "inspectAndBuy.getHumanoidDescriptionFromCostumeId." ..tostring(costumeId)
	end
end

--[[
	Get a HumanoidDescription object from a costume id.
]]
local function GetHumanoidDescriptionFromCostumeId(costumeId, callback)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key
		if FFlagFixInspectAndBuyPerformFetch then
			key = keyMapper(store:getState().storeId, costumeId)
		else
			key = keyMapper(costumeId)
		end

		return PerformFetch.Single(key, function()
			return network.getHumanoidDescriptionFromCostumeId(costumeId):andThen(function(humanoidDescription)
				callback(humanoidDescription)
			end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetHumanoidDescriptionFromCostumeId