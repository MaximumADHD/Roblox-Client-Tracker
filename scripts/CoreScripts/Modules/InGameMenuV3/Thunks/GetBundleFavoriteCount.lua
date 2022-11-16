local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch

--[[
	Use AvatarEditorService to determine the number of favorites
	to display in the AssetDetailsPage for a particular bundle
]]

local InGameMenu = script.Parent.Parent
local BundleInfo = require(InGameMenu.Models.BundleInfo)
local SetBundles = require(InGameMenu.Actions.InspectAndBuy.SetBundles)
local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
local createInspectAndBuyKeyMapper = require(InGameMenu.Utility.createInspectAndBuyKeyMapper)

local keyMapper = createInspectAndBuyKeyMapper("getBundleFavoriteCount")

--[[
	Gets the favorite count of a bundle.
]]
local function GetBundleFavoriteCount(bundleId)
	return InspectAndBuyThunk.new(script.Name, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().inspectAndBuy.StoreId, bundleId)

		return PerformFetch.Single(key, function(fetchSingleStore)
			return network.getBundleFavoriteCount(bundleId):andThen(
				function(numFavorites)
					if numFavorites then
						local bundle = BundleInfo.fromGetBundleFavoriteCount(bundleId, numFavorites)
						store:dispatch(SetBundles({bundle}))
					end
				end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetBundleFavoriteCount