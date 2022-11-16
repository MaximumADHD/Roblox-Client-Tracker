--[[
	Get a HumanoidDescription object from a costume id.
	Useful for trying on bundles with costumeIds in the
	InspectAndBuy menu
]]
local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InGameMenu = script.Parent.Parent
local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
local createInspectAndBuyKeyMapper = require(InGameMenu.Utility.createInspectAndBuyKeyMapper)

local keyMapper = createInspectAndBuyKeyMapper("getHumanoidDescriptionFromCostumeId")

local function GetHumanoidDescriptionFromCostumeId(costumeId, callback)
	return InspectAndBuyThunk.new(script.Name, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().inspectAndBuy.StoreId, costumeId)

		return PerformFetch.Single(key, function()
			return network.getHumanoidDescriptionFromCostumeId(costumeId):andThen(function(humanoidDescription)
				callback(humanoidDescription)
			end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetHumanoidDescriptionFromCostumeId