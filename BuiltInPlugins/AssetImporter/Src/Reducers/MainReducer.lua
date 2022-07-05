-- !nonstrict

local Plugin = script.Parent.Parent.Parent

local Rodux = require(Plugin.Packages.Rodux)

local Cryo = require(Plugin.Packages.Cryo)


local Actions = Plugin.Src.Actions
local SetAssetImportSession = require(Actions.SetAssetImportSession)
local SetAssetSettings = require(Actions.SetAssetSettings)
local SetCheckedCount = require(Actions.SetCheckedCount)
local SetFilename = require(Actions.SetFilename)
local SetImportStatuses = require(Actions.SetImportStatuses)
local SetInstanceMap = require(Actions.SetInstanceMap)
local SetSelectedSettingsItem = require(Actions.SetSelectedSettingsItem)
local SetTreeChecked = require(Actions.SetTreeChecked)
local SetTreeExpansion = require(Actions.SetTreeExpansion)
local SetErrorNodeChecked = require(Actions.SetErrorNodeChecked)

export type Store = {
	assetImportSession: Instance,
	assetSettings: Instance,
	filename: string,
	importStatuses: SetImportStatuses.StatusMap,
	instanceMap: SetInstanceMap.InstanceMap,
	selectedSettingsItem: Instance,
	settingsChecked: SetTreeChecked.CheckedMap,
	settingsCheckedCount: number,
	errorNodeChecked: boolean,
	settingsExpansion: SetTreeExpansion.ExpansionMap,
}

local initialState = {
	assetImportSession = nil,
	assetSettings = nil,
	filename = "",
	importStatuses = nil,
	instanceMap = {},
	selectedSettingsItem = nil,
	settingsChecked = {},
	settingsCheckedCount = -1,
	errorNodeChecked = false,
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
		return Cryo.Dictionary.join(state, {
			instanceMap = action.instanceMap,
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
