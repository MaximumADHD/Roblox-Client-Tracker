local CorePackages = game:GetService("CorePackages")

local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch

local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)
local ExperienceInfo = require(InspectAndBuyFolder.Models.ExperienceInfo)
local SetExperienceInfo = require(InspectAndBuyFolder.Actions.SetExperienceInfo)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local GetFFlagIBEnableSendCounters = require(InspectAndBuyFolder.Flags.GetFFlagIBEnableSendCounters)
local Constants = require(InspectAndBuyFolder.Constants)

local requiredServices = {
	Network,
}

local keyMapper = createInspectAndBuyKeyMapper("getExperiencePlayabilityStatus")

--[[
	Get the playability status of an experience given its universe id.
]]
local function GetExperiencePlayability(universeId: string): any
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, universeId)

		return PerformFetch.Single(key, function()
			return network.getExperiencePlayability(universeId):andThen(function(results)
				local playability = results[1]
				local experience = ExperienceInfo.fromGetPlayabilityStatus(playability)

				store:dispatch(SetExperienceInfo(experience))
				if GetFFlagIBEnableSendCounters() then
					store:dispatch(SendCounter(Constants.Counters.GetExperiencePlayability .. Constants.CounterSuffix.RequestSucceeded))
				end
			end,
			if GetFFlagIBEnableSendCounters() then function(err)
				store:dispatch(SendCounter(Constants.Counters.GetExperiencePlayability .. Constants.CounterSuffix.RequestRejected))
			end else nil)
		end)(store):catch(function(err)
			if GetFFlagIBEnableSendCounters() then
				store:dispatch(SendCounter(Constants.Counters.GetExperiencePlayability .. Constants.CounterSuffix.RequestFailed))
			end
		end)
	end)
end

return GetExperiencePlayability
