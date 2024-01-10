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

local keyMapper = createInspectAndBuyKeyMapper("getExperienceInfo")

--[[
	Get information about an experience given its universe id.
]]
local function GetExperienceInfo(universeId:string): any
	universeId = tostring(universeId)

	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, universeId)

		return PerformFetch.Single(key, function()
			return network.getExperienceInfo(universeId):andThen(function(results)
				local experienceInfo = results.data[1]
				local experience = ExperienceInfo.fromGetExperienceInfo(experienceInfo)

				store:dispatch(SetExperienceInfo(experience))
			end)
		end)(store):catch(function(err) end)
	end)
end

return GetExperienceInfo
