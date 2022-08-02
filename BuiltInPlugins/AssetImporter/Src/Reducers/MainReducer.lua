-- !nonstrict

local Plugin = script.Parent.Parent.Parent

local Rodux = require(Plugin.Packages.Rodux)

local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetAssetImportSession = require(Actions.SetAssetImportSession)
local SetAssetSettings = require(Actions.SetAssetSettings)
local SetCheckedCount = require(Actions.SetCheckedCount)
local SetErrorNodeChecked = require(Actions.SetErrorNodeChecked)
local SetFilename = require(Actions.SetFilename)
local SetImportStatuses = require(Actions.SetImportStatuses)
local SetInstanceMap = require(Actions.SetInstanceMap)
local SetPreviewInstance = require(Actions.SetPreviewInstance)
local SetSelectedSettingsItem = require(Actions.SetSelectedSettingsItem)
local SetTreeChecked = require(Actions.SetTreeChecked)
local SetTreeExpansion = require(Actions.SetTreeExpansion)

local getFFlagAssetImportSessionCleanup = require(Plugin.Src.Flags.getFFlagAssetImportSessionCleanup)

export type Store = {
	assetImportSession: Instance,
	assetSettings: Instance,
	errorNodeChecked: boolean,
	filename: string,
	importStatuses: SetImportStatuses.StatusMap,
	instanceMap: SetInstanceMap.InstanceMap,
	previewInstance : Instance,
	selectedSettingsItem: Instance,
	settingsChecked: SetTreeChecked.CheckedMap,
	settingsCheckedCount: number,
	settingsExpansion: SetTreeExpansion.ExpansionMap,
}

local initialState = {
	assetImportSession = nil,
	assetSettings = nil,
	errorNodeChecked = false,
	filename = "",
	importStatuses = nil,
	instanceMap = {},
	previewInstance = nil,
	selectedSettingsItem = nil,
	settingsChecked = {},
	settingsCheckedCount = -1,
	settingsExpansion = {},
}

local MainReducer = Rodux.createReducer(initialState, {
	[SetAssetImportSession.name] = function(state: Store, action: SetAssetImportSession.Props)
		return Cryo.Dictionary.join(state, {
			assetImportSession = action.assetImportSession,
		})
	end,
	[SetAssetSettings.name] = function(state: Store, action: SetAssetSettings.Props)
		return Cryo.Dictionary.join(state, {
			assetSettings = action.assetSettings,
			settingsExpansion = Cryo.Dictionary.join(state.settingsExpansion, {
				[action.assetSettings] = true,
			})
		})
	end,
	[SetFilename.name] = function(state: Store, action: SetFilename.Props)
		return Cryo.Dictionary.join(state, {
			filename = action.filename,
		})
	end,
	[SetInstanceMap.name] = function(state: Store, action: SetInstanceMap.Props)
		if getFFlagAssetImportSessionCleanup() then
			error("Instance map should no longer be set")
		end
		return Cryo.Dictionary.join(state, {
			instanceMap = action.instanceMap,
		})
	end,
	[SetPreviewInstance.name] = function(state: Store, action: SetPreviewInstance.Props)
		if not getFFlagAssetImportSessionCleanup() then
			error("Preview should not be set without cleanup flag")
		end
		return Cryo.Dictionary.join(state, {
			previewInstance = action.previewInstance,
		})
	end,
	[SetSelectedSettingsItem.name] = function(state: Store, action: SetSelectedSettingsItem.Props)
		return Cryo.Dictionary.join(state, {
			selectedSettingsItem = action.selectedSettingsItem,
		})
	end,
	[SetTreeChecked.name] = function(state: Store, action: SetTreeChecked.Props)
		for instance, value in pairs(action.checked) do
			instance["ShouldImport"] = value ~= false
		end

		return Cryo.Dictionary.join(state, {
			settingsChecked = Cryo.Dictionary.join(state.settingsChecked, action.checked)
		})
	end,
	[SetCheckedCount.name] = function(state: Store, action: SetCheckedCount.Props)
		return Cryo.Dictionary.join(state, {
			settingsCheckedCount = action.count,
		})
	end,
	[SetTreeExpansion.name] = function(state: Store, action: SetTreeExpansion.Props)
		return Cryo.Dictionary.join(state, {
			settingsExpansion = Cryo.Dictionary.join(state.settingsExpansion, action.expansion),
		})
	end,
	[SetErrorNodeChecked.name] = function(state: Store, action: SetErrorNodeChecked.Props)
		return Cryo.Dictionary.join(state, {
			errorNodeChecked = action.isErrorChecked,
		})
	end,
	[SetImportStatuses.name] = function(state: Store, action: SetImportStatuses.Props)
		return Cryo.Dictionary.join(state, {
			importStatuses = action.statuses,
		})
	end,
})

return MainReducer
