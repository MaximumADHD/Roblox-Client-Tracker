--[[
	Reducer for currently wearing items by user ID
]]
local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Rodux = require(Packages.Rodux)
local Dash = require(Packages.Dash)
local AssetInfo = require(script.Parent.Parent.Models.AssetInfo)

export type State = {
	-- maps asset ID to AssetInfo model
	[string]: AssetInfo.Type
}

--[[
	Function to configure and return the Assets reducer

	@param options - Configuration options for the reducer
				.networkingCurrentlyWearing - The CurrentlyWearing networking instance
]]
return function(options)
	local NetworkingCurrentlyWearing = options.networkingCurrentlyWearing

	return Rodux.createReducer({}, {
		[NetworkingCurrentlyWearing.GetItemDetails.Succeeded.name] = function(state, action)
			local assetsToUpdate = {}
			for _, asset in ipairs(action.responseBody.data) do
				local assetInfo = AssetInfo.fromAsset(asset)
				assetsToUpdate[assetInfo.id] = assetInfo
			end
			return Dash.join(state, assetsToUpdate)
		end,
	})
end
