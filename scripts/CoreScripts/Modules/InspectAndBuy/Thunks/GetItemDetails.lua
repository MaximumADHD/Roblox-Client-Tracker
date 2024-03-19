local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local GetFFlagIBEnableSendCounters = require(InspectAndBuyFolder.Flags.GetFFlagIBEnableSendCounters)
local Constants = require(InspectAndBuyFolder.Constants)

local requiredServices = {
	Network,
}

local keyMapper = createInspectAndBuyKeyMapper("getItemDetails")

--[[
	Get information about a product. Specifically if it is purchasable or owned.
]]
local function GetItemDetails(itemId, itemType)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, itemId, itemType)

		return PerformFetch.Single(key, function()
			return network.getItemDetails(itemId, itemType):andThen(
				function(results)
					if itemType == Enum.AvatarItemType.Asset then
						local newAsset = AssetInfo.fromGetItemDetails(results)
						store:dispatch(SetAssets({newAsset}))
					elseif itemType == Enum.AvatarItemType.Bundle then
						local newBundle = BundleInfo.fromGetItemDetails(results)
						store:dispatch(SetBundles({newBundle}))
					else
						if GetFFlagIBEnableSendCounters() then
							store:dispatch(SendCounter(Constants.Counters.GetItemDetailsRespondedWithUnknownItemType))
						end
					end

					if GetFFlagIBEnableSendCounters() then
						store:dispatch(SendCounter(Constants.Counters.GetItemDetails .. Constants.CounterSuffix.RequestSucceeded))
					end
				end,
				if GetFFlagIBEnableSendCounters() then function(err)
					store:dispatch(SendCounter(Constants.Counters.GetItemDetails .. Constants.CounterSuffix.RequestRejected))
				end else nil)
		end)(store):catch(function(err)
			if GetFFlagIBEnableSendCounters() then
				store:dispatch(SendCounter(Constants.Counters.GetItemDetails .. Constants.CounterSuffix.RequestFailed))
			end
		end)
	end)
end

return GetItemDetails
