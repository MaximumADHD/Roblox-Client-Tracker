--[[
	TODO AVBURST-12905:
		Remove and use item details endpoint for getting attribution data
		instead of using the asset-versions endpoint.
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

local requiredServices = {
	Network,
}

local keyMapper = createInspectAndBuyKeyMapper("getVersionInfo")

--[[
	Get the version info of an asset given its asset id. Uses saved-versions endpoint.
]]
local function GetVersionInfo(id)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, id)

		return PerformFetch.Single(key, function()
			return network.getVersionInfo(id):andThen(function(results)
				local latestVersion = results.data[1]
				local creatingUniverseId = if latestVersion then latestVersion.creatingUniverseId else nil
				if creatingUniverseId then
					-- Set asset to have creating universe id
					local assetInfo = AssetInfo.fromGetVersionInfo(id, latestVersion)
					store:dispatch(SetAssets({ assetInfo }))
					-- Get Experience Playability
					store:dispatch(GetExperiencePlayability(creatingUniverseId))
					-- Get Experience Info
					store:dispatch(GetExperienceInfo(creatingUniverseId))
				end
			end)
		end)(store):catch(function(err) end)
	end)
end

return GetVersionInfo
