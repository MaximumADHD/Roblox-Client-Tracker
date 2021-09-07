-- !nonstrict

local Plugin = script.Parent.Parent.Parent

local Rodux = require(Plugin.Packages.Rodux)

local Cryo = require(Plugin.Packages.Cryo)


local Actions = Plugin.Src.Actions
local SetAssetSettings = require(Actions.SetAssetSettings)
local SetFilename = require(Actions.SetFilename)
local SetInstanceMap = require(Actions.SetInstanceMap)
local SetSelectedSettingsItem = require(Actions.SetSelectedSettingsItem)
local SetTreeChecked = require(Actions.SetTreeChecked)
local SetTreeExpansion = require(Actions.SetTreeExpansion)

export type Store = {
	assetSettings: Instance,
	filename: string,
	instanceMap: SetInstanceMap.InstanceMap,
	selectedSettingsItem: Instance,
	settingsExpansion: SetTreeExpansion.ExpansionMap,
	settingsChecked: SetTreeChecked.CheckedMap,
}

local initialState = {
	assetSettings = nil,
	filename = "",
	instanceMap = {},
	selectedSettingsItem = nil,
	settingsExpansion = {},
	settingsChecked = {},
}

local MainReducer = Rodux.createReducer(initialState, {
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
	[SetTreeExpansion.name] = function(state: Store, action: SetTreeExpansion.Props)
		return Cryo.Dictionary.join(state, {
			settingsExpansion = Cryo.Dictionary.join(state.settingsExpansion, action.expansion),
		})
	end,
})

return MainReducer
