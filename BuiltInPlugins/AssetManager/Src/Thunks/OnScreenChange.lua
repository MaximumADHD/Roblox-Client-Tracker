local Plugin = script.Parent.Parent.Parent

local SetAssets = require(Plugin.Src.Actions.SetAssets)
local SetAssetsModerationData = require(Plugin.Src.Actions.SetAssetsModerationData)
local SetIsFetchingAssets = require(Plugin.Src.Actions.SetIsFetchingAssets)
local SetEditingAssets = require(Plugin.Src.Actions.SetEditingAssets)
local SetSelectedAssets = require(Plugin.Src.Actions.SetSelectedAssets)
local SetSearchTerm = require(Plugin.Src.Actions.SetSearchTerm)

local GetAssets = require(Plugin.Src.Thunks.GetAssets)

local Screens = require(Plugin.Src.Util.Screens)

local FFlagAssetManagerRefactorPath = game:GetFastFlag("AssetManagerRefactorPath")
local FFlagStudioAssetManagerAssetModeration = game:GetFastFlag("StudioAssetManagerAssetModeration")

return function(apiImpl, screen)
	return function(store)
		store:dispatch(SetAssets({
			assets = {},
		}))
		if FFlagStudioAssetManagerAssetModeration then
			store:dispatch(SetAssetsModerationData({}))
		end
		store:dispatch(SetIsFetchingAssets(false))
		store:dispatch(SetEditingAssets({}))
		store:dispatch(SetSelectedAssets({}))
		store:dispatch(SetSearchTerm(""))
		if screen.Path ~= Screens.MAIN.Path then
			if FFlagAssetManagerRefactorPath then
				store:dispatch(GetAssets(apiImpl, screen.Path))
			else
				store:dispatch(GetAssets(apiImpl, screen.AssetType))
			end
		end
	end
end