local Plugin = script.Parent.Parent.Parent

local SetUserAddedAssets = require(Plugin.Src.Actions.SetUserAddedAssets)

local Framework = require(Plugin.Packages.Framework)
local deepCopy = Framework.Util.deepCopy

return function(tab, index)
	return function(store)
		local state = store:getState()

		local userAddedAssets = state.previewStatus.userAddedAssets
		local newAssets = deepCopy(userAddedAssets)
		if newAssets[tab] then
			if newAssets[tab][index] then
				newAssets[tab][index] = nil
				store:dispatch(SetUserAddedAssets(newAssets))
			end
		end
	end
end
