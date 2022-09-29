local Plugin = script.Parent.Parent.Parent
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)
local PreviewUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared.PreviewUtil

local SetUserAddedAssets = require(Plugin.Src.Actions.SetUserAddedAssets)

local Framework = require(Plugin.Packages.Framework)
local deepJoin = Framework.Util.deepJoin

return function(tab, asset, callback)
	return function(store)
		local state = store:getState()

		local userAddedAssets = state.previewStatus.userAddedAssets
		local index = 1
		if userAddedAssets[tab] then
			index = #userAddedAssets[tab] + 1
		end

		local newAsset = PreviewUtil.createUserAddedAsset(asset)
		local newAssets = deepJoin(userAddedAssets, {
			[tab] = {
				[index] = newAsset
			}
		})

		store:dispatch(SetUserAddedAssets(newAssets))
		if callback then
			callback(newAsset)
		end
	end
end