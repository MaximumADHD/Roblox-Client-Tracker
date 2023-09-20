local CorePackages = game:GetService("CorePackages")

local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch

local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)
local ExperienceInfo = require(InspectAndBuyFolder.Models.ExperienceInfo)
local SetExperienceInfo = require(InspectAndBuyFolder.Actions.SetExperienceInfo)

local requiredServices = {
	Network,
}

local keyMapper = createInspectAndBuyKeyMapper("getExperiencePlayabilityStatus")

--[[
	Get the playability status of an experience given its universe id.
]]
local function GetExperiencePlayability(universeId)
	universeId = tostring(universeId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, universeId)

		return PerformFetch.Single(key, function()
			return network.getExperiencePlayability(universeId):andThen(function(results)
				local playability = results[1]
				local experience = ExperienceInfo.fromGetPlayabilityStatus(playability)

				store:dispatch(SetExperienceInfo(experience))
			end)
		end)(store):catch(function(err) end)
	end)
end

return GetExperiencePlayability
