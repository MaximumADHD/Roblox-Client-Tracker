local FFlagAssetConfigOverrideFromAnyScreen = game:GetFastFlag("AssetConfigOverrideFromAnyScreen", false)

local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local SetAssetConfigTab = require(Actions.SetAssetConfigTab)
local ClearChange = require(Actions.ClearChange)

local ConfigTypes = require(Plugin.Core.Types.ConfigTypes)

return function(currentTab)
	return function(store)
		if FFlagAssetConfigOverrideFromAnyScreen then
			if ConfigTypes:isOverride(currentTab) then
				-- Returning from the override screen without selecting an asset to override
				store:dispatch(SetAssetConfigTab(ConfigTypes:getGeneralTab()))
				store:dispatch(ClearChange("OverrideAssetId"))
			else
				store:dispatch(SetAssetConfigTab(ConfigTypes:getOverrideTab()))
			end
		else
			if ConfigTypes:isGeneral(currentTab) then
				store:dispatch(SetAssetConfigTab(ConfigTypes:getOverrideTab()))
			elseif ConfigTypes:isOverride(currentTab) then
				store:dispatch(SetAssetConfigTab(ConfigTypes:getGeneralTab()))
				-- If we go back to normal assetConfig, then we will be abandoning the override selection.
				-- The key need to match what's defined in OverrideView.
				store:dispatch(ClearChange("OverrideAssetId"))
			else
				-- Error, you shouldn't be here.
			end
		end
	end
end