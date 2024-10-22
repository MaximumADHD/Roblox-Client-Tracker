--[[
	FIXME(dbanks)
	2023/12/07
	See https://roblox.atlassian.net/browse/AVBURST-12905
	This will be removed once backend sends "creating universe" with asset details.
--]]
local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)
local GetExperiencePlayability = require(InspectAndBuyFolder.Thunks.GetExperiencePlayability)
local GetExperienceInfo = require(InspectAndBuyFolder.Thunks.GetExperienceInfo)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local Constants = require(InspectAndBuyFolder.Constants)

local requiredServices = {
	Network,
}

local keyMapper = createInspectAndBuyKeyMapper("getVersionInfo")

--[[
	Get the version info of an asset given its asset id. Uses saved-versions endpoint.
]]
local function GetVersionInfo(assetId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, assetId)

		return PerformFetch.Single(key, function()
			return network.getVersionInfo(assetId):andThen(function(results)
				local latestVersion = results.data[1]
				local creatingUniverseId = if latestVersion then latestVersion.creatingUniverseId else nil
				if creatingUniverseId then
					creatingUniverseId = tostring(creatingUniverseId)
					-- Set asset to have creating universe id
					local assetInfo = AssetInfo.fromGetVersionInfo(assetId, latestVersion)

					-- Note: we only ever "SetAssets" if the creatingUniverseId is present: we don't really use/care about
					-- any other info from the version endpoint.
					store:dispatch(SetAssets({ assetInfo }))
					-- Get Experience Playability
					store:dispatch(GetExperiencePlayability(creatingUniverseId))
					-- Get Experience Info
					store:dispatch(GetExperienceInfo(creatingUniverseId))
				end
				store:dispatch(
					SendCounter(Constants.Counters.GetVersionInfo .. Constants.CounterSuffix.RequestSucceeded)
				)
			end, function(err)
				store:dispatch(
					SendCounter(Constants.Counters.GetVersionInfo .. Constants.CounterSuffix.RequestRejected)
				)
			end)
		end)(store):catch(function(err)
			store:dispatch(SendCounter(Constants.Counters.GetVersionInfo .. Constants.CounterSuffix.RequestFailed))
		end)
	end)
end

return GetVersionInfo
