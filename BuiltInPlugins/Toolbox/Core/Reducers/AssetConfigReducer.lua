local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Rodux = require(Libs.Rodux)

local Actions = Plugin.Core.Actions
local SetAssetId = require(Actions.SetAssetId)
local SetUploadAssetType = require(Actions.SetUploadAssetType)
local SetVersionHistoryData = require(Actions.SetVersionHistoryData)
local SetAssetConfigData = require(Actions.SetAssetConfigData)
local SetCurrentScreen = require(Actions.SetCurrentScreen)
local SetScreenConfig = require(Actions.SetScreenConfig)
local AddChange = require(Actions.AddChange)
local ClearChange = require(Actions.ClearChange)
local SetAssetGroupData = require(Actions.SetAssetGroupData)
local UploadResult = require(Actions.UploadResult)
local NetworkError = require(Actions.NetworkError)
local SetAssetConfigTab = require(Actions.SetAssetConfigTab)
local SetOverrideAssets = require(Actions.SetOverrideAssets)
local SetMyGroups = require(Actions.SetMyGroups)
local SetIsVerifiedCreator = require(Actions.SetIsVerifiedCreator)

return Rodux.createReducer({
	-- Empty table means publish new asset
	-- Otherwise we are editing existing asset.
	assetConfigData = {},
	assetGroupData = {},

	versionHistory = nil,

	-- We will use this table to track changes within assetConfig.
	-- This should be global to the assetConfig, that's why it's in the store.
	-- It's each component's duty to tell the store if a element has changed or not.
	changed = {},

	assetId = nil,
	instances = nil,
	screenFlowType = nil, -- AssetConfigConstants.FLOW_TYPE.*
	assetTypeEnum = nil, -- Enum.AssetType.*
	currentScreen = nil, --AssetConfigConstants.SCREENS.*
	screenConfigs = { -- one entry per screen
		--[[
		[AssetConfigConstants.SCREENS.*] = {
		},
		--]]
	},
	isCatalogItemCreator = false,
	allowedAssetTypesForRelease = {},
	allowedAssetTypesForUpload = {},

	currentTab = nil,

	totalResults = 0,
	resultsArray = {},
	filteredResultsArray = {},

	groupsArray = {},

	isVerifiedCreator = true,
}, {

	[SetAssetId.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			assetId = action.assetId,
		})
	end,

	[SetUploadAssetType.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			assetTypeEnum = action.assetTypeEnum,
		})
	end,

	[SetCurrentScreen.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentScreen = action.currentScreen,
		})
	end,

	[SetScreenConfig.name] = function(state, action)
		local newSubScreenConfig = Cryo.Dictionary.join(state.screenConfigs[action.screen], {
			[action.variable] = action.value
		})

		local newScreenConfigs = Cryo.Dictionary.join(state.screenConfigs, {
			[action.screen] = newSubScreenConfig
		})


		return Cryo.Dictionary.join(state, {
			screenConfigs = newScreenConfigs
		})
	end,

	[SetVersionHistoryData.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			versionHistory = action.versionHistory
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

	[SetAssetGroupData.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			assetGroupData = action.assetGroupData
		})
	end,

	[NetworkError.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			networkError = action.response
		})
	end,

	[UploadResult.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			uploadSucceeded = action.uploadSucceeded
		})
	end,

	[SetAssetConfigTab.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentTab = action.tabItem
		})
	end,

	[SetOverrideAssets.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			totalResults = action.totalResults,
			resultsArray = action.resultsArray,
			filteredResultsArray = action.filteredResultsArray
		})
	end,

	[SetMyGroups.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			groupsArray = action.groupsArray
		})
	end,

	[SetIsVerifiedCreator.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isVerifiedCreator = action.isVerifiedCreator
		})
	end,
})
