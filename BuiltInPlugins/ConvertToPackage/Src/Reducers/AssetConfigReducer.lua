local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Rodux = require(Packages.Rodux)

local Actions = Plugin.Src.Actions
local SetAssetConfigData = require(Actions.SetAssetConfigData)
local SetCurrentScreen = require(Actions.SetCurrentScreen)
local AddChange = require(Actions.AddChange)
local ClearChange = require(Actions.ClearChange)
local UploadResult = require(Actions.UploadResult)

local Constants = require(Plugin.Src.Util.Constants)

local initial = {
	-- Empty table means publish new asset
	-- Otherwise we are editing existing asset.
	assetConfigData = {},
	versionHistory = nil,

	-- We will use this table to track changes within assetConfig.
	-- This should be global to the assetConfig, that's why it's in the store.
	-- It's each component's duty to tell the store if a element has changed or not.
	changed = {},

	assetId = nil,
	instances = nil,
	assetTypeEnum = nil, -- Enum.AssetType.*
	screenConfigs = {},
	isCatalogItemCreator = false,

	currentScreen = Constants.SCREENS.CONFIGURE_ASSET,

	totalResults = 0,
	resultsArray = {},
	filteredResultsArray = {},
}

return Rodux.createReducer(initial, {
	[SetCurrentScreen.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentScreen = action.currentScreen,
		})
	end,

	[SetAssetConfigData.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			assetConfigData = action.assetConfigData
		})
	end,

	[AddChange.name] = function(state, action)
		local setting = action.setting
		local value = action.value
		return Cryo.Dictionary.join(state, {
			changed = Cryo.Dictionary.join(state.changed or {}, {
				[setting] = value
			})
		})
	end,

	[ClearChange.name] = function(state, action)
		local setting = action.setting

		return Cryo.Dictionary.join(state, {
			changed = Cryo.Dictionary.join(state.changed or {}, {
				[setting] = Cryo.None
			})
		})
	end,

	[UploadResult.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			uploadSucceeded = action.uploadSucceeded
		})
	end,
})
