local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local SetAssetConfigTab = require(Actions.SetAssetConfigTab)
local ClearChange = require(Actions.ClearChange)

local ConfigTypes = require(Plugin.Core.Types.ConfigTypes)

local Util = Plugin.Core.Util
local AssetConfigConstants = require(Util.AssetConfigConstants)

return function(currentTab)
	return function(store)
		if ConfigTypes:isOverride(currentTab) then
			-- Returning from the override screen without selecting an asset to override
			store:dispatch(SetAssetConfigTab(ConfigTypes:getGeneralTab()))
			store:dispatch(ClearChange(AssetConfigConstants.OVERRIDE_ASSET_ID))
		else
			store:dispatch(SetAssetConfigTab(ConfigTypes:getOverrideTab()))
		end
	end
end
