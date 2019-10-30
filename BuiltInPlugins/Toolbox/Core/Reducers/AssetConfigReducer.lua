local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Rodux = require(Libs.Rodux)

local Util = Plugin.Core.Util
local PagedRequestCursor = require(Util.PagedRequestCursor)
local LOADING_IN_BACKGROUND = require(Util.Keys).LoadingInProgress
local getUserId = require(Util.getUserId)

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
local SetAssetConfigManageableGroups = require(Actions.SetAssetConfigManageableGroups)
local SetIsVerifiedCreator = require(Actions.SetIsVerifiedCreator)
local SetLoadingPage = require(Actions.SetLoadingPage)
local UpdateOverrideAssetData = require(Actions.UpdateOverrideAssetData)
local SetCurrentPage = require(Actions.SetCurrentPage)
local SetOverrideCursor = require(Actions.SetOverrideCursor)
local SetAssetConfigThumbnailStatus = require(Actions.SetAssetConfigThumbnailStatus)
local SetGroupMetadata = require(Actions.SetGroupMetadata)
local SetOwnerUsername = require(Actions.SetOwnerUsername)
local SetLocalUsername = require(Actions.SetLocalUsername)
local CollaboratorSearchActions = require(Actions.CollaboratorSearchActions)
local SetCollaborators = require(Plugin.Core.Actions.SetCollaborators)

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
	thumbnailStatus = nil,
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

	manageableGroups = {},

	isVerifiedCreator = true,

	networkError = nil,
	networkErrorAction = nil,

	-- For overrideAsset
	fetchedAll = false,
	loadingPage = 0,
	currentPage = 1,

	-- For fetching Models to override only
	overrideCursor = PagedRequestCursor.createDefaultCursor(),

	-- For Package Permissions
	groupMetadata = {},
	ownerUsername = nil,
	localUserFriends = nil,
	cachedSearchResults = {},
	searchText = "",
	success = false,
	collaborators = {},
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
			networkError = action.response,
			networkErrorAction = action.networkErrorAction
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

	[UpdateOverrideAssetData.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			totalResults = action.totalResults,
			resultsArray = Cryo.List.join(state.resultsArray, action.resultsArray),
			filteredResultsArray = Cryo.List.join(state.filteredResultsArray, action.filteredResultsArray),
			fetchedAll = action.fetchedAll,
		})
	end,

	[SetAssetConfigManageableGroups.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			manageableGroups = action.manageableGroups
		})
	end,

	[SetIsVerifiedCreator.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isVerifiedCreator = action.isVerifiedCreator
		})
	end,

	[SetLoadingPage.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			loadingPage = action.loadingPage,
		})
	end,

	[SetCurrentPage.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentPage = action.currentPage,
		})
	end,

	[SetOverrideCursor.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			overrideCursor = action.overrideCursor,
		})
	end,

	[SetAssetConfigThumbnailStatus.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			thumbnailStatus = action.thumbnailStatus,
		})
	end,

	[SetGroupMetadata.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.groupMetadata.Id] = {
				name = action.groupMetadata.Name,
				groupMetadata = action.groupMetadata,
			}
		})
	end,

	[SetOwnerUsername.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			ownerUsername = action.ownerUsername,
		})
	end,

	[SetLocalUsername.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[getUserId()] = {
				localUsername = action.localUsername,
			}
		})
	end,

	[CollaboratorSearchActions.LoadedLocalUserFriends.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			localUserFriends = action.success and action.friends or {},
		})
	end,

	[CollaboratorSearchActions.LoadedLocalUserGroups.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			localUserGroups = action.success and action.groups or {},
		})
	end,

	[CollaboratorSearchActions.LoadedWebResults.name] = function(state, action)
		if not (state.cachedSearchResults) then
			state = Cryo.Dictionary.join(state, {
				cachedSearchResults = {},
			})
		end
		return Cryo.Dictionary.join(state, {
			cachedSearchResults = Cryo.Dictionary.join(state.cachedSearchResults, {
				[action.key] = action.success and action.results or {},
			})
		})
	end,

	[CollaboratorSearchActions.LoadingWebResults.name] = function(state, action)
		if not (state.cachedSearchResults) then
			state = Cryo.Dictionary.join(state, {
				cachedSearchResults = {},
			})
		end
		return Cryo.Dictionary.join(state, {
			cachedSearchResults = Cryo.Dictionary.join(state.cachedSearchResults, {
				[action.searchTerm] = LOADING_IN_BACKGROUND,
			})
		})
	end,

	[CollaboratorSearchActions.LoadingLocalUserFriends.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			localUserFriends = LOADING_IN_BACKGROUND,
		})
	end,

	[CollaboratorSearchActions.LoadingLocalUserGroups.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			localUserGroups = LOADING_IN_BACKGROUND,
		})
	end,

	[CollaboratorSearchActions.SearchTextChanged.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			searchText = action.text,
		})
	end,

	[SetCollaborators.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			collaborators = action.collaborators,
		})
	end,
})
