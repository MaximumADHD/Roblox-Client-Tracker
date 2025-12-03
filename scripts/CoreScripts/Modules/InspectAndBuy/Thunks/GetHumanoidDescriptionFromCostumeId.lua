local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local Constants = require(InspectAndBuyFolder.Constants)

local requiredServices = {
	Network,
}

local keyMapper = createInspectAndBuyKeyMapper("getHumanoidDescriptionFromCostumeId")

--[[
	Get a HumanoidDescription object from a costume id.
]]
local function GetHumanoidDescriptionFromCostumeId(costumeId, callback: (HumanoidDescription) -> ())
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, costumeId)

		return PerformFetch.Single(key, function()
			return network.getHumanoidDescriptionFromCostumeId(costumeId):andThen(function(humanoidDescription)
				callback(humanoidDescription)
				store:dispatch(
					SendCounter(
						Constants.Counters.GetHumanoidDescriptionFromCostumeId
							.. Constants.CounterSuffix.RequestSucceeded
					)
				)
			end, function(err)
				store:dispatch(
					SendCounter(
						Constants.Counters.GetHumanoidDescriptionFromCostumeId
							.. Constants.CounterSuffix.RequestRejected
					)
				)
			end)
		end)(store):catch(function(err)
			store:dispatch(
				SendCounter(
					Constants.Counters.GetHumanoidDescriptionFromCostumeId .. Constants.CounterSuffix.RequestFailed
				)
			)
		end)
	end)
end

return GetHumanoidDescriptionFromCostumeId
